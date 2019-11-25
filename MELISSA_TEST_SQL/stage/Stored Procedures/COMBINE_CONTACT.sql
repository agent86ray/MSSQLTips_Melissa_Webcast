CREATE PROCEDURE [stage].[COMBINE_CONTACT]
AS
BEGIN
	INSERT [stage].[FULL_CONTACT] (
		CONTACT_KEY
	,	EMAIL_ADDRESS
	,	NAME_PREFIX
	,	FIRST_NAME
	,	MIDDLE_NAME
	,	LAST_NAME
	,	NAME_SUFFIX
	,	ADDRESS_LINE1
	,	ADDRESS_LINE2
	,	SUITE
	,	CITY
	,	STATE
	,	POSTAL_CODE
	,	PLUS4
	,	LATITUDE
	,	LONGITUDE
	)
	SELECT
		na.CONTACT_KEY
	,	ep.MD_MailboxName + '@' + MD_DomainName + '.' + ep.MD_TopLevelDomain
	,	na.MD_NamePrefix
	,	na.MD_NameFirst
	,	na.MD_NameMiddle
	,	na.MD_NameLast
	,	na.MD_NameSuffix
	,	na.MD_AddressLine1
	,	na.MD_AddressLine2
	,	''	-- suite
	,	na.MD_City
	,	na.MD_State
	,	na.MD_PostalCode
	,	''	--plus4
	,	na.MD_Latitude
	,	na.MD_Longitude
	FROM [stage].[CONTACT_NAME_AND_ADDRESS] na
	JOIN [stage].[EMAIL_AND_PHONE] ep
		ON ep.CONTACT_KEY = na.CONTACT_KEY
	WHERE CHARINDEX('NS01', na.MD_Results) > 0
	AND CHARINDEX('AS01', na.MD_Results) > 0
	AND CHARINDEX('ES01', ep.MD_Results) > 0;
END
