public with sharing class RecruitmentConfigWizardController {

    public RecruitmentConfigWizardController(ApexPages.StandardController controller) {

    }


    public String getContentActionsList() {
        return null;
    }


    public List<Actions__c> ContentActionsList;
    public List<User> UserTemp = new List<User>();
    public String S = 'Item1';
    public FiltersController filtersController;
    public String[] subComponents = new String[]{};
    public String[] ObjectsName = new String[]{}; 
    
     public String[] getObjectsName() {
        return ObjectsName;
     }             

     public void setObjectsName(String[] ObjectsName) {
        this.ObjectsName = ObjectsName;
     }
    
    public PageReference Init() {
        ContentActionsList = [SELECT Id, Name FROM Actions__c LIMIT 2000];
        return null;
    }

    public String CurrentTab {
        get{
            if (CurrentTab == null) {
                CurrentTab = 'tab_entity_selection';
            }
            return CurrentTab;
        }
        set;
    }    
     
     public List<SelectOption> objects {
         get{
             return filtersController.getObjects();          
         }
         set;        
     }
     
     public List<SelectOption> items {
         get{
             return filtersController.getItems();
         }
         set;
     }   
    
    public RecruitmentConfigWizardController(){
      CurrentTab = 'tab_entity_selection';
      filtersController = new FiltersController();
    }
    
    public void GoNext() {
      if(CurrentTab == 'tab_entity_selection'){
             CurrentTab = 'tab_actions';
      }else
          if(CurrentTab == 'tab_actions'){
                 CurrentTab = 'tab_filters';
          }else
              if(CurrentTab == 'tab_filters'){
                 CurrentTab = 'tab_content';
              }      
    }

    public void GoPrevious() {
      if(CurrentTab == 'tab_actions'){
             CurrentTab = 'tab_entity_selection';
      }else
          if(CurrentTab == 'tab_filters'){
                 CurrentTab = 'tab_actions';
          }else
              if(CurrentTab == 'tab_content'){
                 CurrentTab = 'tab_filters';
              }          
    }
    
    public void cancel() {            
        CurrentTab = 'tab_entity_selection';
    }
    
     public List<SelectOption> UserList {
        get
        {
            UserTemp = [Select u.LastName, u.Id, u.FirstName, u.Email From User u];

            UserList = new List<SelectOption>();

            for(User temp : UserTemp)
            {
                UserList.add(new SelectOption(temp.Id, temp.LastName));
            }
            
            Object CandidateTemp = [Select u.Name From User u];
             for(User temp : UserTemp)
            {
                UserList.add(new SelectOption(temp.Id, temp.Name));
            }
            return UserList;
        }
        set;
    }
    
    public List<SelectOption> GetItems {
         get
         {
             List<SelectOption> options = new List<SelectOption>();
             options.add(new SelectOption('','Select one'));
             options.add(new SelectOption('Item1','Item1'));
             return options;
          }
        set;
     }
     
     public List<SelectOption> getItems2() {

             List<SelectOption> options = new List<SelectOption>();
             options.add(new SelectOption('','Select one'));
             options.add(new SelectOption('Item1','Item1'));
             options.add(new SelectOption('Item2','Item2'));
             options.add(new SelectOption('Item3','Item3'));
             options.add(new SelectOption('Item4','Item4'));
             return options;
     }
     
      public List<SelectOption> getEntities() {
             List<SelectOption> options = new List<SelectOption>();
             options.add(new SelectOption('','Select entity'));
             options.add(new SelectOption('Candidate','Candidate'));
             options.add(new SelectOption('Interviewers','Interviewers'));
             options.add(new SelectOption('Positions','Positions'));
             options.add(new SelectOption('Skills','Skills'));
             return options;
     }
}