CREATE TABLE [stage].[EMAIL_AND_PHONE] (
    [PHONE] varchar(50),
    [EMAIL] varchar(50),
    [CONTACT_KEY] int,
    [MD_Results] nvarchar(200),
    [MD_PhoneNumber] nvarchar(30),
    [MD_DomainName] nvarchar(50),
    [MD_MailboxName] nvarchar(25),
    [MD_TopLevelDomain] nvarchar(10),
    [MD_AreaCode] nvarchar(3),
    [MD_NewAreaCode] nvarchar(3),
    [MD_PhoneExtension] nvarchar(14),
    [MD_PhonePrefix] nvarchar(3),
    [MD_PhoneSuffix] nvarchar(4)
)