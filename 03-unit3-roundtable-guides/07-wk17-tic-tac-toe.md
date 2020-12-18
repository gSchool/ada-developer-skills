# Tuesday 12/31: Tic Tac Toe

Please [submit a question](https://airtable.com/shrOEPwWbMZXxXlTt) the day before the roundtable discussion group.

---

Today's Roundtable will focus on reviewing the [XX](https://learn-2.galvanize.com/cohorts/2036/).

For this discussion, think of your instructor as a mediator and guide, rather than as a lecturer. You are encouraged to do the following:

* Whenever possible, you should follow the [Ada Online Communication Norms](https://learn-2.galvanize.com/cohorts/2036/blocks/882/content_files/00-welcome-to-ada/02-wk01-online-communication-norms.md)
* You should pose questions to the group, not the instructor.
* Similarly, you are encouraged to answer questions, with the instructor available to correct misconceptions and provide answers when no one else has an answer.
* Say something, even if you think you might be wrong! (Nobody throws a frisbee well on their first try.)
* When discussing code, you to use screen sharing through Zoom.
* Take notes!

---

### Let's start popcorn style with:
* What trivia category would you excel at?

---

### Guiding Questions and Concepts to Review:

#### Tic Tac Toe
* What was the most difficult part about Tic Tac Toe? And how did you over come it?
* What was the role of useState in this project?
* Let’s have a volunteer or two share their code for Wave 3.
* Did anyone try Wave 4? If so, how did you determine there was a tie?

#### Event Handling

```jsx
const Student = (props) => {

  const [present, setPresent] = useState(false);

    return (
      <div>
        <h3>{props.fullName}</h3>
        <ul>
          <li>Class: C13</li>
          <li>Birthday: {props.birthday}</li>
          <li>Email: {props.email}</li>
        </ul>
        <button>
          Mark {present ? 'Absent' : 'Present'}
        </button>
      </div>
    );
}
```
* What are two ways we can create an event that, when the `button` is clicked, toggles `present` state?
* If we constructed a function called `updatePresent`, why is this a bad practice? `<button onClick={updatePresent()}>`. What should we do instead?