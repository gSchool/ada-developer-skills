# Ruby Roundtable Questions

## Week 1 Roundtable Questions

### Random Menu

* Compare and contrast solutions.

### Study Techniques Activity

* What study techniques have worked for you in the past?
* What study techniques have _not_ worked for you in the past?
* What study techniques have you found worked for you for programming?

### Study Techniques Activity

## Week 2 Roundtable Questions

### Nesting Arrays & Hashes

* You have a set of data outlining the 7 wonders of the world.  How would you organize this in a Ruby program.

| Place                      | Location                           | Description                                                                                                                                                                                     | Visits  |
| -------------------------- | ---------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------- |
| Great Wall of China        | Lat:  40.4319° N, Lon: 116.5704° E | Built between the 5th century B.C. and the 16th century, the Great Wall of China is a stone-and-earth fortification created to protect the borders of the Chinese Empire from invading Mongols. | 3000000 |
| Christ the Redeemer Statue | Lat:  22.9519° S, Lon: 43.2105° W  | The Art Deco-style Christ the Redeemer statue has been looming over the Brazilians from upon Corcovado mountain in an awe-inspiring state of eternal blessing since 1931.                       | 230000  |
| Machu Picchu               | Lat:  13.1631° S, Lon: 72.5450° W  | Machu Picchu is an Incan citadel set high in the Andes Mountains in Peru, above the Urubamba River valley.                                                                                      |
| Taj Mahal                  | Lat:  27.1751° N, Lon: 78.0421° E  | The Taj Mahal is an ivory-white marble mausoleum on the southern bank of the river Yamuna in the Indian city of Agra.                                                                           | 2400000 |

* Given your organization how could you search through the data structure and find the great wonder with the most visits?

```ruby
cars {
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

* Intro Questions (5-10 min)
  1. What are the layers in this data structure? For each layer, what do they represent, and what are their data types?
  2. What code can I write to directly access the price of a car that is a Ford Fiesta?
* Take 5 minutes to review above as a class
*  Coding Questions (30 min)
    1. Add a model (ie. explorer, forester) to the structure
    2. Add a make (ie. ford, subaru) to the structure
    3. Write code to find the average price of ford models
    4. Write code to list all colors of subaru models
    5. Write code to find the average price of all cars
*  Note: You may want to check in after some time and do #3 as a class before giving the class more time on 4 and 5. 


### Loop Tables & Iteration

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

### Data Transformation Worksheet

* How can `map` make this exercise easier?
* Given the following array of hashes, how could you get an array of the names of the students using `each`?
    ```ruby
    students = [ {
      name: "Ada Lovelace",
      age: 216,
      grade: 12,
      },
      { 
      name: "Grace Hopper",
      age: 114,
      grade: 11,
      },
      # ...
      ]
    ```
*  Now solve the same problem with `map`, does it make the problem easier?  How so


### Ride Share

*  How did you organize the Ride Share data?  
*  Did someone else organize the data differently?  
    * What advantages/disadvantages did it have?
*  How can you iterate through the structure to calculate the required answers?
*  What parts of the project did you find difficult?

### Enumerables Jigsaw

You will want to start with the official Ruby docs for Enumerable. You will want to answer the questions:

- What does this method do on a high level?
- What does it return?
- What does the code block do?
- What kind of syntax does it require?
- What does a code example look like?

#### Methods

- `reduce`
- `all?` & `any?`
- `select` & `reject`
- `uniq` & `sum`
- `min`, `max`, `min_by`, & `max_by`
- `sort_by`

#### Nota Bene: <=> or Spaceship Operator

In some of this documentation, you might see things that use the <=>, or spaceship operator. We don't expect you to dive into this detail at the moment. However, here is a brief summary of that operator:

How do programming languages compare two objects to each other? Given a or b, which is greater? Which is lesser? When are a and b equal to each other? These are questions programmers are concerned with when comparing two objects, and comparison between two objects happens during sorting.

The <=> operator gives a shortcut to evaluating the relationship between a and b in terms of either -1, 0, or 1. Consider the line of ruby code:

```ruby
a = 10
b = 200
a <=> b
```
The last line will return a -1 to signify that a is less than b.

### Intro to Git

- Why is it important to make regular commits in Git?
- What do the commands here do:
  - `git push`
  - `git add`
  - `git commit`
- You've just made changes to `adagrams.rb` and want to save these changes with git.  How do you do that?

## Week 9 Questions

### Livecode Intro

- How can you check out a specific lesson's code with git on your computer?

### Controllers

- Does the name of the controller matter in the command `rails generate controller Tasks`?
- How do the `index` and `show` actions differ?  How are they similar?
- How does Rails know which controller method to call?
- Have them label the parts of the `routes.rb` file.
- Why does this not work (answer `tasks` isn't an instance variable.)
    ```ruby
    class TasksController < ApplicationController
      def index
        tasks = [ 
          { name: 'mow the lawn', description: 'the grass is knee height', completed_date: '2020-11-10'}, 
          { name: 'Pay the bills', description: 'Power bill of $120.37', completed_date: ''},
          ]
      end
    end
    ```

### ERB and Layouts

- What's wrong with this erb?  It prints the entire array into the HTML as an array.
  ```erb
    <ul>
    <%= @tasks.each do |task| %>
      <li><%= task.name %></li>
    <% end %>
    </ul>
  ```
- If you have a controller method named `def show` what does the view file have to be named?
- What file should you edit to set the general layout and organization of each page on the Rails site?

### Testing Controllers

- How many edge-cases does the `index` action have in a controller?
- What things should you test in a controller action?
- Where do you find the tests for a controller?

## Week 10 Questions

### Git Branches

- Why is branching useful for a project like Ride-share?
- How can you create a branch in git?
- What are two ways to merge a branch back into master?
  - Using `git merge`
  - Using a pull request.
  - Rebase also works


### Strong Params

- Why bother with strong params?
- Does the method name matter? (task_params)
