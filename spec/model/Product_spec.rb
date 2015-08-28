require "rails_helper"

RSpec.configure do |c|
  c.use_transactional_examples = true
end

RSpec.describe Product, :type => :model do
  it "has none to begin with" do
    expect(Product.count).to eq 0
  end

  it "has one after adding one" do
    Product.create
    expect(Product.count).to eq 1
  end

  it "has none after one was created in a previous example" do
    expect(Product.count).to eq 0
  end
end