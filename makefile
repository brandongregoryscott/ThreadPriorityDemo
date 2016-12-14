all:		build

build:
		javac src/me/brandonscott/multip/*.java -d bin/me/brandonscott/multip/

clean:
		mkdir -p bin/me/brandonscott/multip
		/bin/rm -f *.csv
		/bin/rm -f bin/me/brandonscott/multip/*.class

test:	clean build
		java -XX:+UseThreadPriorities -XX:ThreadPriorityPolicy=1 -cp bin/me/brandonscott/multip/ me.brandonscott.multip.Demo 1 false > $(shell uname)1.csv
		java -XX:+UseThreadPriorities -XX:ThreadPriorityPolicy=1 -cp bin/me/brandonscott/multip/ me.brandonscott.multip.Demo 1 true > $(shell uname)1random.csv
		java -XX:+UseThreadPriorities -XX:ThreadPriorityPolicy=1 -cp bin/me/brandonscott/multip/ me.brandonscott.multip.Demo 3 false > $(shell uname)3.csv
		java -XX:+UseThreadPriorities -XX:ThreadPriorityPolicy=1 -cp bin/me/brandonscott/multip/ me.brandonscott.multip.Demo 3 true > $(shell uname)3random.csv
		java -XX:+UseThreadPriorities -XX:ThreadPriorityPolicy=1 -cp bin/me/brandonscott/multip/ me.brandonscott.multip.Demo 5 false > $(shell uname)5.csv
		java -XX:+UseThreadPriorities -XX:ThreadPriorityPolicy=1 -cp bin/me/brandonscott/multip/ me.brandonscott.multip.Demo 5 true > $(shell uname)5random.csv
		java -XX:+UseThreadPriorities -XX:ThreadPriorityPolicy=1 -cp bin/me/brandonscott/multip/ me.brandonscott.multip.Demo 15 false > $(shell uname)15.csv
		java -XX:+UseThreadPriorities -XX:ThreadPriorityPolicy=1 -cp bin/me/brandonscott/multip/ me.brandonscott.multip.Demo 15 true > $(shell uname)15random.csv
