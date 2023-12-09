require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
    it "exists" do
        list = LinkedList.new

        expect(list).to be_an_instance_of LinkedList
    end

    it "has a head" do
        list = LinkedList.new

        expect(list.head).to eq nil
    end

    it "#append" do
        list = LinkedList.new
        list.append("doop")

        expect(list.head.data).to eq("doop")
        expect(list.head.next_node).to eq nil
    end

    it "#count" do
        list = LinkedList.new
        list.append("doop")

        expect(list.count).to eq(1)
    end

    xit "#to_string" do
        list = LinkedList.new
        list.append("doop")

        expect(list.to_string).to eq("doop")
    end
end