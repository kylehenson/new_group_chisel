#top level class Chisel

  middle level
    parser class (takes chunks)
    has tag method(takes in md el, and html el)

    find chunks method
      creates a chunker object and passes document through chunker
    end

      low level classes (all of these need to return two things, md el, and html el (to pass into tag))
        headers
        paragraph
        ordered list
        unordered list
        strong
        emphasized
