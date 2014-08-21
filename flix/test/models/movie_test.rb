require 'test_helper'

class MovieTest < ActiveSupport::TestCase
	test "a simple arithmetic should pass" do
		assert 1+1 == 2
	end

	test "faulty arithmetic should fail" do
		refute 2+2 == 3
	end

	test "equal integers and floats should be equal" do
		assert_equal 1, 1.0
	end

	test "equal floats should be the same" do
		assert_same 1.0, 1.00
	end

	test "description should be nil for a new movie" do
		movie = Movie.new
		assert_nil movie.description
	end

	test "the word 'potato' should have 6 letters" do
		word = 'potatoe'
		refute word.length == 6, "there is no 'e' in potato!"
	end

	test "movie runtime should not be shorter than 45 minutes" do
		movies(:star_wars).runtime = random_runtime
		assert movies(:star_wars).runtime >= 45
	end
	test "movie runtime should not longer than 5 hours" do
		movies(:godfather).runtime = random_runtime
		assert movies(:godfather).runtime <= 300
	end

	test "movie MPAA rating should be limited to accepted values" do
		movie = movies(:star_wars)
		assert movie.valid?
		movie.mpaa_rating = "Q"
		movie.save
		refute movie.valid?
		assert movie.errors.full_messages.include? "Mpaa rating must be a valid MPAA rating."
	end

	test "movie runtime should display hours and minutes correctly" do
		movie = movies(:star_wars)
		assert_equal "50 min.", movie.runtime_hours
	end
end
