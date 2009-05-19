require 'sass'

$worg_dir = File.dirname(__FILE__)
namespace :themes do
  desc "a worg theme, same as default but plus the worg css"
  task :worg do
    File.open(File.join($blogs, $global_config[:config]['style']), 'w') do |file|
      file.write(Sass::Engine.new(File.read(File.join(File.dirname(__FILE__), 'style.sass'))).render)
    end
    FileUtils.cp(File.join($worg_dir, 'worg.css'), $blogs)
  end
end
