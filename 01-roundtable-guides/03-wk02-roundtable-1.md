# Wed 9/9: Nesting Arrays & Hashes, Loop Tables, Ride Share 

Today's Roundtable will focus on reviewing [Nesting Arrays & Hashes](XXX), [Loop Tables and Iteration](XXX), and the [Ride Share Project](XXX).

For this discussion, think of your instructor as a mediator and guide, rather than as a lecturer. You are encouraged to do the following:

* Whenever possible, you should follow the [Ada Online Communication Norms](https://learn-2.galvanize.com/cohorts/2036/blocks/882/content_files/00-welcome-to-ada/02-wk01-online-communication-norms.md)
* You should pose questions to the group, not the instructor.
* Similarly, you are encouraged to answer questions, with the instructor available to correct misconceptions and provide answers when no one else has an answer.
* Say something, even if you think you might be wrong! (Nobody throws a frisbee well on their first try.)
* When discussing code, you to use screen sharing through Zoom.
* Take notes!

Let's get started with
* What's something you did over the long weekend?
* What questions do you have?

Guiding Questions and Concepts to Review:
* What questions do you have abou the Ride Share Project?
* You have a set of data outlining the 7 wonders of the world.  How would you organize this in a Ruby program.
  
  | Place                      | Location                           | Description                                                                                                                                                                                     | Visits  |
  | -------------------------- | ---------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------- |
  | Great Wall of China        | Lat:  40.4319° N, Lon: 116.5704° E | Built between the 5th century B.C. and the 16th century, the Great Wall of China is a stone-and-earth fortification created to protect the borders of the Chinese Empire from invading Mongols. | 3000000 |
  | Christ the Redeemer Statue | Lat:  22.9519° S, Lon: 43.2105° W  | The Art Deco-style Christ the Redeemer statue has been looming over the Brazilians from upon Corcovado mountain in an awe-inspiring state of eternal blessing since 1931.                       | 230000  |
  | Machu Picchu               | Lat:  13.1631° S, Lon: 72.5450° W  | Machu Picchu is an Incan citadel set high in the Andes Mountains in Peru, above the Urubamba River valley.                                                                                      |
  | Taj Mahal                  | Lat:  27.1751° N, Lon: 78.0421° E  | The Taj Mahal is an ivory-white marble mausoleum on the southern bank of the river Yamuna in the Indian city of Agra.                                                                           | 2400000 |
  
  * Given your organization how could you search through the data structure and find the great wonder with the most visits?
  
 * Create a loop table for the following code segment:
     ```ruby
     i = 0
     numbers = []
     while i < 4
       numbers.push(i)
 
       i += 1
       puts "Numbers is now #{numbers}"
     end
     ``
* For extra practice with nested data structures, refer to the hash `cars` and the subsequent questions.

```
cars = {
  ford: [
    {
      model: "mustang",
      colors: ["yellow", "red"],
      price: 26000
    },
    {
      model: "fiesta",
      colors: ["blue", "green", "red"],
      price: 14000
    },
    {
      model: "explorer",
      colors: ["white", "green", "red"],
      price: 32000
    }
  ],
  subaru: [
    {
      model: "forester",
      colors: ["white", "red", "orange"],
      price: 24000
    },
    {
      model: "outback",
      colors: ["white", "blue", "green"],
      price: 26000
    }
  ]
}
```

### Intro Questions (5-10 min)
1. What are the layers in this data structure? For each layer, what do they represent, and what are their data types?
1. What code can I write to directly access the price of a car that is a Ford Fiesta?

1. Review as a class, with a classmate, with a rubber duck, etc.

### Coding Questions (30 min)
1. Add a model (ie. explorer, forester) to the structure
1. Add a make (ie. ford, subaru) to the structure
1. Write code to find the average price of ford models
1. Write code to list all colors of subaru models
1. Write code to find the average price of all cars
