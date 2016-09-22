#door.rb
require_relative '../lib/door'
# require_relative 'Spec_helper'

class Door
  attr_accessor :inscription

  def initialize(is_door_open, is_door_locked)
    # I'm not sure I should initialize an empty string, empty array, or other.
    # # either way I suppose I need an empty vessel to hold the string inscription.
    @inscription = []
    @is_door_open = is_door_open
    @is_door_locked = is_door_locked
  end

# the methods are the verbs for the doors different states.
# Once the writing (inscription) on a Door is set, it cannot be changed

  def write_inscription(description)
    # keep getting an undefined method empty for nil class(no_method_error)
    # works in irb but not within this class.
    # if inscription is empty...
    if @inscription.empty? == true
      @inscription << description
      # would this work?
      # @inscription.insert(description)
      # @inscription.push(description)
      return @inscription
    else
      puts "Raise ArgumentError: you cannot add more words to a door that already has a description written for it. "
    end
  end

  # def display_inscription
  #
  # end

  def open()
    # so if the door is closed , door is unlocked
    if @is_door_open == false && @is_door_locked == false
       @is_door_open = true
    elsif
      # door is already open
      @is_door_open == true
      #  puts "door is already open... trish, you will need to place an error here."
      raise  "The door is already opened, you can't open it!"
    else
      # so if door is not open, && is locked, you cannot open it.
      @is_door_open == false && @is_door_locked == true
      raise "You cannot open a locked door, fool!"
    end

  end

  def close()
    if @is_door_open == true
      @is_door_open = false
    elsif
      @is_door_open == false
      puts "You cannot close, a closed door!"
    else
      # if door is closed,
      @is_door_open == false && @is_door_locked == true
      puts "You cannot close, a locked door."
    end
  end

  def lock()
    # if door is closed, && its unlocked
    if @is_door_open == false && @is_door_locked == false
      # then you can, lock the door.
      @is_door_locked = true
    elsif @is_door_open == true
      # if the door is in an opened state, it cannot be locked.
      puts "You can't lock an open door!"
    else
      #if the door is closed, && its locked, you cant already lock it agin.
      @is_door_open == false && @is_door_locked == true
      puts "You can't techincally lock an already locked door."
    end
  end

  def unlock()
    # if door is closed, && door is locked.
    if @is_door_open == false && @is_door_locked == true
      # then you can lock the door!
      @is_door_locked = false
    elsif
      # if the door is closed, && door unlocked - you cannot unlock door.
      @is_door_open == false && @is_door_locked == false
      puts "You cant unlock, and unlocked door, friend!"
    end
  end

end


# creating a test to see if my writing method will work.
# so door is open and unlocked.
test4 = Door.new(true, false)
puts test4.write_inscription("here is a nother string.")

puts test4.write_inscription(" just string.")



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

#
# test3 = Door.new(true, true)
# puts test3.lock


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
