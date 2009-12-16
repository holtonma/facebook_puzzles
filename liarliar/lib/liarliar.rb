
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
      count = 1
      
      liars = []
      
      lines = IO.readlines(file_path)
      num_voters = lines[0].to_i
      tot_lines = lines.length
      until count >= tot_lines
        #either on start or on return loop translate count:
        num_accusations = translate_accuser(lines[count])[:num] 
        #puts "num_accusations: #{num_accusations}"
        if num_accusations != nil
          from_line = count + 1
          to_line = from_line + num_accusations - 1
          acusees_list = ""
          (from_line..to_line).each do |n|
            acusees_list += lines[n].chomp + ", "
          end
          liar = { :user => translate_accuser(lines[count])[:name], :accuses => acusees_list.chomp(", ") }
          liars << liar
          #puts "first liars: #{liars}"
          
          count = to_line + 1
        else
          break
        end
      end
      
      file.close
      return liars
    end
    
    def translate_accuser defining_line
      name_reg = /^\w+[A-Za-z]/
      num_reg = /^\d+[0-9]/
      if defining_line =~ name_reg
        name = "#{$&}"
        num = "#{$'}".to_i
      end
      
      return {:name => name, :num => num}
    end
    
        
    private
      def format_output grouped
        if grouped[:liars].length > grouped[:truthers].length
          return "#{grouped[:liars].length} #{grouped[:truthers].length}"
        else
          return "#{grouped[:truthers].length} #{grouped[:liars].length}"
        end
      end
      
      def format_accusor_line(string)
      end
      
  end
end
