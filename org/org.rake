$dir = File.dirname(__FILE__)
namespace :themes do
  desc "an org-mode theme featuring the folding unicorn"
  task :org do
    File.open(File.join($blogs, $global_config[:config]['style']), 'w') do |file|
      file.write(Sass::Engine.new(File.read(File.join(File.dirname(__FILE__), 'style.sass'))).render)
    end
    FileUtils.cp_r(File.join($dir, 'images'), $blogs)
  end
end
