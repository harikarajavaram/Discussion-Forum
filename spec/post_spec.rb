require_relative 'spec_helper.rb'

describe Post do
	#tests
	it "is valid with valid attributes" do
		expect(Post.new(title: 'Anything')).to be_valid	
	end
end