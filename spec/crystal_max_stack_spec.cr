require "./spec_helper"

describe CrystalMaxStack do
  # TODO: Write tests

  it "can push and peek" do
    max_stack = CrystalMaxStack::MaxStack.new
    max_stack.push(5)
    max_stack.push(9)

    result = max_stack.peek
    result.should eq 9
  end

  it "can pop the last value off the stack" do
    max_stack = CrystalMaxStack::MaxStack.new
    max_stack.push(5)
    max_stack.push(9)

    max_stack.pop().should eq 9
  end

  it "if stack is empty it returns nil" do
    max_stack = CrystalMaxStack::MaxStack.new
    max_stack.pop().should eq nil
  end

  it "returns the max value" do
    max_stack = CrystalMaxStack::MaxStack.new
    max_stack.push(5)
    max_stack.push(9)
    max_stack.push(4)
    max_stack.push(3)
    max_stack.push(15)
    max_stack.push(2)
    max_stack.push(1)

    max_stack.max.should eq 15
  end

end
