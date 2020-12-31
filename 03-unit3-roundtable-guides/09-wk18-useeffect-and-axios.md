# Friday 1/8: useEffect Hooks and Axios Calls

Please [submit a question](https://airtable.com/shrOEPwWbMZXxXlTt) the day before the roundtable discussion group.

---

Today's Roundtable will focus on reviewing [useEffect Hook](https://learn-2.galvanize.com/cohorts/2036/), [API Get](), and [API Post]().

For this discussion, think of your instructor as a mediator and guide, rather than as a lecturer. You are encouraged to do the following:

* Whenever possible, you should follow the [Ada Online Communication Norms](https://learn-2.galvanize.com/cohorts/2036/blocks/882/content_files/00-welcome-to-ada/02-wk01-online-communication-norms.md)
* You should pose questions to the group, not the instructor.
* Similarly, you are encouraged to answer questions, with the instructor available to correct misconceptions and provide answers when no one else has an answer.
* Say something, even if you think you might be wrong! (Nobody throws a frisbee well on their first try.)
* When discussing code, you to use screen sharing through Zoom.
* Take notes!

---

### Let's start popcorn style with:
* As a child what did you want to be when you grew up?

---

### Guiding Questions and Concepts to Review:

#### useEffect
* What is `useEffect` hook used for? What are the two arguments it takes?
* Let's look at this code below:

  ``` javascript
  // imports above ...
  function App() {
    const [name, setName] = useState("");

    useEffect(() => {
      setName("Crow T. Robot");
    })
    // return statement below ...
  }
  ```

When we run `npm start` and check the Console on Chrome, we see a message `(551 calls) Warning: Maximum update depth exceeded.` Uh oh, what happened? What did we do wrong with our code?

#### Axios and API Calls
*