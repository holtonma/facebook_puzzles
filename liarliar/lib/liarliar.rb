
module Hiphop
  class << self

    def translate some_int
      return "Hop" if (some_int % 5 == 0 && some_int % 3 == 0)
      return "Hoppity" if (some_int % 3 == 0)
      return "Hophop" if (some_int % 5 == 0)
    end
    
    def iterate max_int
      n = 1
      while n <= max_int
        puts "#{Hiphop.translate(n)}" if Hiphop.translate(n) != nil
        n += 1
      end
    end
    
    def read_max_from_file(file_path)
      file = File.new(file_path, "r")
      return file.gets.chomp.to_i
    end
    
  end
end
