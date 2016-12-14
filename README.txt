Author: Brandon Scott
Creation Date: December 12, 2016
Due Date: December 14, 2016
Course: CSC 543 Fall 2016
Professor Name: Dr. Parson
Assignment: #4

TO RUN:
Type "gmake test" on Harry, or "make test" on Luna/Dumbledore/Hermione.

The makefile will recompile the code and run through a series of tests, which
end up taking ~48 minutes of real-time to complete. The first test will run for
only a minute, and then it will run again, with random priorities for the 100
worker threads. The results are not particularly interesting unless you happen
to have root access to enable thread priorities. The code will still run, but
the setPriority() method does nothing. The output from the program will be
placed in a CSV file with the kernel name and time value, ie Linux1.csv,
SunOS1.csv, Linux1random.csv, etc.
