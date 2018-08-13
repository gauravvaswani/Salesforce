public class BankAcct {
    //TODO: Declare a private integer attribute called balance initialized to zero
    private Integer balance = 0;
    
    //TODO: Declare a public string attribute called acctName
    public string acctName;
    
    //Declare a public string attribute called acctType
    public string acctType;
    
    //TODO: Declare a method named makeDeposit that does not return anything and one input parameter of type integer named deposit
	public void makeDeposit(Integer deposit){
		//TODO: Add the input parameter to the balance attribute
		balance = balance + deposit;
	}
	
	//Declare a method named getBalance that returns an integer and no input parameter
	public integer getBalance(){
		//Return the balance attribute
		return balance;
	}
}

/*
	*****Execute following code in Anonymous Window*****
	BankAcct chkAcct = new BankAcct();
	chkAcct.acctType = 'Checking';
	chkAcct.acctName = 'D.Castillo-Chk';
	chkAcct.makeDeposit(150);
	System.debug(chkAcct);
*/

/*
	*****Execute following code in Anonymous Window*****

	//Instantiate an object from the BankAcct class called chkAcct
	BankAcct chkAcct = new BankAcct();
	
	//Set the attribute acctType of the object chkAcct to Checking
	chkAcct.acctType = 'Checking';
	
	//Set the attribute acctName of the object to chkAcct to D.Castillo-Chk
	chkAcct.acctName = 'D.Castillo-Chk';
	
	//Invoke the makeDeposit method for $150
	chkAcct.makeDeposit(150);
	
	//Instantiate an object from the BankAcct class called savAcct
	BankAcct savAcct = new BankAcct();
	
	//Set the attribute acctType of the object savAcct to Savings
	savAcct.acctType = 'Savings';
	
	//Set the attribute acctName of the object to savAcct to D.Castillo-Chk
	savAcct.acctName = 'D.Castillo-Sav';
	
	//Invoke the makeDeposit method for $220
	savAcct.makeDeposit(220);
	
	//TODO: Instantiate a BankAcct List object from the List class called bankAccts
	List<BankAcct> bankAccts = new List<BankAcct>();
	
	System.debug('The BankAcct List has  '+ bankAccts.size() + ' bank accounts. ');
	
	//TODO: Add the chkAcct object to the backAccts List
	bankAccts.add(chkAcct);
	
	//TODO: Add the savAcct object to the bankAccts List
	bankAccts.add(savAcct);
	
	System.debug('The BankAcct List has  '+ bankAccts.size() + ' bank accounts. ');
	
	System.debug('Here is the list: ' + bankAccts);
*/