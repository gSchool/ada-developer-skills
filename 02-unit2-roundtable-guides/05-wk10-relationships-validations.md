# Week 10 - Active Record Relationships and Validations

Please [submit a question](https://airtable.com/shrOEPwWbMZXxXlTt) the day before the roundtable discussion group.

---

Today's Roundtable will focus on reviewing [Active Record Validationss](https://learn-2.galvanize.com/cohorts/2036/blocks/1006/content_files/intro-to-rails-2-relationships/view-partials.md), [Active Record Relationships](https://learn-2.galvanize.com/cohorts/2036/blocks/1006/content_files/intro-to-rails-2-relationships/view-partials.md), and [Debugging in Rails](https://learn-2.galvanize.com/cohorts/2036/blocks/1006/content_files/intro-to-rails-2-relationships/view-partials.md).

For this discussion, think of your instructor as a mediator and guide, rather than as a lecturer. You are encouraged to do the following:

* Whenever possible, you should follow the [Ada Online Communication Norms](https://learn-2.galvanize.com/cohorts/2036/blocks/882/content_files/00-welcome-to-ada/02-wk01-online-communication-norms.md)
* You should pose questions to the group, not the instructor.
* Similarly, you are encouraged to answer questions, with the instructor available to correct misconceptions and provide answers when no one else has an answer.
* Say something, even if you think you might be wrong! (Nobody throws a frisbee well on their first try.)
* When discussing code, you to use screen sharing through Zoom.
* Take notes!

---

## Let's start popcorn style with:
* A brief update describing where you and your team is in the Ride Share Rails project. Each person's update should be small and quick and 1-3 sentences, much like a stand-up meeting.
    * What is the most recent line of code you and your team wrote that you're proud of?
    * What is the current or upcoming challenge that you and your team need to tackle next?
    * What questions and help would you like to ask other groups about the project?

---

## Guiding Questions

### Validations

Assume we have the following code:

```ruby
# app/models/book.rb
class Book < ApplicationRecord
  validates :title, uniqueness: true
  validates :publication_date, presence: true
  validates :description, length: { maximum: 500 }
end
```

```ruby
book = Book.new(publication_date: nil)
book.errors
book.valid?
```

1. Describe or hypothesize the validations in the above `Book` model. For each validation rule: when is a book valid, and when is it invalid?
1. Look at the above code for `book`.
    - When is `book.errors` not empty?
    - When is `book.errors` empty?
    - When do validations run?
1. What does the `valid?` method do?
1. Construct a nominal test case to test the validation of `description` of the `Book` model. For the nominal test case to test a validation, we should create a valid book. Then we should give it an invalid description. Lastly, we should test that the book is no longer valid.
    - What is our test's Arrange step?
    - What is our test's Act step?
    - What is our test's Assert step?
1. How can we show validation errors to the user?

### Active Record Relationships

* Describe three different ways a book/author relationship can be created.
* What code needs to be added to the *model* to set up a *one-to-many* relationship?
* What attribute needs to be added to the *schema* to set up a *one-to-many* relationship?
