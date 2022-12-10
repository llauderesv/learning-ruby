# A Thread of execution is a sequence of Ruby statements that run (or appear to run)
# in parallel with the main sequence of statements that the interpreter is running. Threads
# represented by Thread objects, but they can also be though of as control structures for 
# concurrency.

# Example using thread to read the file

# This methods expects an array of filesnames.
# It returns an array of strings holding the content of the named files.
# The method creates one thread for each named file.
def readFiles(filenames)

  threads = filenames.map do |f|
    Thread.new { File.read(f) }
  end

  threads.map { |t| t.value }
end

puts readFiles ['assets/sample.txt', 'assets/another_example.txt']