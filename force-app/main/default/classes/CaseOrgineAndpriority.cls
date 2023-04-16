public class CaseOrgineAndpriority {
    public static void chageStatusAndP(List<Case> listCase){
        for(Case c : listCase){
            if(c.origin == 'Email'){
           c.status = 'New';
           c.priority = 'Medium';

        }
        }
    }

}