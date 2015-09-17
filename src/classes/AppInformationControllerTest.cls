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
@isTest
private class AppInformationControllerTest
{
    
    @isTest 
    static void test_Proprties()
    {
        AppInformationController appInfoController  = new AppInformationController();
        System.assertEquals(Constants.APP_PREFIX , appInfoController.AppPrefix);
        System.assertEquals(Constants.APP_NAME , appInfoController.AppName);
        System.assertEquals(Constants.APP_VERSION , appInfoController.AppVersion);
        System.assertEquals(Constants.APP_LANGUAGE , appInfoController.AppLanguage);
        System.assertEquals(Constants.CURRENT_USER , appInfoController.CurrentUser);
        System.assertEquals(Constants.CURRENT_USER_LANGUAGE , appInfoController.CurrentUserLanguage);
    }

    
}