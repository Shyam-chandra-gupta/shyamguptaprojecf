@isTest
public class ClosedWonOnOpportunityContact_Test {

    @testSetup
    static void testFactory(){
        Contact obj = new Contact();
        obj.LastName = 'Test Setup';
        insert obj;
    }
    
        static testmethod void closedWon(){
            
            Contact obj = [Select Id,lastname from Contact where lastName ='Test Setup'];
            System.assert(true, 'Test Setup');
            System.assertEquals(obj.lastName, 'Test Setup');
            System.debug('obj'+obj);
            test.startTest();
            ClosedWonOnOpportunityContact.ContactPopulate(obj.Id);
            test.stopTest();
        
    }
}