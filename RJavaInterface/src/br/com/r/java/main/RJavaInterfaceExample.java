package br.com.r.java.main;

import java.util.ArrayList;

/**
 * @author Cleiton Fernando Lima Sena
 */

public class RJavaInterfaceExample {
	
	public String getSomeString() {
		return "This method returns a simple String";
	}
	
	public String[] getSomeStringArray() {
		return new String [] {"String Array 1", "String Array 2", "String Array 3"};
	}
	
	public int getSomeInt() {
		return 25;
	}

	public int[] getSomeIntArray() {
		return new int[] {1,2};
	}
	
	public int[][] getSomeIntMatrix() {
		return new int[][] {{1,2},{3,4},{5,6}};
	}
	
	public double getSomeDouble() {
		return 1.2;
	}

	public double[] getSomeDoubleArray() {
		return new double[] {1.2,2.3};
	}
	
	public double[][] getSomeDoubleMatrix() {
		return new double[][] {{1.0,2.1},{3.2,4.3},{5.4,6.5}};
	}
	
	public boolean getSomeBoolean() {
		return true;
	}
	
	public boolean[] getSomeBooleanArray() {
		return new boolean[] {true,false};
	}
	
	public boolean[][] getSomeBooleanMatrix() {
		return new boolean[][] {{true,true},{false,false},{true,false}};
	}
	
	public String getSomeStringList(){
		ArrayList<String> temp = new ArrayList<String>();
		temp.add("String list pos 1");
		temp.add("String list pos 2");
		return temp.toString();
	}
	
	public int multiplyInts(int ...values) {
		int multiplication = 1;
		for (int i = 0; i < values.length; i++) {
			multiplication*=values[i];
		}
		return multiplication;
	}
	
	public static void main (String[] args) {
	}
}
