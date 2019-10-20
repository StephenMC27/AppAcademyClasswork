class PolyTreeNode

  attr_reader :value, :parent, :children

  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def parent=(parent_node)
    if self.parent != nil
      self.parent.children.delete(self)
    end
    @parent = parent_node
    if parent_node != nil
      parent.children << self
    end
  end

end
