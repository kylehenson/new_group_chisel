class Emphasize
  attr_reader :chunk

   def initialize(chunk)
     @chunk = chunk
   end

   def render
    to_emphasize = chunk.match(/[*](.*)[*]/)[1]
    emphasized = "<em>" + to_emphasize + "</em>"
    chunk.gsub(/[*](.*)[*]/, emphasized)
   end

end
