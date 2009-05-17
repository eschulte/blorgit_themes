require 'sass'

namespace :themes do
  desc "a default theme, should serve as a good starting point"
  task :default do
    File.open(File.join($blogs, $global_config[:config]['style']), 'w') do |file|
      file.write(Sass::Engine.new(File.read(File.join(File.dirname(__FILE__), 'style.sass'))).render)
    end
  end
end
