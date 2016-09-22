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
    expect(door.open).must_raise(RuntimeError)
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
  it "Test to see if open door cannot be locked. Should return nil(?)" do
    door1 = Door.new(true, true)
    expect(door1.lock).must_equal(nil)
    # or argument error.
  end

#04 # pass!
  #open door cannot be unlocked.
  it "Test to see if an open door cannot be unlocked." do
    door = Door.new(true, true)
    expect(door.unlock).must_equal(nil)
    # or raise an argument error.
  end
  # Thanks Susan & Chris! I was checking all of my it & end matched up. Failed to look at my do side.

################### ClosedDoor tests ###################
## can be opened
## cannnot be closed
## can be locked
## cannot be unlocked

#05 # pass!
  it "Test to see if a closed door, can be opened" do
    door = Door.new(false, true)
    expect(door.open).must_equal(nil)
  end

#06 # pass!
  it "Test to see if a closed door, CANNOT be closed." do
    door = Door.new(false, true)
    expect(door.close).must_equal(nil)
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
    expect(door.unlock).must_equal(nil)
  end

################### LockedDoor Tests ###################
## cannot be opened
## cannot be closed
## cannot be locked
## can be unlocked

#09 # pass!
  it "Test to see if a locked door, CANNOT be opened " do
    door = Door.new(false, true)
    expect(door.open).must_equal(nil)
    # or raise an argument errror, eventually.
  end

#10 # pass!
  it "Test to see if a locked door, CANNOT closed " do
    door = Door.new(false, true)
    expect(door.close).must_equal(nil)
    # or raise an argument errror?
  end

#11
  it "Test to see if a locked door, CANNOT locked " do
    # door would need to be closed, i.e.(param 1st: false)
    # and that closed, woould also need to be locked (2nd: true)
    door = Door.new(false, true)
    expect(door.lock).must_equal(nil)
  end

#12
  it "Test to see if a locked door, can be unlocked" do
    # is_door_open: false (as its closed)
    # is_door_locked: true
    door = Door.new(false, true)
    # I expected it to be true. As in, it can be unlocked. But, the test said it wanted false. Which potentially means that its registering the new state of the door which is_door_locked: false. Would in fact be true?
    expect(door.unlock).must_equal(false)
  end
end
