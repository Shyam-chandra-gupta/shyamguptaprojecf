public class OpportunitySumOfAnual {
    public static void annualORevenue()
    {
     List<Account> oppList = [select Name,id,AnnualRevenue,(select name,id,Amount,ExpectedRevenue from opportunities ) from Account where id = '0015g00000qtU8yAAE'  ];
        system.debug(oppList);
        List<Opportunity> opplst = new List<Opportunity>();
        List<Account> acclst = new List<Account>();
        Decimal anRev = 0;
        for(Account opp:oppList)
        {
            system.debug(opp.opportunities);
            opplst.add(opp.opportunities);
            anRev = anRev+opp.AnnualRevenue;
        }
            system.debug(opplst);
            system.debug('Before'+anRev);
        for(Opportunity op: opplst){
            system.debug('op>>>>>>>'+op);
            anRev = anRev + op.Amount + op.ExpectedRevenue;   
        }
        system.debug('After'+anRev);
         for(Account opp1:oppList)
        {
           
          opp1.AnnualRevenue = anRev;
            acclst.add(opp1);
        }
        system.debug('acclst'+acclst);
        update acclst;
        
    }

}