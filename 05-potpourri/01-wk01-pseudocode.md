# How to Pseudocode

## Introduction

When we receive a programming challenge, the process is usually this, right?

1. Read the problem
2. Write the solution in Ruby code

Nope! Not quite.

Really, the process includes:

1. Read the problem
2. Clarify the problem with questions
3. Break down the problem into smaller sub-problems
4. Think through your solution with ideas, notes, comments, explanations, and tasks left to do more research on
5. Write parts of the solution in Ruby code
6. Repeat steps 4-6

As our programs become more complicated, it is harder to know where to get started, break down the steps that need to be done and and still write clean code.

By breaking down the problem before writing code we can better prioritize what needs to be done and the steps involved to arrive at the minimum of what is needed to solve the problem.

Today we will focus on steps 4-6, and a tool that can help us accomplish these steps: pseudocode.

## Learning Goals

By the end of this lesson, we will be able to...

- Define pseudocode
- Explain why pseudocode is an important step of coding
- Apply writing pseudocode as a step to writing functional code

## What is Pseudocode?

**[Pseudocode](https://en.wikipedia.org/wiki/Pseudocode)** is a term that describes **informal, non-working, non-functioning lines of code intended to give explanation and meaning to developers.** It is code that is not intended to be part of the final solution/program.

Observe the following examples. Try to figure out the goal of each block of code. Which block of code is easier to read and understand the goal?

1.
```ruby
fruits = ['apples', 'oranges', 'bananas', 'canned o-shaped spaghetti noodles']
grocery_list = []
loop through each fruit in fruits
  if the fruit is not 'canned o-shaped spaghetti noodles'
    then add the fruit to grocery_list
  end the conditional if
end the loop
```

2.
```ruby
fruits = ['kiwis', 'mangos', 'bananas']
fruit_basket = []

fruits.each do |fruit|
  fruit_basket << fruit
end

puts "Successful!" if fruits.length == fruit_basket.length
```

<details>

  <summary>
    Which block of code is easier to read and understand the goal?
  </summary>

  Overall, it should be easier to read Example 1 and understand its goal because it has pseudocode, or understandable descriptions of code.

  Example 2 is full of working, functional code. However, sometimes, Example 2 is easier to read, because it's less information to parse through. However, this requires developers to know the precise syntax at the time of writing it.
</details>

Pseudocode allows you to think through the logic of a solving a problem before implementing functioning code.

### Pseudocode Can Be Any Style, and Your Style!

There are no rules about pseudocode and what it should look like! Therefore, all of these are valid examples of pseudocode.

The only rule is that **pseudocode should be deleted from your final solution, to ensure that your final solution runs correctly.**

It's more important to integrate the pseudocode _process_ rather than worry about pseudocode style.

### More Examples

Given the following problem, look at these different and valid examples of pseudocode.

Calculate the average of the numbers 3, 5, 6, 15, and 27 using a loop.

1.
```ruby
make a numbers variable, and it is an array
make a sum variable, and it starts with a value of 0

loop through each number in numbers array
  add number to sum
end the loop

the average is sum / number
```

2.
```ruby
# numbers is numbers from prompt
numbers = [3, 5, 6, 15, 27]
sum = 0

loop each number in numbers
  increment sum by number amount with sum += number
end

average = sum / number
```

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: short-answer
* id: fc11b33d-33b0-47c2-9d01-f6dc33ae88d8
* title: Pseudocode Style
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
<!-- * topics: [python, pandas] (optional the topics for analyzing points) -->

##### !question

How do you describe the difference between these two styles of pseudocode? Which one is more "your style"? Why?

##### !end-question

##### !placeholder

Your answer here

##### !end-placeholder

##### !answer

/.+/

##### !end-answer

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

## Benefits of Pseudocode

- Makes Changes Easier
- Documents Your Work
- Catch bugs and incorrect logic sooner and faster
- Supports iterative refinement

By integrating pseudocode into your coding process, you'll be able to plan, communicate, and debug your code better and more quickly.

Adding pseudocode doesn't need to be a long, bulky, or hard process. It can take either a few seconds or a few minutes.

## Applying the Process

Remember the process of working on code from above?

1. Read the problem
2. Clarify the problem with questions
3. Break down the problem into smaller sub-problems
4. Think through your solution with ideas, notes, comments, explanations, and tasks left to do more research on
5. Write parts of the solution in Ruby code
6. Repeat steps 4-6

After doing steps 1-3, you should do step #4 and use pseudocode to think through your solution with ideas, notes, and comments.

In the two examples below, you should witness three things:

1. Pseudocode first
2. Then Ruby code
3. Repeat

### Applying the Process: Example 1

Calculate the average of the numbers 3, 5, 6, 15, and 27 using a loop.

1.
```ruby
make a numbers variable, and it is an array
make a sum variable, and it starts with a value of 0

add each number in numbers to sum using a loop

the average is sum / the total number of numbers
```

2.
```ruby
make a numbers variable, and it is an array
make a sum variable, and it starts with a value of 0

loop through each number in numbers array
  add number to sum
end the loop

the average is sum / the length of the numbers array
```

3.
```ruby
# numbers is numbers from prompt
numbers = [3, 5, 6, 15, 27]
sum = 0

loop through each number in numbers array
  increment sum by number amount with sum += number
end

average = sum / numbers.length
```

4.
```ruby
numbers = [3, 5, 6, 15, 27]
sum = 0

numbers.each do |number|
  sum += number
end

average = sum / numbers.length
```

### Applying the Process: Example 2

Count the number of even numbers from the numbers 3, 5, 6, 15, and 27 using a loop

1.
```ruby
make numbers variable: array, 3, 5, 6, 15, and 27 from prompt
make number of even numbers variable: start at 0

loop through each number in numbers
  if the number is even
    then add 1 to number of even numbers
  else
    then the number is odd
    dont do anything
  end else
end loop
```

2.
```ruby
numbers = array, 3, 5, 6, 15, and 27
num_of_even_nums = start at 0

numbers.each |number| do
  if the number is even
    then add 1 to number of even numbers
  else
    then the number is odd
    dont do anything
  end else
end
```

3.
```ruby
numbers = [3, 5, 6, 15, 27]
num_of_even_nums = 0

numbers.each do |number|
  if number % 2 == 0
    then add 1 to number of even numbers
  else
    then the number is odd
    dont do anything
  end
end
```

4.
```ruby
numbers = [3, 5, 6, 15, 27]
num_of_even_nums = 0

numbers.each do |number|
  if number % 2 == 0
    num_of_even_nums += 1
  end
end

puts "The number of even numbers is #{num_of_even_nums}"
```

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: b3bea8fe-e0c4-47f2-b017-2afa83e62681
* title: Pseudocode: Process
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
<!-- * topics: [python, pandas] (optional the topics for analyzing points) -->

##### !question

Which of the following is an accurate description of the process in Examples 1 and 2?

##### !end-question

##### !options

* The developer started with equal parts of readable pseudocode and working Ruby code

* The developer started with a lot of readable pseudocode, and replaced the pseudocode with Ruby code step-by-step, starting with the "outermost" (non-indented) pseudocode

* The developer started with a lot of readable pseudocode, and replaced the pseudocode with Ruby code step-by-step, starting with the "innermost" (indented) pseudocode

* The developer started with a working Ruby solution, and then replaced the Ruby code with pseudocode

##### !end-options

##### !answer

* The developer started with a lot of readable pseudocode, and replaced the pseudocode with Ruby code step-by-step, starting with the "outermost" (non-indented) pseudocode

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
<!-- !explanation - !end-explanation (markdown, students can see after answering correctly) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

## Comprehension Questions

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: b3e5ad91-21e4-4553-a2a5-5173c0a902b4
* title: Pseudocode: Definition
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
<!-- * topics: [python, pandas] (optional the topics for analyzing points) -->

##### !question

Which of these is the best definition of pseudocode?

##### !end-question

##### !options

* Pseudocode is a set of comments in code intended to give explanation to non-programmers

* Pseudocode is a formal and rigid system of writing code intended to help a developer work through a problem

* Pseudocode is an informal, non-working, non-functioning system of writing code intended to help a developer work through a problem

* Pseudocode is the code in a programming solution that can be understood by developers

##### !end-options

##### !answer

* Pseudocode is an informal, non-working, non-functioning system of writing code intended to help a developer work through a problem

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
<!-- !explanation - !end-explanation (markdown, students can see after answering correctly) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: 16111178-b617-4ec4-8e36-8b70de666b9b
* title: Pseudocode: Benefits
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
<!-- * topics: [python, pandas] (optional the topics for analyzing points) -->

##### !question

Which of these is not a benefit of writing pseudocode?

##### !end-question

##### !options

* Makes Changes Easier
* Catch bugs and incorrect logic sooner and faster
* Supports iterative refinement
* Automatically verifies that your code works and is complete

##### !end-options

##### !answer

* Automatically verifies that your code works and is complete

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
<!-- !explanation - !end-explanation (markdown, students can see after answering correctly) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

<!-- >>>>>>>>>>>>>>>>>>>>>> BEGIN CHALLENGE >>>>>>>>>>>>>>>>>>>>>> -->
<!-- Replace everything in square brackets [] and remove brackets  -->

### !challenge

* type: multiple-choice
* id: 5679488f-b26e-4655-bd3b-10269ac08e61
* title: Pseudocode: Process
<!-- * points: [1] (optional, the number of points for scoring as a checkpoint) -->
<!-- * topics: [python, pandas] (optional the topics for analyzing points) -->

##### !question

Which of these describes a general process of incorporating pseudocode into solving a problem

##### !end-question

##### !options


* Read the problem, clarify the problem, write pseudocode, write Ruby code, repeat
* Read the problem, clarify the problem, break it into smaller sub-problems, write pseudocode, write Ruby code, repeat
* Write pseudocode, write Ruby code, repeat
* Write Ruby code, write pseudocode, rewrite Ruby code, repeat

##### !end-options

##### !answer

* Read the problem, clarify the problem, break it into smaller sub-problems, write pseudocode, write Ruby code, repeat

##### !end-answer

<!-- other optional sections -->
<!-- !hint - !end-hint (markdown, users can see after a failed attempt) -->
<!-- !rubric - !end-rubric (markdown, instructors can see while scoring a checkpoint) -->
<!-- !explanation - !end-explanation (markdown, students can see after answering correctly) -->

### !end-challenge

<!-- ======================= END CHALLENGE ======================= -->

## Additional Resources
- [Khan Academy Video: Planning with Pseudo-code](https://www.khanacademy.org/computing/computer-programming/programming/good-practices/p/planning-with-pseudo-code)
- [Wikihow: How to Write Pseudocode](http://www.wikihow.com/Write-Pseudocode)