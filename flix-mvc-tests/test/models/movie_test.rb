require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  test "simple arithmetic should pass" do
    assert 1+1 == 2
  end

  test "faulty arithmetic should fail" do 
    refute 2+3 == 4
  end

  test "equal integers and floats should be equal" do 
    assert_equal 1, 1.0
  end

  test "equal floats should be the same" do
    assert_same 1.0, 1.00
  end

  test "equal integers and floats should not be the same" do
    refute_same 1, 1.0
  end

  test "description should be nil for a new movie" do
    movie = Movie.new
    assert_nil movie.description
  end

  test "2 and 3 should be unequal" do
    refute_equal 2, 3
  end

  test "the word 'potato' should have 6 letters" do
    word = 'potatoe'
    refute word.length == 6, "There is no 'e' in potato!"
  end

  test "the title of Star Wars should be 'Star Wars'" do
    movie = movies(:star_wars)
    assert movie.title == "Star Wars"
  end

  test "movie runtime should not be shorter than 45 minutes" do
    movies(:star_wars).runtime = random_runtime
    assert movies(:star_wars).runtime >= 45
  end

  test "movie runtime should not be longer than 5 hours" do
    movies(:godfather).runtime = random_runtime
    assert movies(:godfather).runtime <= 300
  end
end