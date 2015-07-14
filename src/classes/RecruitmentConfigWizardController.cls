public with sharing class RecruitmentConfigWizardController {

    public String ContentActionsList { get; set; }

    public PageReference Init() {
        return null;
    }


    public String CurrentTab {
        get{
            if (CurrentTab == null) {
                CurrentTab = 'EntitySelection';
            }
            return CurrentTab;
        }
        set;
    }
    
    public PageReference GoNext() {
        if (CurrentTab == 'EntitySelection') {
            CurrentTab = 'ContentActions';
        }
        return null;
    }


    public PageReference GoPrevious() {
        if (CurrentTab == 'ContentActions') {
            CurrentTab = 'EntitySelection';
        }
        return null;
    }

}