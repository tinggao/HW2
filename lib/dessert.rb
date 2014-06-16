class Dessert
  attr_accessor :name,:calories
  def initialize(name,calories)
    @name,@calories=name,calories
  end
  def healthy?
    @calories<200
  end
  def delicious?
    self.is_a? Dessert
  end
end

class JellyBean < Dessert
  attr_accessor :flavor
  def initialize(flavor)
    @name,@flavor,@calories="#{flavor} Jelly Bean",flavor,5
  end
  def delicious?
    @flavor=="licorice" ? false : true
  end
end
