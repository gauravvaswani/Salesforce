public with sharing class CreateContactFromCan {
	//Declare a method that does not return anything and takes an input parameter of a Candidate list object called 
    public void createContact (List<Candidate__c> candsFromTrigger){
    	//Select the Recruiting record from the database and assign it to an object called candAccount from the sObject Acct
    	Account candAcct = [Select a.Id From Account a Where a.Name = 'Recruiting']; //TODO: Generate SOQL statement from Schema browser and place here 
    	
    	//Instantiate a Contact list object from the List class called conList
    	List<Contact> conList = new List<Contact>();
    
    	//TODO: Declare a For List Loop to loop through the input parameter list candsFromTrigger 
    	for (Candidate__c currentCandidate : candsFromTrigger){
    
    		//TODO: Instantiate an object called con from sObject class Contact
    		Contact con = new Contact();
    		
    		//TODO: Set the attribute AccountID of the con object to the value of the Id attribute of the candAcct
    		con.AccountID = candAcct.Id;
    		
    		//TODO: Set the attribute Firstname of the con to the value of the First_Name__c attribute of the current candidate 
    		con.FirstName =  currentCandidate.First_Name__c;
    		
    		//TODO: Set the attribute Lastname of the con to the value of the Last_Name__c attribute of the 
    		con.LastName =  currentCandidate.Last_Name__c;
    		//TODO: Set the attribute Email of the con to the value of the Email__c attribute of the
    		con.Email =  currentCandidate.Email__c;
    		
    		//TODO: Add the con object to the conList   
    		conList.add(con);
    	}
    	//TODO: Persist the conList to the database
    	Database.insert(conList);
    	
    }
}

/*
	*****Execute following code in Anonymous Window*****
	List<String> studentNameList = new List<String>();
	studentNameList.add('Adam');
	studentNameList.add('Khalil');
	studentNameList.add('Sue');
	for (String currentStudentName : studentNameList){
		System.debug('Welcome to class, ' + currentStudentName);
	}
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
	
	//Set the attribute acctName of the object savAcct to D.Castillo-Sav
	savAcct.acctName = 'D.Castillo-Chk';
	
	//Invoke the makeDeposit method for $220
	savAcct.makeDeposit(220);
	
	//Instantiate a BankAcct List object from the List class call bankAccts
	List<BankAcct> bankAccts = new List<BankAcct>();
	
	System.debug('The BankAcct List has ' +bankAccts.size() + ' bank accounts. ');
	
	//Add the chkAcct object to the bankAccts list 
	bankAccts.add(chkAcct);
	
	//Add the savAcct object to the bankAccts list 
	bankAccts.add(savAcct);
	
	System.debug('The BankAcct List has ' +bankAccts.size() + ' bank accounts. ');
	
	//TODO: Declare a For List loop to loop through the list bankAccts with an iterationvariable called tempAcct
	
	for (BankAcct tempAcct : bankAccts){
		System.debug(tempAcct.acctName + ' is a ' + tempAcct.acctType + ' account with a balance of $' +tempAcct.getBalance());
	}
*/

/*
	*****Execute following code in Anonymous Window*****
	//TODO: Instantiate an object called acct from the sObject Account class
	Account acct = new Account();
	
	//TODO: Set the attribute name on the acct object to Recruiting
	acct.Name = 'Recruiting';
	
	//TODO: Persist the acct object to the DB using DML
	Database.insert(acct);
*/
