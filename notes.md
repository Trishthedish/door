<!-- notes.md -->


1.
<!-- thought I could build it similarly to the planet_hash. -->

  def initialize(door_hash)
     @name = door_hash[:name]
        #You may open a Door if and only if it is unlocked and closed
     @is_door_open = [:is_door_open false] && @is_door_locked = false
     @is_door_Locked =
   end
 end

2.
http://stackoverflow.com/questions/5448938/why-cant-a-variable-name-end-with-while-a-method-name-can
+ An interesting article about why I can't name my instance variables with question marks.
+ Found because I was planning out my Door class architecture that I was having a hard time
thinking of what word tense to use.

3.
> http://radar.oreilly.com/2014/05/why-ruby-blocks-exist-part-iii.html
+ This article goes over a creating a Fridge object with similiar behaviors to a door.

+ >> "Here we have a Ruby class representing a refrigerator. Prior to accessing a refrigerator object’s contents via its contents method, you have to call its open method to open the door. (Sensible enough.)"

+ >> "If we try and access the contents with the door closed, we’ll get a warning, and will have to open the door before trying again."

+ I'm inspired by the idea of storing fridge contents... which could work for an inscription??




 4. markdown reminder: https://en.support.wordpress.com/markdown-quick-reference/

 5. Finding the writing of ArgumentError's harder than anticipated.
 + Found this article helpful in breaking down how ArgumentError's might look in the wild. Though, the ones I'm writing don't seem to work as I predicted. http://phrogz.net/programmingruby/tut_exceptions.html

6. pseudo code for writing inscription method:
def write_inscription(description)
  if @inscprion.empty?
    @inscription << description
    return @inscription
  elsif
    puts "Raise ArgumentError: you cannot add more words to a door that already has a description written for it. "
  else
    puts "this may never be thrown. "
  end

end


7. http://mattsears.com/articles/2011/12/10/minitest-quick-reference/
+ article about minitest-quick-reference


8. cant remember how i fixed thiis:
  # keep getting an undefined method empty for nil class(no_method_error)

  spelling!


  # would this work?
  # @inscription.insert(description)
  # @inscription.push(description)

  # the methods are the verbs for the doors different states.
