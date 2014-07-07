class Measuring_Unit
  attr_reader :unit_name, :unit_amount
  attr_writer :unit_name, :unit_amount
  def initialize(amount)
    @unit_amount = amount
  end

  def to_s
    return "#{@unit_amount} #{plurlize()}"
  end

  def plurlize
    if(@unit_amount!=1)
      "#{@unit_name}s"
    else
      @unit_name
    end
  end
end

class Measuring_Unit_Factory
  def self.measuring_unit(teaspoons)
    case teaspoons
    when 1 .. 2
        return Teaspoon.new(teaspoons)
      when 3 .. 11
        return Tablespoon.new(teaspoons)
      else
        return Cup.new(teaspoons)
    end
  end
end

class Teaspoon < Measuring_Unit
  def initialize(amount)
    @unit_name = "tsp"
    @unit_amount = amount * 1.0
  end
  def to_teaspoon()
    return @unit_amount
  end
end

class Tablespoon < Measuring_Unit
  def initialize(amount)
    @unit_name = "tbs"
    @unit_amount = amount/3.0
  end
  def to_teaspoon()
    return @unit_amount * 3
  end
end

class Quart < Measuring_Unit
  def initialize(amount)
    @unit_name = "quart"
    @unit_amount = amount / 192.0
  end
  def to_teaspoon()
    return @unit_amount * 192
  end
end

class Cup < Measuring_Unit
  def initialize(amount)
    @unit_name = "cup"
    @unit_amount = amount / 48.0
  end
  def to_teaspoon()
    return @unit_amount * 48
  end
end

class Pint < Measuring_Unit
  def initialize(amount)
    @unit_name = "pint"
    @unit_amount = amount / 96.0
  end
  def to_teaspoon()
    return @unit_amount * 96
  end
  def add_amount()
  end
end

class Fluid_Ounce < Measuring_Unit
  def initialize(amount)
    @unit_name = "fl oz"
    @unit_amount = amount / 6.0
  end
  def to_teaspoon()
    return @unit_amount * 6
  end
end
