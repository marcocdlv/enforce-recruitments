/*
 * Copyright (c) 2015 by {YOUR_COMPANY_NAME}, Inc.  All Rights Reserved.
 * This software is the confidential and proprietary information of
 * {YOUR_COMPANY_NAME}, Inc. ("Confidential Information").
 * You may not disclose such Confidential Information, and may only
 * use such Confidential Information in accordance with the terms of
 * the license agreement you entered into with {YOUR_COMPANY_NAME}.
 */

/*
 * Description
 *
 * @author 
 */
public with sharing class AppInformationController
{
    public String AppName
    {
        get
        {
            if (AppName == null)
            {
                AppName = Constants.APP_NAME;
            }
            return AppName;
        }
        private set;
    }

    public String AppVersion
    {
        get
        {
            if (AppVersion == null)
            {
                AppVersion = Constants.APP_VERSION;
            }
            return AppVersion;
        }
        private set;
    }

    public String AppLanguage
    {
        get
        {
            if (AppLanguage == null)
            {
                AppLanguage = Constants.APP_LANGUAGE;
            }
            return AppLanguage;
        }
        private set;
    }

    public String CurrentUser
    {
        get
        {
            if (CurrentUser == null)
            {
                CurrentUser = Constants.CURRENT_USER;
            }
            return CurrentUser;
        }
        private set;
    }

    public String CurrentUserLanguage
    {
        get
        {
            if (CurrentUserLanguage == null)
            {
                CurrentUserLanguage = Constants.CURRENT_USER_LANGUAGE;
            }
            return CurrentUserLanguage;
        }
        private set;
    }

    public String AppPrefix
    {
        get
        {
            if (AppPrefix == null)
            {
                AppPrefix = Prefix__c.getOrgDefaults().AppPrefix__c;
            }
            return AppPrefix;
        }
        private set;
    }

    public AppInformationController()
    {
        
    }

}