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
private class ConstantsTest
{
	@isTest 
	static void test_constantsValues()
	{
		System.assertEquals('MY_APP', Constants.APP_NAME);
		System.assertEquals('1.0', Constants.APP_VERSION);
		System.assertEquals('EN', Constants.APP_LANGUAGE);
	}

}