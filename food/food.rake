$food_dir = File.dirname(__FILE__)
namespace :themes do
  desc "a food theme for my recipes"
  task :food do
    %x{sass #{File.join($food_dir, 'style.sass')} #{File.join($blogs, $global_config[:config]['style'])}}
    FileUtils.cp_r(File.join($food_dir, 'images'), $blogs)
  end
end
