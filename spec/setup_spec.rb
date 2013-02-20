require 'spec_helper'
describe "Djkstra" do

  it "should define infinity" do
    Djkstra::INFINITY.should == Float::INFINITY
  end

  describe 'Edge' do 
    before do 
      @edge = Djkstra::Edge.new('from_val', 'to_val')
    end
    it "should have from" do
      @edge.from.should == 'from_val'
    end

    it "should have to" do
      @edge.to.should == 'to_val'
    end
  end

  describe "Node" do
    before do
      @node = Djkstra::Node.new(name: 'node_name')
    end

    it "should have a name" do
      @node.name.should == 'node_name'

    end
  end
end