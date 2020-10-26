# Week 9 - Rails Day 1

Please [submit a question](https://airtable.com/shrOEPwWbMZXxXlTt) the day before the roundtable discussion group.

---

Today's Roundtable will focus on reviewing the material from [the introductory Rails material](https://learn-2.galvanize.com/cohorts/2036/blocks/1006/content_files/intro-to-rails/preview-rails.md).

For this discussion, think of your instructor as a mediator and guide, rather than as a lecturer. You are encouraged to do the following:

* Whenever possible, you should follow the [Ada Online Communication Norms](https://learn-2.galvanize.com/cohorts/2036/blocks/882/content_files/00-welcome-to-ada/02-wk01-online-communication-norms.md)
* You should pose questions to the group, not the instructor.
* Similarly, you are encouraged to answer questions, with the instructor available to correct misconceptions and provide answers when no one else has an answer.
* Say something, even if you think you might be wrong! (Nobody throws a frisbee well on their first try.)
* When discussing code, you to use screen sharing through Zoom.
* Take notes!

---

### Let's start popcorn style with:
* What is a super power you have?
* What questions do you have?

---

### Guiding Questions and Concepts to Review:

General:
* What’s a new idea you enjoyed learning yesterday?

Livecode: 
* What would happen if I run `rails db:create` and `rails db:migrate`, commit my changes, push them, then Kaida pulls my changes? Does she have a database set up? Why?

Controllers:
* What would happen if I forgot to add `index` to the `routes.rb` file? 
* What would happen if I changed `@books` to `books` in the _Controller_?
* In the _router_, why did we make `index` respond to a get request as opposed to a different type of request?

Views:
* Why do we care to use embedded ruby instead of just HTML? 
    * What does it enable us to do that we couldn’t do before?
    * I have a bug in my view here, why is it printing the array in the HTML?
      ```erb
      <%= @books.each do |book | %>
        <li><%= book.title %> by <%= book.author %></li>
      <% end %>
      ```

Testing Controllers
* Why would we care to have tests for our controllers? 
    * What might go wrong if we built a rails website without these tests?
    * What are some examples from real-life websites where they probably give these response codes?  Why?
        * `:not_found`
        *  `:server_error`
        * `:ok`
        * `:created`
        * `:bad_request`
