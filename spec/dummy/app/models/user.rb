class User < ActiveRecord::Base
  attr_accessible :name, :password, :assertion if ::Rails.version.to_i < 4

  def self.authenticate!(name, password)
    User.where(name: name, password: password).first
  end
end
