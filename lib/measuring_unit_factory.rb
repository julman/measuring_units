class measuring_unit_factory()
  def measuring_unit(teaspoons)
    case teaspoons
    when teaspoons < 3
      return teaspoon.new(teaspoons)
    when 3 .. 11
      return tablespoon.new(teaspoons)
    else
      return cup.new(teaspoons)
    end
  end
end
