/*

DEMO SETUP:

TRUNCATE TABLE [dbo].[CONTACT];

INSERT INTO [dbo].[CONTACT] (
	[SOURCE_KEY]
,	[EMAIL_ADDRESS]
,	[FIRST_NAME]
,	[LAST_NAME]
)
VALUES (
	-1
,	N'rusty@gmail.com'
,	N'Rusty'
,	N'Barley'
)

GO
*/


-- review the contents of the CSV file to be imported

-- execute IMPORT CONTACT CSV

SELECT * FROM  [import].[CONTACT];

-- FULL NAME PARSE RESULTS
SELECT CONTACT_KEY, FULL_NAME_AND_ADDRESS, MD_Results, 
       MD_NameFirst, MD_NameMiddle, MD_NameLast, 
	   MD_NameSuffix, MD_Salutation
FROM [stage].[CONTACT_NAME_AND_ADDRESS]

-- FULL ADDRESS PARSE RESULTS
SELECT CONTACT_KEY, FULL_NAME_AND_ADDRESS, MD_Results, 
       MD_AddressLine1, MD_City, MD_State, 
	   MD_PostalCode, MD_Latitude, MD_Longitude
FROM [stage].[CONTACT_NAME_AND_ADDRESS]
 
SELECT * FROM [stage].[CONTACT_NAME_AND_ADDRESS]

SELECT CONTACT_KEY, EMAIL, PHONE, MD_Results, 
MD_DomainName, MD_MailboxName, MD_TopLevelDomain,
MD_AreaCode, MD_PhonePrefix, MD_PhoneSuffix
FROM [stage].[EMAIL_AND_PHONE]

SELECT * FROM [stage].[FULL_CONTACT]

SELECT * FROM [stage].[NEW_CONTACT]     ORDER BY cmpCONTACT_SK, srcCONTACT_KEY
SELECT * FROM [stage].[UPDATE_CONTACT]  ORDER BY mdMatchPercentage DESC
SELECT * FROM [stage].[NOTSURE_CONTACT] ORDER BY mdMatchPercentage DESC

SELECT * FROM [dbo].[CONTACT]
--------------------------------------------------

