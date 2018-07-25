public class MySampleApexClass { //Class definition and body
    public static Integer myValue = 0; //Class member variable
    public static String myString = ''; // Class member variable
    
    public static Integer getCalculatedValue(){
    	//Method definition and body
    	//do some calculation
    	
    	myValue = myValue+10;
    	return myValue;
    }
}