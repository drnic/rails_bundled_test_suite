class TestBundleGenerator < Rails::Generator::NamedBase
  def manifest
    record do |m|
      # Ensure appropriate folder(s) exists
      m.directory 'some_folder'

      # Create stubs
      # m.template "template.rb",  "some_file_after_erb.rb"
      # m.file     "file",         "some_file_copied"
    end
  end

  protected
    def banner
      <<-EOS
Installs an integration test suite into your Rails app that can
test JavaScript via normal webrat (and cucumber) commands.

USAGE: #{$0} #{spec.name} name
EOS
    end
end