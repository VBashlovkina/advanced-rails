class Moviegoer < ActiveRecord::Base
  has_many :reviews
  attr_accessible :uid, :provider, :name # see text for explanation
  def self.create_with_omniauth(auth)
    Moviegoer.create!(
                      :provider => auth["provider"],
                      :uid => auth["uid"],
                      :name => auth["info"]["name"])
  end
end
