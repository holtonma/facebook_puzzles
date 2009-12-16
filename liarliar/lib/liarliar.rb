
module Liar
  class << self

    def categorize liar_data
      fake_liar_data = [ 
        { :user => "Stephen", :accuses => "Tommaso"          },
        { :user => "Tommaso", :accuses => "Galileo"          },
        { :user => "Isaac"  , :accuses => "Tommaso"          },
        { :user => "Galileo", :accuses => "Tommaso"          },
        { :user => "George" , :accuses => "Isaac, Stephen"   }
      ]
      
      liar_data = fake_liar_data
      
      definite_liar = liar_data[0][:accuses] # first person (or set of people) accused is a liar
      grouped = {:liars => [], :truthers => []}
      
      liar_data.each do |member|
        if grouped[:truthers].length == 0
          grouped[:truthers] << member[:user]  # first person who accuses anybody is a truther
        else
          # the rest will match either one or the other
          # only people who tell truth are those who have identical accuses as the definite_liar
          if member[:accuses] == definite_liar
            grouped[:truthers] << member[:user]
          else
            grouped[:liars] << member[:user]
          end 
        end
      end
      
      return format_output(grouped)
    end
    
    def assemble_data contents
      puts "contents: #{contents}"
    end
    
    def read_file(file_path)
      file = File.new(file_path, "r")
      return file.gets.chomp.to_i
    end
    
    private
      def format_output grouped
        if grouped[:liars].length > grouped[:truthers].length
          return "#{grouped[:liars].length} #{grouped[:truthers].length}"
        else
          return "#{grouped[:truthers].length} #{grouped[:liars].length}"
        end
      end
      
  end
end
