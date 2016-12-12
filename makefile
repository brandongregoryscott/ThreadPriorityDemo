all:		build

build:
		javac src/me/brandonscott/multip/*.java -d bin/me/brandonscott/multip/

clean:
		/bin/rm -f bin/me/brandonscott/multip/*.class

test:	clean build
		java -XX:+UseThreadPriorities -XX:ThreadPriorityPolicy=1 -cp bin/me/brandonscott/multip/ me.brandonscott.multip.Demo 1 $(shell uname)1.csv
		java -XX:+UseThreadPriorities -XX:ThreadPriorityPolicy=1 -cp bin/me/brandonscott/multip/ me.brandonscott.multip.Demo 3 > $(shell uname)3.csv
		java -XX:+UseThreadPriorities -XX:ThreadPriorityPolicy=1 -cp bin/me/brandonscott/multip/ me.brandonscott.multip.Demo 5 > $(shell uname)5.csv
		java -XX:+UseThreadPriorities -XX:ThreadPriorityPolicy=1 -cp bin/me/brandonscott/multip/ me.brandonscott.multip.Demo 15 > $(shell uname)15.csv
