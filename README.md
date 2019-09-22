# Phrase Counter
This Ruby program counts the occurances of three word phrases when given a filepath or input via stdin. 

## Running the program
This program was written using Ruby version 2.6. I have provided a folder with 4 text files for testing. These directions are written under the assumption that Ruby is installed.

You can run the program using ruby and pass one or more filepaths as arguments:
ex. `ruby app.rb text_files/file1.txt text_files/long.txt text_files/short.txt`

It can also be run by piping input to the ruby program:
ex `cat text_files/file1.txt text_files/long.txt | ruby app.rb`

If given more time I would provide more error handling, and do some benchmarking for different ways to increase the program speed. 

## Testing the program
Tests are written in RSPEC. First install RSPEC:
`gem install rspec`
`rspec --init`

Then to run the tests:
`rspec`