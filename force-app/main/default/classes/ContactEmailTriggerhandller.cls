public class ContactEmailTriggerhandller {
    public static void contEmailSendSms(List<Contact> ConList){
        List<messaging.Email> EmailList = New List<Messaging.Email>();
        for(Contact Con : ConList){
            if(Con.Email != Null){
                Messaging.SingleEmailMessage sendEmailmsg = New messaging.SingleEmailMessage();
                String[] Toaddress  = new String[] {Con.Email};
                    sendEmailmsg.setToAddresses(Toaddress);
                String emailSub = 'Welcom'+ Con.FirstName;
                sendEmailmsg.setSubject(emailSub);
                string Displayname = 'Shyam Chandra Gupta';
                sendEmailmsg.setSenderDisplayName(Displayname);
                String EmailContant = 'Hello <br/><br/>'+ Con.FirstName + '<br/><br/>'+
                    'Welcom To salesforce developer <br/.<br/>'+
                    'Begin To Salesforce Developer And Admin Journey With Shyam Chandra Gupta <br/.<br/>'+
                    'happy for creating this trigger first time <br/.<br/>'+ 'Thank U';
                    sendEmailmsg.setHtmlBody(EmailContant);
                EmailList.Add(sendEmailmsg);
            }
            
        }
        messaging.sendEmail(EmailList);
    }

}