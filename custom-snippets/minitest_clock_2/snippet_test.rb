require 'minitest/autorun'
require 'minitest/reporters'
require_relative "./submission.rb"

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

describe "clock" do
  it "can be called with hours, minutes and seconds as arguments" do
    # Arrange
    hours = 11
    minutes = 14
    seconds = 27

    # Act
    time = clock(hours, minutes, seconds)

    # Assert
    # the `clock` method must return a string
    expect(time).must_be_instance_of String
  end

  it "will return a string formatted in hh:mm:ss format" do
    # Arrange
    hours = 11
    minutes = 14
    seconds = 27

    # Act
    time = clock(hours, minutes, seconds)

    # Assert
    expect((time)).must_equal "11:14:27"
  end
  
  it "will display leading zeros for numbers smaller than 10" do
    time = clock(11, 8, 14)
    expect(time).must_equal "11:08:14"
  
    time = clock(8, 11, 14);
    expect(time).must_equal "08:11:14"
  
    time = clock(11, 14, 8);
    expect(time).must_equal "11:14:08"
  end
end
