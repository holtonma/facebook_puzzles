
module Liar
  class << self

    def categorize liar_data
      # {:liars => [], :truthers => []} 
      fake_liar_data = [ 
        { :user => "Stephen", :accused => ["Tommaso"]          },
        { :user => "Tommaso", :accused => ["Galileo"]          },
        { :user => "Isaac"  , :accused => ["Tommaso"]          },
        { :user => "Stephen", :accused => ["Tommaso"]          },
        { :user => "Galileo", :accused => ["Tommaso"]          },
        { :user => "George" , :accused => ["Isaac", "Stephen"] }
      ]
      
      liar_data = fake_liar_data
      
      cat = {:liars = [], :truthers = []}
      
      liar_data.each do |m|
        puts "m[:user]= #{m[:user]} : m[:accused]= #{m[:accused]}"
        # first person accused is a liar
        # first one of lowest number of accused by any person is a liar
        
        cat[:liars] << m[:user] if liars.length == 0
        #if 
      end
      
      return "18 3"
    end
    
    def assemble_data contents
      puts "contents: #{contents}"
    end
    
    def read_file(file_path)
      file = File.new(file_path, "r")
      return file.gets.chomp.to_i
    end
    
  end
end
