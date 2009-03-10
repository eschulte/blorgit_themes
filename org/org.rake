$dir = File.dirname(__FILE__)
namespace :themes do
  desc "an org-mode theme featuring the folding unicorn"
  task :org do
    %x{sass #{File.join($dir, 'style.sass')} #{File.join($blogs, $config['style'])}}
    FileUtils.cp_r(File.join($dir, 'images'), $blogs)
  end
end
