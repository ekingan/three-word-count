# Phrase Counter
This Ruby program counts the occurances of three word phrases when given a filepath or input via stdin. 

## Running the program
This program was written using Ruby version 2.6. I have provided a folder with 4 text files for testing. These directions are written under the assumption that Ruby is installed.

You can run the program using ruby and pass one or more filepaths as arguments:
ex. `ruby app.rb text_files/file1.txt text_files/long.txt text_files/short.txt`

It can also be run by piping input to the ruby program:
ex `cat text_files/file1.txt text_files/long.txt | ruby app.rb` 

## Testing the program
Tests are written in RSPEC. First install RSPEC:
`gem install rspec`
You may have to run:
`rspec --init`

Then to run all of the tests:
`rspec`

## If I were given more time
If given more time I would provide more error handling. For example, I would like to handle the `Errno::ENOENT` error when a file is not found.
I would also like to do some benchmarking for different ways to increase the program speed.
I realize that this method would be slow and expensive.
```
 def top_results(words, size: 100)
    list = grouped(words)
    Hash[list.sort_by { |_, v| -v }[0...size]]
  end
  ```
I could rewrite this to condier only the top 100 values, remove the others, and then sort those key/value pairs.

