public class ScriptQuestionTwo 
{
    public static void main()
    {
        LIST<OpportunityLineItem> TQuant = new LIST<OpportunityLineItem>();
        TQuant = [select Id,Quantity,OpportunityId, Opportunity.accountId from OpportunityLineItem];
    }   
}