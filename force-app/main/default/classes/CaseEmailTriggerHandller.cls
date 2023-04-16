public class CaseEmailTriggerHandller {
    public static void CaseEmailSendSmsOwner(List<Case> casesList){
        List<messaging.Email> EmailList = New List<Messaging.Email>();
        for(Case ca : casesList){
            if(ca.Email__c != Null){
                Messaging.SingleEmailMessage sendEmailmsg = New messaging.SingleEmailMessage();
                String[] Toaddress  = new String[] {ca.Email__c};
                    sendEmailmsg.setToAddresses(Toaddress);
                String emailSub = 'Welcom <br/>'+ ca.AccountId + ca.ContactId ;
                sendEmailmsg.setSubject(emailSub);
                string Displayname = 'Owne Name <br/> Shyam Chandra Gupta';
                sendEmailmsg.setSenderDisplayName(Displayname);
                  String EmailContant = 'Hello <br/><br/>'+ ca.AccountId + '<br/><br/>'+
                    'Welcom To salesforce developer <br/.<br/>'+
                    'Begin To Salesforce Developer And Admin Journey With Shyam Chandra Gupta <br/.<br/>'+ ca.CaseNumber+ '<br/><br/>'+
                    'happy for creating this trigger first time <br/.<br/>'+ 'Thank U';
                    sendEmailmsg.setHtmlBody(EmailContant);
                EmailList.Add(sendEmailmsg);
            }
            
        }
        messaging.sendEmail(EmailList);
    }


}