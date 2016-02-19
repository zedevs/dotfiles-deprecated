require 'rake'
require 'fileutils'
include FileUtils

desc "Install into the user's home"
task install: [:link_files] do
  system 'git submodule init'
  system 'git submodule update'
  system 'vim +PluginInstall +qall'
end

task :link_files do
  Dir['*'].each do |file|
    case file
    when 'Rakefile', 'README.md', 'script', 'bin', 'tags'
      next
    else
      link_file file, home_slash(".#{file}")
    end
  end
end

def home() "#{ENV['HOME']}" end
def home_slash(name) File.join(home, name) end

def link_file(source, target)
  action = if File.symlink?(target)
    if $replace_all
      :overwrite
    else
      print "Overwrite #{target}? [yNqa] "
      case $stdin.gets.chomp
        when 'a' then ($replace_all = true) and :overwrite
        when 'y' then :overwrite
        when 'q' then exit
        else :skip
      end
    end
  else
    :link
  end

  if [:link, :overwrite].include? action
    if action == :overwrite
      puts "Overwriting #{target}"
      rm target, :verbose => false
    end
    ln_s File.join(Dir.pwd, source), target, :verbose => true
  elsif action == :skip
    puts "skipping #{target}"
  end
end
