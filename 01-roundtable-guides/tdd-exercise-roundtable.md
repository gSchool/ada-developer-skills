# 9/17 TDD Exercise 

Today's Roundtable will focus on reviewing the [TDD Exercise](https://github.com/Ada-C14/tdd-exercise)

For this discussion, think of your instructor as a mediator and guide, rather than as a lecturer. You are encouraged to do the following:

* Whenever possible, you should follow the [Ada Online Communication Norms](https://learn-2.galvanize.com/cohorts/2036/blocks/882/content_files/00-welcome-to-ada/02-wk01-online-communication-norms.md)
* You should pose questions to the group, not the instructor.
* Similarly, you are encouraged to answer questions, with the instructor available to correct misconceptions and provide answers when no one else has an answer.
* Say something, even if you think you might be wrong! (Nobody throws a frisbee well on their first try.)
* When discussing code, you to use screen sharing through Zoom.
* Take notes!

## Getting Started

Let's get started with

* How do you feel about Testing now that you've done the exercise:
  * Green - Things are Good
  * Yellow - I'm a bit uncertain
  * Red - Testing!  (runs the other way)
* What questions do you have on the exercise?

## Guiding Questions and Concepts to Review:

*  What are some examples of 
   * Positive Nominal Test Cases
   * Negative Nominal Test Cases
   * Positive Edge Test Cases
   * Negative Edge Test Cases
* Why does the expectation for an ArgumentError look like the below?
  ```ruby
  expect {
    score([-1, 3, 5])
  }.must_raise ArgumentError
  ```
* Was it hard to write things in TDD fashion?
* What questions do you have on TDD development?

## Lets also share some TDD-Exercise tests and `score` methods.  

*  What are some new things you learned from classmates?
*  Did you organize your tests into Arrange-Act-Assert steps?