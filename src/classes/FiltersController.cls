public class FiltersController {     
    
    public List<string> ObjectsName{       
        get {        
            List<string> SObjectList = new List<string>();            
            for(Schema.SObjectType objTyp : Schema.getGlobalDescribe().Values()){                
               String name = objTyp.getDescribe().getName();
               SobjectList.add(name);                
            }
            return SObjectList;
        }         
        set;        
    }
    
    public List<SelectOption> getObjects() {
        List<SelectOption> options = new List<SelectOption>();
        for(String objectName : ObjectsName) {
            string notation = objectName.substring(objectName.length() - 3, objectName.length());            
            if (notation == '__c') {
                options.add(new SelectOption(objectName, objectName));
            }
            
        }
        return options;
    }
    
    public List<SelectOption> getItems() {
            List<SelectOption> options = new List<SelectOption>();
            options.add(new SelectOption('CustomField','CustomField'));
            options.add(new SelectOption('FieldSet','FieldSet'));
            options.add(new SelectOption('ValidationRule','ValidationRule'));            
            options.add(new SelectOption('CompactLayout','CompactLayout'));            
            options.add(new SelectOption('SharingReason','SharingReason'));            
            options.add(new SelectOption('RecordType','RecordType'));            
            options.add(new SelectOption('WebLink','WebLink'));           
            options.add(new SelectOption('SharingRecalculation','SharingRecalculation'));            
            options.add(new SelectOption('SearchLayout','SearchLayout'));            
            options.add(new SelectOption('ListView','ListView'));            
            options.add(new SelectOption('BusinessProcess','BusinessProcess'));            
            options.add(new SelectOption('ActionOverride','ActionOverride'));
            return options;
    }
    
    public PageReference Init() {
        return null;
    }       

}