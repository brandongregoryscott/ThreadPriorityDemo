all:		build

build:
		javac src/me/brandonscott/multip/*.java -d bin/me/brandonscott/multip/

clean:
		/bin/rm -f bin/me/brandonscott/multip/*.class

test:	clean build
		java -XX:+UseThreadPriorities -XX:ThreadPriorityPolicy=1 -cp bin/me/brandonscott/multip/ me.brandonscott.multip.Demo 1
		java -XX:+UseThreadPriorities -XX:ThreadPriorityPolicy=1 -cp bin/me/brandonscott/multip/ me.brandonscott.multip.Demo 3
		java -XX:+UseThreadPriorities -XX:ThreadPriorityPolicy=1 -cp bin/me/brandonscott/multip/ me.brandonscott.multip.Demo 5
