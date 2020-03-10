# TODO: Write documentation for `CrystalMaxStack`
module CrystalMaxStack
  VERSION = "0.1.0"

  class MaxStack
    def initialize
      @storage = [] of Int32
      @size = 0
      @max_value = [] of Int32
    end

    def peek()
      if @size > 0
        @storage[@size - 1]
      end
    end

    def push(val : Int32)
      if @size == 0
        @max_value << val
      else
        if val > @storage[@size - 1]
          @max_value << val
        else
          @max_value << @max_value[@size - 1]
        end
      end

      @size = @size + 1
      @storage << val
    end

    def pop
      if @size > 0
        @size = @size - 1
        @storage.pop
      end
    end

    def max
      @max_value[@size - 1]
    end
  end
end
