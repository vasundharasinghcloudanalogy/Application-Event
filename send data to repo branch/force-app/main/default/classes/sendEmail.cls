global class sendEmail implements Database.Batchable<sObject>, Database.Stateful {
    //public List<Messaging.SingleEmailMessage> lstEmail;
    public String body='';
    public Integer count;
    public List<Contact> ContactList;
    
    public sendEmail(){
        //lstEmail = new List<Messaging.SingleEmailMessage>();
        ContactList = new List<Contact>();
        count = 0;
    }    
    
    global Database.QueryLocator start(Database.BatchableContext BC) {
        String query = 'SELECT Id,Email FROM Contact WHERE Email !=null';
        System.debug('in start  method :::::: query::::::>'+query);
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext BC, List<Contact> scope) {
        count += 1;
        /* System.debug('in execute  method :::::: scope::::::>'+scope);
for(Contact a : scope)
{
ContactList.add(a);
}*/
        
        //List<Messaging.SingleEmailMessage> lstEmail = new List<Messaging.SingleEmailMessage>();
        // Messaging.SingleEmailMessage mail1=new Messaging.SingleEmailMessage();
        
        
       /* for(Contact a:ContactList){
            Messaging.SingleEmailMessage mail1=new Messaging.SingleEmailMessage();
            String[] toadd = new String[]{a.Email};
                string b =  'hello' ; 
            body = b ;
            mail1.setToAddresses(toadd);
            mail1.setSubject('Test mail');
            mail1.setPlainTextBody('this is a test mail');
            mail1.setHtmlBody(body);
            lstEmail.add(mail1);
        }
        System.debug(body);*/
        //Messaging.SendEmail(lstEmail);
    }  
    
    global void finish(Database.BatchableContext BC) {
        System.debug('count:::'+count);
        //Messaging.SendEmail(lstEmail);
    }
}