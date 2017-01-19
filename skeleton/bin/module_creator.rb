## Module to automatically 'require' new scenes in Map.rb

def list_files()
  puts Dir.pwd
end



# Dir.chdir('lib/tree-house-prince/')
# Dir.glob('*').select {|f| File.directory? f}
## Basic Ruby Project Skeleton Generator

# basedir = "~/Dropbox"

# Dir.chdir "tree-house-prince/lib/"


# class Project
#   def initialize()
#     puts "What do you want to call this module?\n"
#     print "> "
#
#     $user_input = $stdin.gets.chomp
#
#   end
#
#   def define_folders()
#     project_name = $user_input
#
#     @project_directories = [
#
#     project_folder = Dir.home() + "/Dropbox/DevOps/Github_Projects/tree-house-prince/",
#     project_skeleton_folder = project_folder + "skeleton/",
#       project_lib_folder = project_skeleton_folder + "lib/",
#     project_tests_folder = project_skeleton_folder + "tests/",
#     project_name_folder = project_lib_folder + "#{project_name}"
#     ]
#
#     @project_files = {
#
#       "project_lib_project_name_file" => "#{project_lib_folder}" + "#{project_name}" + ".rb",
#       "project_test_project_name_file" => "#{project_tests_folder}" + "test_" + "#{project_name}" + ".rb"
#     }
#
#     puts """
#     Number of folders: #{@project_directories.length()}
#     Number of files: #{@project_files.length()}
#     """
#
#     puts "List of folders:"
#     @project_directories.each do |folder|
#       puts "#{folder}"
#     end
#
#     puts "\nList of files:"
#     @project_files.each do |key, value|
#       puts "#{value}"
#     end
#
#   end
#
#   def create_folders()
#
#     ## Need fileutils to create nested directories
#     require 'fileutils'
#
#     @project_directories.each do |folder|
#       FileUtils::mkdir_p folder
#     end
#
#     @project_files.each do |file_name|
#       FileUtils.touch file_name
#     end
#
#   end
#
#   def create_gemfile()
#
#     project_name = $user_input
#
#     @project_gemspec_contents = <<~GEMSPEC_CONTENTS
#     # coding: utf-8
#     lib = File.expand_path(’../lib’, __FILE__)
#     $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
#
#     Gem::Specification.new do |spec|
#       spec.name          = "#{project_name}"
#       spec.version       = '1.0'
#       spec.authors       = ["Alexander Garber"]
#       spec.email         = ["clockworkpc@gmail.com"]
#       spec.summary       = %q{Short summary of your project}
#       spec.description   = %q{Longer description of your project.}
#       spec.homepage      = "https://github.com/clockworkpc"
#       spec.license       = "GPL3"
#
#       spec.files         = [’lib/#{project_name}.rb’]
#       spec.executables = [’bin/#{project_name}’]
#       spec.test_files = [’tests/test_#{project_name}.rb’]
#       spec.require_paths = [”lib”]
#     end
#     GEMSPEC_CONTENTS
#
#     puts @project_gemspec_contents
#     puts @project_files["project_skeleton_project_name_gemspec"]
#
#     target_gemspec = open(@project_files["project_skeleton_project_name_gemspec"], 'w')
#     target_gemspec.write(@project_gemspec_contents)
#     target_gemspec.close()
#
#   end
#
#   def create_rakefile()
#
#     project_rakefile_contents = <<~RAKEFILE_CONTENTS
#
#     require 'rake/testtask'
#
#     Rake::TestTask.new do |t|
#       t.libs << "tests"
#       t.test_files = FileList['tests/test*.rb']
#       t.verbose = true
#     end
#     RAKEFILE_CONTENTS
#
#     target_rakefile = open(@project_files["project_skeleton_project_rakefile"], 'w')
#     target_rakefile.write(project_rakefile_contents)
#     target_rakefile.close()
#
#     puts project_rakefile_contents
#     puts @project_files["project_skeleton_project_rakefile"]
#
#   end
#
#   def create_testfile()
#
#     project_name = $user_input
#
#     project_testfile_contents = <<~TESTFILE_CONTENTS
#
#     require "./lib/#{project_name}"
#     require "test/unit"
#
#     class TestNAME < Test::Unit::TestCase
#
#       def test_sample()
#         assert_equal(4, 2+2)
#       end
#
#     end
#     TESTFILE_CONTENTS
#
#     target_testfile = open(@project_files["project_test_project_name_file"], 'w')
#     target_testfile.write(project_testfile_contents)
#     target_testfile.close()
#
#     puts project_testfile_contents
#     puts @project_files["project_test_project_name_file"]
#
#   end
#
# end
#
# new_project = Project.new()
# new_project.define_folders()
# new_project.create_folders()
# new_project.create_gemfile()
# new_project.create_rakefile()
# new_project.create_testfile()
