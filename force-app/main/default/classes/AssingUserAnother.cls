public class AssingUserAnother {
    public static void assingAnotherUser(List<Account> acoList){
        List<User> userID = new List<User>();
        Id accountOwnerId ;
        userID = [Select Id from User Limit 2];
        Id userAssingId ;
        
        
        for(Account aco : acoList){
            accountOwnerId = aco.OwnerId;
            
        }
    for(User u : userID){
            if(u.Id != accountOwnerId){
                userAssingId = u.Id;
            }
        for(Account acc : acoList){
            if(acc.Industry == 'Education'){
                acc.OwnerId = userAssingId;
                               
          }
        }
                
    }

}
}