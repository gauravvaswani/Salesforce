trigger CreateContact on Candidate__c (after insert) {
	//TODO: Instantiate an object called cc from the class CreateContactFromCan
	CreateContactFromCan cc = new CreateContactFromCan();
	
	//TODO: Invoke the method createContact and send a List of Candidates as an input parameter
	cc.createContact(Trigger.new);
	
}