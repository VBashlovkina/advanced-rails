require 'spec_helper'

describe Review do
  describe "model validations" do
    it "should point to a valid movie" do
      r = Review.new(:movie => Movie.new(:title => 'Title', :rating => 'G',
                    :release_date => '1980-01-01'))
      r.movie.should be_valid
    end
  end
end
