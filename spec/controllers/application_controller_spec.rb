require 'pry'

describe ApplicationController do
  describe 'Dog class' do
    xit 'can create a dog with attributes on initialization' do
      Dog.new("rudolph", "mastiff", 2)
      expect(Dog.all.count).to eq (1)
    end

    xit 'can read dog name' do
      @dog = Dog.new("rudolph", "mastiff", 2)
      expect(@dog.name).to eq("rudolph")
    end

    xit 'can read dog breed' do
      @dog = Dog.new("rudolph", "mastiff", 2)
      expect(@dog.breed).to eq("mastiff")
    end

    xit 'can read dog age' do
      @dog = Dog.new("rudolph", "mastiff", 2)
      expect(@dog.age).to eq(2)
    end
    xit 'can change dog name' do
      @dog = Dog.new("rudolph", "mastiff", 2)
      @dog.name = "bessie"
      expect(@dog.name).to eq("bessie")
    end
    xit 'can change dog breed' do
      @dog = Dog.new("rudolph", "mastiff", 2)
      @dog.breed = "beagle"
      expect(@dog.breed).to eq("beagle")
    end
    xit 'can change dog age' do
      @dog = Dog.new("rudolph", "mastiff", 2)
      @dog.age = 4
      expect(@dog.age).to eq(4)
    end

  end


  describe 'GET /' do

    xit 'responds with a 200' do
      get '/'
      expect(last_response.status).to eq(200)
    end

    xit 'renders index.erb' do
      get '/'
      expect(last_response.body).to include("<p> I love programming </p>")
    end
  end
end
