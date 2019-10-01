class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get "/" do
  	erb :index
  end
end

class Dog
  attr_accessor :name, :breed, :age

  @@all = []

  def initialize(name, breed, age)
    self.name = name
    self.breed = breed
    self.age = age
    self.class.all << self
  end

  def self.all
    @@all
  end
end