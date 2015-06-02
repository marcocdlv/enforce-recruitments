public class ContentActionsController {
    public List<ContentAction__c> ContentActionsList {
        get;
        set;
    }
    
    public PageReference Init() {
        ContentActionsList = [SELECT Id, Name, Available__c FROM ContentAction__c LIMIT 2000];
        return null;
    }
}