require "robohash/version"
require 'HTTParty'
require 'fileutils'
module Robohash
  @default_num = 3
  @default_directory = "robo_hash_images"
  
  module_function
  def default_num; @default_num end
  def default_num= v; @default_num = v end
  def default_directory; @default_directory end
  def default_directory= v; @default_directory = v end
  def Version; self::VERSION end
  
  def self.get_images
    if Dir.exists? Default_directory
      self.Delete_directory
    else
      Dir.mkdir(Default_directory)
    end
    (1..default_num).each{
      o =  [('a'..'z'),('A'..'Z')].map{|i| i.to_a}.flatten;
      string  =  (0..10).map{ o[rand(o.length)]  }.join;
      image = HTTParty.get "http://robohash.org/#{string}.png"
      open( "#{Default_directory}/#{string}.png", 'wb' ) { |file|
          file.write(image.body)
        }
    }
  end


  private
  def delete_directory
    begin
      Dir.delete(Default_directory)
    rescue Exception => e
      puts e.message
      puts "You still want to delete? (Y/N)"
      str = STDIN.getc.chr.downcase
      if str == "y"
        Dir.foreach(Default_directory) {|f|
          if  f == '.' or f == '..' then next
          elsif File.directory?(f) then                     FileUtils.rm_rf("#{Default_directory}/#{f}")
          else FileUtils.rm("#{Default_directory}/#{f}")
          end
          Dir.mkdir(Default_directory)
        }
      elsif str=="n"
        exit
      else
        puts "Invalid parameter!"
        exit
      end
    end
  end
end
