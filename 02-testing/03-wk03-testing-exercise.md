# TDD Exercise

In this exercise you will write a method and set of tests in TDD fashion which calculates a hand's BlackJack score.

In this project you need to:

1.  Fork [the project repository](https://github.com/Ada-C14/tdd-exercise)
1.  Clone your instance of the project
1.  Answer the questions below, peeking at the hints if you need help.
1.  Create a `blackjack_score` method which calculates the score of a hand in a BlackJack game (a full description of scoring is in the project README).
1.  Push your solution up to github.
1.  Paste your project repository link in the project submission page below.

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: short-answer
* id: 31b08e4c-1c53-44bc-b897-5f9f931cf890
* title: Nominal cases
* points: 1
* topics: tdd, minitest

##### !question

In a scoring a BlackJack game, what would be two _nominal_ cases?

##### !end-question

##### !placeholder


##### !end-placeholder

##### !answer

/.*/

##### !end-answer

<!-- other optional sections -->
##### !hint

A _nominal_ case is a case which tests the normal or expected inputs and outputs.

Some sample cases would be:

1.  A King and a Jack
1.  A 3, 5, 8 and 9

##### !end-hint
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
<!-- !explanation - !end-explanation (markdown, students can see after answering correctly) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: short-answer
* id: 138a3e2b-80ab-41a1-8886-68fe10c454ae
* title: Testing Edge Cases
* points: 1
* topics: tdd, minitest

##### !question

What edge cases can you determine? Name at least 3.

##### !end-question

##### !placeholder


##### !end-placeholder

##### !answer

/.*/

##### !end-answer

<!-- other optional sections -->
##### !hint

An edge-case is a case which tests the boundries of what is possible or not.

Some potential edge-cases include:

1.  An Ace and a Jack (21)
1.  Two Aces and a Queen (to verify that the aces are counted as 1s) (12)
1.  A Queen a King and a two (22 or bust)
1.  Two Kings and an Ace (21)

##### !end-hint
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
<!-- !explanation - !end-explanation (markdown, students can see after answering correctly) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->


<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: paragraph
* id: 9df919f9-d4cc-40d9-ad68-40d2a7aefccd
* title: How would you test these cases?
* points: 1
* topics: tdd, minitest

##### !question

How would you test these cases?

##### !end-question

##### !placeholder



##### !end-placeholder

<!-- other optional sections -->
##### !hint

You can test these cases by building `describe` and `it` blocks and calling the method with the given inputs and verifying that the method returns the expected output:

Example:

```ruby
describe "blackjack_score" do
  it "return 21 for an Ace and a Jack" do
    # Arrange
    hand = [1, "Jack"]

    # Act
    score = blackjack_score([hand)

    # Assert
    expect(score).must_equal 21
  end

  # further tests...
end
```

##### !end-hint 
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
<!-- !explanation - !end-explanation (markdown, students can see after answering correctly) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: testable-project
* id: 557d3cc4-5c01-4bcf-8252-36db0fe2b888
* title: Testing Exercise
* upstream: https://github.com/Ada-C14/tdd-exercise
* validate_fork: true
* points: 1
* topics: tdd, minitest

##### !question

Create the `blackjack_score` method in a TDD fashion by creating the tests you listed above and writing the method to pass those tests.  When you are finished submit a link to your repository here.

##### !end-question

##### !placeholder

Repository link

##### !end-placeholder

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
<!-- !explanation - !end-explanation (markdown, students can see after answering correctly) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->