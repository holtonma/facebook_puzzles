
module Meepmeep
  class << self
    
    def faux_read_from_file(file_path="")
      return "Meep meep!"
    end
    
    def output
      o = STDOUT
      o.puts faux_read_from_file
    end
    
  end
end
