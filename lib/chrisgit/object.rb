# lib/chrisgit/object

require 'fileutils'

module ChrisGit
  CHRISGIT_DIRECTORY = "#{Dir.pwd}/.chrisgit".freeze
  OBJECTS_DIRECTORY = "#{CHRISGIT_DIRECTORY}/objects".freeze

  class Object
    def initialize(sha)
      @sha = sha
    end

    def write(&block)
      # Split the sha by getting the first two letters
      # And the rest in separate parts
      sha_part1 = sha.slice(0..1)
      sha_part2 = sha.slice(2..-1)

      object_directory = "#{OBJECTS_DIRECTORY}/#{sha_part1}"
      FileUtils.mkdir_p object_directory
      object_path = "#{object_directory}/#{sha_part2}"
      File.open(object_path, 'w', &block)
    end

    private

    attr_reader :sha

  end
end