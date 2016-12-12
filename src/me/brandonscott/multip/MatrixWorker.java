package me.brandonscott.multip;

import java.util.Random;

public class MatrixWorker extends Thread {
	private int seed;
	private int size;
	private int count;

	public MatrixWorker(int seed, int size) {
		this.seed = seed;
		this.size = size;
		this.count = 0;
	}

	public void run() {
		Random RNG = new Random(seed);

		while (true) {
			double[][] matrixA = new double[size][size];
			double[][] matrixB = new double[size][size];
			double[][] resultMatrix = new double[size][size];

			// Initialize the three matrices
			for (int i = 0; i < size; i++) {
				for (int j = 0; j < size; j++) {
					matrixA[i][j] = RNG.nextDouble();
					matrixB[i][j] = RNG.nextDouble();
					resultMatrix[i][j] = 0;
				}
			}

			// Calculate the matrix result matrix
			for (int i = 0; i < size; i++) {
				for (int j = 0; j < size; j++) {
					for (int k = 0; k < size; k++) {
						resultMatrix[i][j] += matrixA[i][k] * matrixB[k][j];
					}
				}
			}
			
			// Increment the counter and sleep for a bit
			count++;
			
			try {
				sleep(5);
			} catch (InterruptedException iEx) {
				break;
			}
		}
	}

	public int getCount() {
		return count;
	}
}
