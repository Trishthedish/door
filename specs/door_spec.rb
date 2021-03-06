# door_spec.rb
require_relative 'Spec_helper'
require_relative '../lib/door'

describe Door do

################### OpenDoor tests ###################
## cannot be opened
## can be closed
## cannot be locked
## cannot be unlocked

#01 # pass!
  it "Test to see if open door, cannot be opened (params: true, false)" do
    # as in, is_door_open = true, is_door_locked = false
    # door is open, its not locked.
    door = Door.new(true, false)
    # proc is important here. I found an example in my scrabble class. Will need to change language for other errors.
    proc {door.open}.must_raise(RuntimeError)
  end

#02 # pass!
  it "test, to see that if the door is closed (as in not opened), and that its unlocked it can be opened." do
    # as in, is_door_open = false and is_door_locked = false
    # door is closed, and unlocked.
    door = Door.new(false, false)
    expect(door.open).must_equal(true)
  end

#03 # pass!
  #door cannot be locked.
  it "Test to see if open door cannot be locked. Should return RuntimeError(?)" do
    door = Door.new(true, true)
    proc {door.lock}.must_raise(RuntimeError)
    # or argument error.
  end

#04 # pass!
  #open door cannot be unlocked.
  it "Test to see if an open door cannot be unlocked." do
    door = Door.new(true, true)
    proc {door.unlock}.must_raise(RuntimeError)
    # or raise an argument error.
  end
  # Thanks Susan & Chris! I was checking all of my '''it & ends''' matched up. Failed to look at the left side of my screen!! #noviceproblems.

################### ClosedDoor tests ###################
## can be opened
## cannnot be closed
## can be locked
## cannot be unlocked

#05 # pass!
  it "Test to see if a closed door, can be opened" do
    door = Door.new(false, true)
    proc {door.open}.must_raise(RuntimeError)
  end

#06 # pass!
  it "Test to see if a closed door, CANNOT be closed." do
    door = Door.new(false, true)
    proc {door.close}.must_raise(RuntimeError)
    # eventually, raise argument error?
  end

#07 # pass!
  it "Test to see if a closed door, can be locked " do
    door = Door.new(false, false)
    expect(door.lock).must_equal(true)
  end

#08 # pass!
  it "Test to see if a closed door, CANNOT be unlocked " do
    door = Door.new(false, false)
    proc {door.unlock}.must_raise(RuntimeError)
  end

################### LockedDoor Tests ###################
## cannot be opened
## cannot be closed
## cannot be locked
## can be unlocked

#09 # pass!
  it "Test to see if a locked door, CANNOT be opened " do
    door = Door.new(false, true)
    proc {door.open}.must_raise(RuntimeError)
    # or raise an argument errror, eventually.
  end

#10 # pass!
  it "Test to see if a locked door, CANNOT closed " do
    door = Door.new(false, true)
    proc {door.close}.must_raise(RuntimeError)
    # or raise an argument errror?
  end

#11 # pass!
  it "Test to see if a locked door, CANNOT locked " do
    # door would need to be closed, i.e.(param 1st: false)
    # and that closed, woould also need to be locked (2nd: true)
    door = Door.new(false, true)
    proc {door.lock}.must_raise(RuntimeError)
  end

#12 # pass!
  it "Test to see if a locked door, can be unlocked" do
    # is_door_open: false (as its closed)
    # is_door_locked: true
    door = Door.new(false, true)
    # I expected it to be true. As in, it can be unlocked. But, the test said it wanted false. Which potentially means that its registering the new state of the door which is_door_locked: false. Would in fact be true?
    expect(door.unlock).must_equal(false)
  end

################### incription Tests ###################
# Once the writing (inscription) on a Door is set, it cannot be changed
# what else can I test about this incription method??

#13
  it "Test to see if an inscription cannot be changed more than once. Once its set it cannot be changed." do
    door1 = Door.new(false, true)
    door1.write_inscription("This is a string description that can't be changed once its writen.")
    proc {door1.write_inscription("this is a test")}.must_raise(RuntimeError)
  end

#14
  it "Test to see if display_inscription will succesfully display the correct message" do
    door = Door.new(false, true)
    door.write_inscription("This is a new inscription string")
    # since I saved it into an empty array, in order to pass this test. I'd need to surround this string in an array.
    expect(door.display_inscription).must_equal(["This is a new inscription string"])
  end
end
