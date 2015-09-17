/*
 * Copyright (c) 2015 by {YOUR_COMPANY_NAME} Inc.  All Rights Reserved.
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
public with sharing class Constants
{
	//App Information
	public static final String APP_PREFIX = (new AppInformationController()).AppPrefix;
	public static final String APP_NAME = 'MY_APP';
	public static final String APP_VERSION = '1.0';
	public static final String APP_LANGUAGE = 'EN';

	//User Information
	public static final String CURRENT_USER = UserInfo.getName();
	public static final String CURRENT_USER_LANGUAGE = UserInfo.getLanguage();
}