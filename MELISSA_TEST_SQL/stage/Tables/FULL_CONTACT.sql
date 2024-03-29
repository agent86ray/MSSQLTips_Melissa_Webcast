﻿CREATE TABLE [stage].[FULL_CONTACT] (
    [CONTACT_KEY]   INT           NULL,
    [EMAIL_ADDRESS] NVARCHAR (75) NULL,
    [NAME_PREFIX]   NVARCHAR (20) NULL,
    [FIRST_NAME]    NVARCHAR (35) NULL,
    [MIDDLE_NAME]   NVARCHAR (20) NULL,
    [LAST_NAME]     NVARCHAR (35) NULL,
    [NAME_SUFFIX]   NVARCHAR (20) NULL,
    [ADDRESS_LINE1] NVARCHAR (50) NULL,
    [ADDRESS_LINE2] NVARCHAR (50) NULL,
    [SUITE]         NVARCHAR (20) NULL,
    [CITY]          NVARCHAR (35) NULL,
    [STATE]         NVARCHAR (15) NULL,
    [POSTAL_CODE]   NVARCHAR (10) NULL,
    [PLUS4]         NVARCHAR (4)  NULL,
    [LATITUDE]      NVARCHAR (24) NULL,
    [LONGITUDE]     NVARCHAR (24) NULL,
    [PHONE_NUMBER]  NVARCHAR (30) NULL
);

