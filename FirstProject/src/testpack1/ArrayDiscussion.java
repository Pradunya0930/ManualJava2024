package testpack1;

public class ArrayDiscussion 
{
	
	// package   : all letters in lower case
	// class     : Initial letters in upper case
	// method    : 1st lower and every new word Initials in upper case

	public static <string> void main(String[] args) {
		
	//data type = int
		//variable name = a,b,c 
		//value = 10,20,30
		
		int a = 10;
		int b = 20;
		int c = 30;
		int d = 40;
		//data structure which stores multiple data inside it
		
	// Syntax :
	// dataType [] variableName = {value1, value2, value3..};
		int [] array1 = {a, b, c, d}; 
		
		// array ko diclair krneka tarika no 01

		// index start with zero  0, 1, 2, 3
		
		System.out.println(array1 [2]);
		System.out.println(array1 [3]);
		
		int sum = array1[0] + array1[2];
		
		                // 0 ki value a veriable ki a = 10 value ko allot ho jaegi
		
		System.out.println(sum);
		
		int array1size = array1.length;
		
		System.out.println(array1size);
		            // Last index of array = Array size - 1 
		
		
		//int [][] array2 = { {a, b}, {c, d}  }; // no use in QA
		
		
		
		//Syntax :
	//Datatype [] variableName = new dataType [array size];	
		int [] array2 = new int [5];        //array ko diclair krneka tarika no 02
	
		//	type of array 
		array2[0] = 50;
		array2[1] = 60;
		array2[2] = 70;
		array2[3] = 80;
		array2[4] = 90;
		
		         //backend memory me table create hoga>> 
		                 // table number start with 0 / end with 4
		                 // = Total 5 array 
	                     // 1) array 0 ki value 50 
		                 // 2) array 1 ki value 60
		                 // 3) array 2 ki value 70
		                 // 4) array 3 ki value 80
		                 // 5) array 4 ki value 90
		
		
		System.out.println(array2[0]);
		System.out.println(array2[1]);
		System.out.println(array2[2]);
		System.out.println(array2[3]);
		System.out.println(array2[4]);
		
// Array Length =	[5] 
// Array Length = Total number of element in array----------
		
//---------------STRING --------------------
		
	// String ka data add string type me add hoga 
		
	// it signifying only in "DOUBLE INVERTED COUMA"
		
	//  dataType variableName = value ;             	------------TYPE 01
		
		String       s1       = "123 %^& 456";
		String       s2       = "Run your String & Print hare"
				                     + "Follow naming console";
		
		System.out.println(s1+s2);
	
		               //         Position 0  Position 1    Position 2
		String [] arraystring =     {"hhh",     "jjj",       "ttt"};
		
		
		System.out.println(arraystring[0]);
		System.out.println(arraystring[1]);
		System.out.println(arraystring[2]);
		
		
	
		
		
		
		
		
		
		
		
		
	}
    }