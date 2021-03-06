# Week 10 - Changes to the Database, Strong Params, and Git Branching

Please [submit a question](https://airtable.com/shrOEPwWbMZXxXlTt) the day before the roundtable discussion group.

---

Today's Roundtable will focus on reviewing [Testing Changes in the Databse](https://learn-2.galvanize.com/cohorts/2036/blocks/1006/content_files/intro-to-rails/testing-db-in-controllers.md), [Strong Params](https://learn-2.galvanize.com/cohorts/2036/blocks/1006/content_files/intro-to-rails/strong-params.md) and [Git Branching](https://learn-2.galvanize.com/cohorts/2036/blocks/882/content_files/04-git/branches.md).

For this discussion, think of your instructor as a mediator and guide, rather than as a lecturer. You are encouraged to do the following:

* Whenever possible, you should follow the [Ada Online Communication Norms](https://learn-2.galvanize.com/cohorts/2036/blocks/882/content_files/00-welcome-to-ada/02-wk01-online-communication-norms.md)
* You should pose questions to the group, not the instructor.
* Similarly, you are encouraged to answer questions, with the instructor available to correct misconceptions and provide answers when no one else has an answer.
* Say something, even if you think you might be wrong! (Nobody throws a frisbee well on their first try.)
* When discussing code, you to use screen sharing through Zoom.
* Take notes!

---

## Let's start popcorn style with:
* How are you feeling after Rails Week 1 (word/phrase)?
* What questions do you have?

---

## Guiding Questions

## Testing Database Changes in Controllers

1. When we test the `create` action in the `BooksControllers`...
    1. What change in the database can we test for?
    1. What goes in the curly braces inside the `expect ... must_differ` syntax?

1. When we test the `update` action in the `BooksControllers`...
    1. After we successfully update an existing book, what multiple changes in the database can we test for?
    1. Why do we have two tests for the `update` action?
    1. In our tests, what code can we write to reload data from our test database?

### Strong Params

1. True or False: In Rails, controllers are not allowed to directly pass form-data from params into our models.
1. True or False: In Rails, we need to use the strong params feature to give permission for which form-data from params is allowed into our models.
1. In Ada Books, `book_params` is the name of a helper method that employs our special controller methods.
    - Where do we _call_ or _invoke_ the `book_params` method? (How do we _use_ it?)
    - Could the method `book_params` be named something else?
    - `book_params` is a private method. What does a private method mean? How do we know it's a private method, and why is this a good idea?
1. Look at this following method:
    ```ruby
    def book_params
      return params.require(:book).permit(:author, :title, :description)
    end
    ```
    This method says that the `BooksController` should accept form data that looks like:
    
    ```ruby
    {
      book: {
        author: "some author",
        title: "some title",
        description: "some description"
      }
    }
    ```
    - What three attributes of a book is being allowed? What part of the syntax determines that?
    - If the Book model changed, and now had a fourth attribute `subject`, does this method `book_params` need to change? How?
    - In our `book_params` method, we are saying that we expect the form-data to be nested in a key named `book`. What part of the syntax determines that?

## Git Branching

1. Define in your own words: What is a branch in git?
1. What are some examples of when you would use a branch in git?
1. What are the commands in the terminal to run to:
    - Show a list of all of the local branches on your computer
    - Create a new local branch on your computer
    - Push commits created on a local branch to a branch on GitHub
    - Pull changes from a branch on GitHub onto your local branch
    - Switch between branches?
    - Switch to the `master` branch?
    - Merge the commits of a local branch named `sort-tasks-feature` into the branch you are currently on?
1. What would you have to keep in mind if you worked with git branches on your next project?
1. What would you and a team need to consider and communicate on if everyone worked with git branches?

