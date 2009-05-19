require 'sass'

$food_dir = File.dirname(__FILE__)
namespace :themes do
  desc "a food theme for my recipes"
  task :food do
    File.open(File.join($blogs, $global_config[:config]['style']), 'w') do |file|
      file.write(Sass::Engine.new(File.read(File.join(File.dirname(__FILE__), 'style.sass'))).render)
    end
    FileUtils.cp_r(File.join($food_dir, 'images'), $blogs)
  end
end
