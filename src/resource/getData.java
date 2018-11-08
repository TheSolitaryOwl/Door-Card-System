package resource;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

public class getData {
	public static void main(String args[]) {
		
		getCourse("course.txt");
	}
	public static void getCourse(String fileName) {
		String line, token[], token1[];
		ArrayList<String> mon  = new ArrayList<String>(100);
		ArrayList<String> tue  = new ArrayList<String>(100);
		ArrayList<String> wed  = new ArrayList<String>(100);
		ArrayList<String> thur = new ArrayList<String>(100);
		ArrayList<String> fri  = new ArrayList<String>(100);
		
		try {
			BufferedReader br = new BufferedReader(new FileReader(fileName));
			
			while((line = br.readLine()) != null) {
				token = line.split("\\t");
				token1 = token[12].split(" ");
				
				if(!token[7].equals(" ")) {
					mon.add(token[1] + " " + token[2] + " " + token[3] + " " + token1[0] + token1[1]+ " " + 
							token1[3] + token1[4] + " " + token[14] + " " + token[15]);				
				}
				
				if(!token[8].equals(" ")) {
					tue.add(token[1] + " " + token[2] + " " + token[3] + " " + token1[0] + token1[1]+ " " + 
							token1[3] + token1[4] + " " + token[14] + " " + token[15]);				
				}
				
				if(!token[9].equals(" ")) {
					wed.add(token[1] + " " + token[2] + " " + token[3] + " " + token1[0] + token1[1]+ " " + 
							token1[3] + token1[4] + " " + token[14] + " " + token[15]);				
				}
				
				if(!token[10].equals(" ")) {
					thur.add(token[1] + " " + token[2] + " " + token[3] + " " + token1[0] + token1[1]+ " " + 
							token1[3] + token1[4] + " " + token[14] + " " + token[15]);				
				}
				
				if(!token[11].equals(" ")) {
					fri.add(token[1] + " " + token[2] + " " + token[3] + " " + token1[0] + token1[1]+ " " + 
							token1[3] + token1[4] + " " + token[14] + " " + token[15]);				
				}
			}
			br.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	//===========================================================================================================
	public static void sort(ArrayList<String> day) {
		for(int i = 0; i < day.size(); i++) {
			
		}
	}
}
