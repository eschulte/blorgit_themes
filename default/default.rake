namespace :themes do
  desc "a default theme, should serve as a good starting point"
  task :default do
    %x{sass #{File.join(File.dirname(__FILE__), 'style.sass')} #{File.join($blogs, $global_config[:config]['style'])}}
  end
end
