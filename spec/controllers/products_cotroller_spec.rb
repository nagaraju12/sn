require "rails_helper"

module MyHelper
  def my_variable
  	before(:all) do
    @a = []
  end

  it { @a = [1]; p @a }
  it { p @a }
  end
end

RSpec.configure {|c| c.include MyHelper }

RSpec.describe ProductsController, :type => :controller do
  let(:my_variable) { 'is a value' }

  describe 'something' do
    specify { expect(my_variable).to eq 'is a value' }
  end
end