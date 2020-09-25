# Introduction to Regular Expressions

## Recording will be inserted here.

## Learning Goals
By the end of this lesson, we should be able to
- Write a regular expression to match a specific pattern.
- Identify ways we can use regular expressions to speed up our development workflow.

## Introduction  

Regular expressions are a great tool for working with text. Using regular expressions (AKA Regex) you can **identify and process patterns** of text. Many people find regular expressions difficult to understand and use, but they can make a variety of tasks much easier, like validating that a phone number or zip code is in the right format.

You will likely only use a limited number of expressions during your time at Ada, but understanding Regex can simplify your code, and Regex is useful across multiple languages.

## Regular Expression Basics

First we will look at matching a pattern in text using regular expressions, `.match`, and the match operator `=~`

Like `String` and `Integer`, a regular expression is a data type in Ruby, defining a pattern of characters.  

You can form a Regex variable like this:

```ruby
pattern = /ada/
```

`/ada/` is a RegEx literal representing a pattern matching any String with the letters "ada" inside it.  The two forward slashes indicate a regular expression, or a pattern of text. Anything put between the slashes forms the pattern of text we can match strings against.  

You can think of it like a String, but instead of specifying a specific list of characters by enclosing  them with quotes (""), instead it defines a **pattern** of characters by enclosing  them with forward slashes.

You can test a String against the regular expression with the Regex's `match` method.  The `match` method compares the string to the pattern, character-by-character and will return a `MatchData` object upon a match and `nil` if the String does not match the pattern.  It's important to note that `match` will return a `MatchData` object if any substring matches the pattern, not necessarily the entire String.

For example:

```ruby
pattern = /ada/
if pattern.match("ada lovelace")
  puts "The String has ada in it!"
else
  puts "It doesn't match"
end
```
The above snippet will print out "The String has ada in it!"  

Regular Expressions can also be compared using the `=~` operator.  The `=~` operator returns the index of the first match in the string.

For example:

```ruby
pattern = /ada/

pattern =~ 'ada'	# => 0
pattern =~ "learn at ada academy." # => 9 
```

Both `match` and `=~` will return a truthy result if any substring matches the pattern.  That's an important issue to remember.  If you want to match a pattern exactly, the regular expression needs to be more specific using special characters to indicate the start and end of the string (more on this later).

<!-- available callout types: info, success, warning, danger, secondary  -->
### !callout-info

## Practice (1 minute)
What will the following return?

```ruby
pattern =~ "I love ada developers academy" 
pattern =~ "Ada Developers Academy"
pattern =~ "Seattle's a great city"
pattern.match('ada')
pattern.match('hello world')
```

### !end-callout

## Beyond the Basics

Now we will look into some of the tools of regex that come together to make regex a powerful tool including:
- Character Sets
- Wildcard 
- Quantifiers 
- The Not `^` Character
- Escape `\` Characters
- Start `^` and `$` End


## Character Sets

What if you wanted to match either "Ada" or "ada."?  To handle both lower and upper case "Ada," we need to provide our pattern options to match against.  To provide a list of possible characters we can use _Character sets_.

A _character set_, also called a _character class_ is a way to tell the regex engine to match only one out of several characters.  

We define a character set with square brackets.  
* For example `/[Ss]/` will match both capital and lowercase S.  
* Combining the character set with the previous larger literal, `[Aa]da` will match both "Ada" and "ada".  

If you want the whole regex to ignore case you can use the `i` flag. For example, `pattern1` and `pattern2` below are two ways of achieving case insensitivity.

```ruby
pattern1 = /ada/i
pattern2 = /[Aa][Dd][Aa]/

pattern1 =~ 'ADA' # => 0
pattern1 =~ 'aDA' # => 0
pattern1 =~ 'aDa' # => 0

pattern2 =~ 'ADA' # => 0
pattern2 =~ 'aDA' # => 0
pattern2 =~ 'aDa' # => 0
```

You can also adjust the character set to accept a range of characters.  For example:  
* `/[A-Z]/`  will accept a single character in the range A to Z (must be capitalized)
* `/[0-9]/` will accept a single digit.
*  `/[A-Za-z]/` or `/[A-Z]/i` will accept any alphabetic characters.

![/[A-Aa-z]/](images/regex1.png)

<!-- available callout types: info, success, warning, danger, secondary  -->
### !callout-info

## Practice with Character Sets (3 minutes)

Write a regex pattern to match any alphanumeric digit like "a", "W", or "0"? Make sure your test to code.

### !end-callout

<details>
  <summary>
  Check your answer here
  </summary>
	
  ```ruby
  pattern = /[A-Za-z0-9]/
  # pattern = /[A-Z0-9]/i
  
  test_strings = ['a','W', '0', '-', '*']  

  test_strings.each do |item|
      puts pattern.match(item) ? '#{item} is valid' : '#{item} is not valid'
  end
  ```

</details>

### More Practice with character sets (optional)

1. Write a regex pattern to match a string that contains a vowel.
2. Write a regex pattern that matches the string "gray" and "grey."
3. Write a regex pattern that matches double digit numbers that are multiples of 5.
4. Write a regex pattern that matches 3 letter words that rhymn with "bad."

<details>
  <summary>
  Check your answers here
  </summary>
  
  ```ruby
  # 1) contains a vowel
  pattern = /[aeiuo]/
  
  # 2) matches "gray" and "grey"
  pattern = /gr[ae]y/
  
  # 3) multiples of 5
  pattern = /[1-9][05]/
  
  # 4) 3 letter words that rhymn with "bad."
  pattern = /[dfhlmprst]ad/
  
  ```
  
</details>

## The Wildcard and Quantifiers

Sometimes you will want to accept any character.  For that purpose you can use the _wildcard_ character, a period (`.`).

Another common need is for characters that are optional or can repeat. For this there are several helpful symbols called _quantifiers_: `*`, `+` and `?`.

These characters are summarized in the following table.

Character | Meaning            | Example
---       | ---                | ---
`.`       | Any one character  | `/a.a/` matches `ada`, `ava`, and `a!a`
`*`       | Preceding token may occur **zero** or more times | `/ad*a/` matches `aa`, `ada`, and `adddda`<br><br>`/[0-9]*/` matches `1`, `345`, and the empty string<br><br>`.*` matches any string
`+`       | Preceding token may occur **one** or more times. | `/ad+a/` matches `ada` and `adddda` but **not** `aa`<br><br>`/[0-9]+/` matches `1` and `345` but **not** the empty string<br><br>`.+` matches any string **except for** the empty string
`?`       | Preceding token is optional (may occur zero or one times) | `/ad?a/` matches `aa` and `ada`<br><br>`/[0-9]/` matches `2` and the empty string but not `27` or `356`<br><br>`.?` matches any one character or the empty string

<!-- available callout types: info, success, warning, danger, secondary  -->
### !callout-info

## Practice with Wilcard and Quantifiers (15 minutes)

Write a regular expression to match a valid email of form `name@domain.tld`
- Matches `simon@adadev.org`, `adalovelace@gmail.com`, `magictavern@puppies.supplies`
- Rejects `dan@adadev.`, `charles.com`, `@adadev.org`, `sarah@.org`
- Use `\.` for a literal period (more on this later)
- Before you begin, make a list of rules about what constitutes a valid e-mail address.

### !end-callout

<details>
  <summary>
  Check your answer here
  </summary>
	
  ```ruby
  pattern = /.+@.+\..+/

  test_strings = [`dee@adadev.org`, `adalovelace@gmail.com`, 
  `magictavern@puppies.supplies`,`dan@adadev.`, 
  `charles.com`, `@adadev.org`, `sarah@.org`]
  ```
</details>

## The NOT `^` Character

Use the ^ character and square brackets to exclude a group of characters or a type of character.

* It can be easier than listing all the valid possibilities.
In that case you need the ^ character and the square brackets.
 
* For example:  `/[^abc]/` excludes a, b and c.


What do the following patterns exclude?

```ruby
/[^0-9]/
/Ada is number [^2-9^a-z^A-Z^0]/ 
```

<details>
  <summary>
  Check your answer here
  </summary>
  
  * `/[^0-9]/` excludes any digit 
  * `/Ada is number [^2-9a-zA-Z0]` excludes any letter or digit, except `1`

</details>

<!-- available callout types: info, success, warning, danger, secondary  -->
### !callout-info

## Practice with Not `^` (2 minutes)
Write a regex which would accept `dog`, `sog`, and `hog`, but exclude `bog`?

### !end-callout


<details>
  <summary>
  Check your answer here
  </summary>
	
  ```ruby
  pattern = /[^b]og/
  
  test_strings = ['dog', 'sog', 'hog', 'bog']
  ```
</details>

## Escape characters

There are lots of characters that have special meanings in a Regex (such as the `+` or `*` characters).  Just like Strings you can use the backslash character to select the exact character in the text.  It can also be used as a shortcut for common classes of characters.

Some examples include:

| Escape Character |  |  
| --- | --- |
| `\n`  |  newline character |
| `\s`  |  Any whitespace character (space, tab, newline) |
| `\S`  |  Any non-whitespace character |
| `\d`  |  Any digit |
| `\D`  |  Any non-digit |
| `\.`, `\+`, `\*`, etc.  | The literal character following the backslash, for example `\\` searches the String for a backslash, while `\.` looks for a period.  |

Practical Example:

-  If we wanted a Regex to validate a US phone number in the format (ddd) ddd-dddd.
  -  `/\(\d\d\d\) \d\d\d\-\d\d\d\d/`

![phone number](images/regex3.png)
  - This regular expression takes 3 digits inside parentheses followed by a space, then three digits a dash and then 4 digits.  We will see how to simplify this a bit later.

<!-- available callout types: info, success, warning, danger, secondary  -->
### !callout-info

## Practice with Escape Characters (5 minutes)
Write a regex for any amount of US currency, for example it should match `$3.25`, `$102.73`, and `$0.25`.

### !end-callout

<details>
  <summary>
  Check your answer here
  </summary>
  
  ```ruby
  pattern = /\$\d+\.\d\d/
  
  test_strings = ['$3.25', '$102.73', '$0.25', '$1000.73',
  '$10.7', '$10.707']
  ```
</details>

## Start and End of a String

By default a regex will match a string if any part of the string matches. Sometimes you want your regex to be at the very beginning or very end of a string, or to match the whole string with nothing left over. In this case you can use the special characters `^` and `$`.

`^`, when placed at the beginning of a regex, will match the beginning of the string. If the string has characters before the match begins, it's not a match
- `/^ada/` matches `ada` and `ada end` but not `start ada`

`$`, when placed at the end of a regex, will match the end of the regex. If there are characters in the string after the match ends, it's not a match.
- `/ada$/` matches `ada` and `start ada` but not `ada end`

It is common to combine `^` and `$` in order to match an entire string.

<!-- available callout types: info, success, warning, danger, secondary  -->
### !callout-info

### Practice with Start and End (5 minutes)
Write a regex that will match only strings without any leading whitespace.
- `"ada"`, `"ada academy"` and `"ada "` all match
- `"  ada"`, `"  ada "` and `" "` do not match

### !end-callout

<details>
  <summary>
  Check your answer here
  </summary>
	   
  ```ruby   
  pattern = /^\S.*/

  test_strings = ['ada', 'ada academy', 'ada ', ' ada', ' ada ', ' ']    
  ```
</details>

## Conclusion

Regular expressions are a powerful tool that works in almost all languages. The same syntax with minimal changes can work in JavaScript, Ruby, Python, Java, C++, shell scripts... you get the idea.

Because Regex is almost universal there are a **lot** of tools available to compose them and a variety of pre-made Regular Expressions. Some tools are listed below.

It is also common to find pre-made regular expressions online, for example on Stack Overflow. Having a strong understanding of regex fundamentals will allow you to combine these and tweak them to your needs.

## Follow-up Lesson

This lesson serves as an introduction to regular expressions. We will learn more about regular expressions in a follow-up lessons which will include topics such as repititions, capture groups, and search/replace features of your editor.

### Regex Tools

There a number of tools you can use to compose regular expressions.

-  [Regexpal](http://regexpal.com.s3-website-us-east-1.amazonaws.com/?_ga=2.249565263.813004562.1495485737-848749570.1493938714) - A useful tool for composing Regular Expressions
- [Rubular](http://rubular.com/) - similar to Regexpal, a site you can use to compose a regular expression with a handy reference table on the page.
- [Regexper](https://regexper.com/) - a fantastic tool to generate a visual diagram of a regular expression.


## List of Regex Special Characters

A few of this symbols are explained in the following lesson [More Regular Expressions](more-regular-expressions.md)

| Character | Name  |  Description |
| --- | --- | --- |
|   \	|   Backslash	|   The backslash gives special meaning to the character following it. For example, the combination "\n" stands for the newline, one of the control characters. 	|
|   ^	|   Caret	|   The caret is the start of line anchor or the negate symbol.  Example: "^a" matches "a" at the start of a line.  Example: "[^0-9]" matches any non digit.	|
|   $	|   Dollar	|   $ the dollar is the end of line anchor.	|
|   \A	|   Beginning of String	|   \A indicates the beginning of the String, not the beginning of a line.	|
|   \Z	|   End of String	|   \Z matches the end of the String, not line.	|
|   {}	|   Curly Braces	|   { } the open and close curly bracket are used as range quantifiers.	|
|   []	|   Square Brackets	|    Open and close square bracket define a character class to match a single token inside the brackets.	|
|   ()	|   Parentheses 	|   The open and close parenthesis are used for grouping characters	|
|   .	|   Dot	|   the dot matches any character except the newline.	|
|   *	|   Star	|   The star is the match-zero-or-more quantifier.	|
|   +	|   Plus	|   The plus is the match-one-or-more quantifier.	|
|   ?	|   Question Mark	|   The question mark	 is the match-zero-or-one quantifier.	|
|   &#124;	|   Pipe	|   The vertical pipe separates a series of alternatives.	|
|  < > 	|   Anchors	|   The smaller and greater signs are anchors that specify a left or right word boundary.	|
|  - 	|   Minus	|   the minus indicates a range in a character class (when it is not at the first position after the "[" opening bracket or the last position before the "]" closing bracket. For example "[A-Z]" matches any uppercase character.	|
| & | Ampersand | The and is the "substitute complete match" symbol. |

## Resources
-  [Regex in Wikipedia](https://en.wikipedia.org/wiki/Regular_expression)
-  [Regular Expressions in rubylearning.com](http://rubylearning.com/satishtalim/ruby_regular_expressions.html)
-  [Freecodecamp Course on Regex (uses JavaScript)](https://learn.freecodecamp.org/javascript-algorithms-and-data-structures/regular-expressions/using-the-test-method)
