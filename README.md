# Phrase Counter
This Ruby program counts the occurances of three word phrases when given a filepath or input via stdin. 

## Running the program
This program was written using Ruby version 2.6.3. I have provided a folder with 4 text files for testing. These directions are written under the assumption that Ruby is installed.

You can run the program using Ruby and pass one or more file paths as arguments:
ex. `ruby app.rb text_files/file1.txt text_files/long.txt text_files/short.txt`

It can also be run by piping input to the Ruby program:
ex `cat text_files/file1.txt text_files/long.txt | ruby app.rb` 

## Testing the program
Tests are written in RSPEC. First install RSPEC:
`gem install rspec`

You may have to run:
`rspec --init`

Then to run all of the tests:
`rspec`
or you can test each spec file:
ex. `rspec spec/terminal_spec.rb`

## If I were given more time...
If given more time I would provide more error handling. For example, I would like to handle the `Errno::ENOENT` error for when a file is not found.

I would also like to do some benchmarking to determine different ways to increase the program speed.

I would also reconsider how to write the `top_results` method within the `Counter` class. This method would be slow and expensive if the `list` was very large.
```
 def top_results(words, size: 100)
    list = grouped(words)
    Hash[list.sort_by { |_, v| -v }[0...size]]
  end
  ```
I could rewrite this to consider only the top 100 values, remove the others, and then sort those 100 key/value pairs.

I also considered creating a WordArray class and moving all the array methods to that class.

## Known bugs
One known bug is that the Shebang in `app.rb` (`#!/usr/bin/env ruby`) does not seem to be working how I expect it to. I would assume using this I could simply type
`cat file | ./app.rb` to execute the program, but instead, I need to include `ruby` as so: `cat file | ruby app.rb`. I get a `permission denied` error when I exclude the call to `ruby`.


I am unaware of any other bugs outside of what I listed in my 'If I were given more time' section.

