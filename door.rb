#door.rb

class Door

# not sure how to deal with this yet: description

  def initialize(is_door_open, is_door_locked)
    # @description = description
    @is_door_open = is_door_open
    @is_door_locked = is_door_locked
  end

# 4 states that could happen to a door object, typically by human or user.
# the above methods are tests for above.

  def open()
    # so if the door is closed , door is unlocked
    if @is_door_open == false && @is_door_locked == false
       @is_door_open = true
    elsif
      # door is already open
      @is_door_open == true
       puts "door is already open... trish, you will need to place an error here."
    else
      # so if door is not open, && is locked, you cannot open it.
      @is_door_open == false && @is_door_locked == true
      puts "You cannot open a locked door, fool!"
    end

  end
  #
  def close()
    if is_door_open == true
      is_door_open = false
    elsif
      is_door_open == false
      puts "You cannot close, a closed door!"
    else
      # if door is closed,
      is_door_open == false && is_door_locked == true
      puts "You cannot close, a locked door."
    end 


  end
  #
  # def lock()
  #
  # end
  #
  # def unlock()
  #
  # end

end



# created a test, to see that if the door is closed (as in not opened), and that its unlocked it can be opened.
# I expect the outcome to be true.
# test = Door.new(false, false)
# puts test.open
# expected it to return true.
# returned true

#created 2nd test, to see if the door is open, can I open it?
# test2 = Door.new(true, false)
# puts test2.open
# expect it to be false. As you cannot open an open door. Actually, printed the message,"door is already open...trish, you will need to place an error here."

# Created 2nd test, to see if the door was open, and locked.
# test3 = Door.new(false, true)
# puts test3.open
# expect it would be false, or display a message that says,"you cannot open a locked door."





## OpenDoor ##
  ## cannot be opened
  ## can be closed
  ## cannot be locked
  ## cannot be unlocked

## ClosedDoor ##
  ## can be opened
  ## cannnot be closed
  ## can be locked
  ## cannot be unlocked

## LockedDoor ##
  ## cannot be opned
  ## cannot be closed
  ## cannot be locked
  ## can be unlocked
