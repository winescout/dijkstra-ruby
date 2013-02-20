module Djkstra
  INFINITY = Float::INFINITY
  Edge = Struct.new(:from, :to)

  def self.included(base)
    base.send :attr_accessor, :infinity
    base.infinity = INFINITY
    base.send :attr_accessor, :edge
    base.edge = Edge
  end

  class Node
    attr_accessor :name
    def initialize args={}
      self.name = args[:name]
    end
  end
end