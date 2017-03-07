class Post < ApplicationRecord

def self.count_to_s(cnt=nil)
    cnt||=self.count
    str=case (count % 10)
      when 1 
        'запрос'
      when 2..4 
        'запроса'
      else
        'запросов'
      end  
    "#{cnt} #{str}"  
  end  

end
