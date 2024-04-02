package testpack1;

public class JavaBasics {
	
	public static void main(String[] args) {
		
 //21/03/2024-------------------------------------------------------------
		// pre-increment***********
		
		int x = 10;
		int y = ++x; 
		// first value of 'x' will be increased by 1 and then assigned to variable 'y'.
	    System.out.println(y);
	
	    //post increment*****************
	int p = 10;
	int r = p++;
	// first value of 'p' will be assigned to 'r' & then increase by 1
	System.out.println(r);
	System.out.println(p);
	
	//pre decrement **************************
	
	int o = 45;
	int k = --o; // value of variable o & k ia decrease by 1
	              // o -- value decrease by 1 then assign to k
	System.out.println(o);
	System.out.println(k);
	
	//post decrement ******************************
	int h = 90;
	int j = h--;// value of h is assigned to j and then decreased by 1
	System.out.println(h);
	System.out.println(j);
	
	// Comparision Operators*****************************
	int xx= 50;
	int yy = 60;
	
    boolean result = yy > xx;
    System.out.println(result);
    
    boolean result2 = xx > yy;
    System.out.println(result2);
	
    //Greater than equal to ****************************** 
	int aa = 80;
	int bb = 81;
	
	boolean res = aa >= bb;
	System.out.println(res);
	
	boolean res2 = aa <= bb;
	System.out.println(res2);
	
	// Equal to (==)-----Double equal to-------------
	int ll = 80;
	int kk = 80;
	boolean result4 = (ll==kk);
	System.out.println(result4);
	
	// arenotEqual ****************************************
	int hh = 30;
	int jj = 40;
	boolean result5 = hh != jj;  //Because hh & jj are not equal sign is !=
	System.out.println(result5);
	
	// Logical AND operator (&&)********to combine conditions***************************
	int gg = 30;
	int ff = 30;
	boolean result6 = (gg != ff)&&(gg >= ff);
	System.out.println(result6); // outcome should be true 
	
	// 22-03-2024***************************************
	// Logical OR operator (||)***********one outcome should be True******
	int dd = 20;
	int ee = 10;
	boolean orOperator = (dd != 20) || (ee > dd) || (dd == 90);
		System.out.println(orOperator);
		
		// Modulus Operator ******use to get the reminder of divide value***************************
		
		int tt = 42;
		int uu = 10;
		int reminder = tt/uu;
		System.out.println(reminder);
		
	int mod = tt % uu; // devide then result will be reminder
	System.out.println(mod);
		
	
	
	
	}

}
