package me.brandonscott.multip;

import java.util.*;
import java.util.concurrent.TimeUnit;

public class Demo {
	public static void main(String[] args) {
		int minutesToRun = Integer.parseInt(args[0]);
		int seed = 1234;
		boolean running = true;

		Random RNG = new Random(seed);

		// Create an ArrayList to store the worker threads in
		ArrayList<MatrixWorker> workers = new ArrayList<MatrixWorker>();

		// Create 100 workers and give them a random priority from 1-10
		for (int i = 0; i < 100; i++) {
			MatrixWorker worker = new MatrixWorker(seed, 50);
			worker.setPriority(RNG.nextInt(9) + 1);
			workers.add(worker);
		}

		// Keep track of the starting time, and execute the workers
		Date start = new Date();
		for (MatrixWorker worker : workers) {
			worker.start();
		}

		// Wait until the run time has been exhausted, and interrupt the worker
		// threads
		while (running) {
			Date current = new Date();
			long elapsed = current.getTime() - start.getTime();

			if (TimeUnit.MILLISECONDS.toMinutes(elapsed) == minutesToRun) {
				for (MatrixWorker worker : workers) {
					worker.interrupt();
				}
				running = false;
			}
		}

		// Join all of the threads, and extract their matrix count
		for (MatrixWorker worker : workers) {
			try {
				worker.join();
				System.out.println(
						worker.getPriority() + "|" + worker.getCount());
				System.out.flush();
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}
}
