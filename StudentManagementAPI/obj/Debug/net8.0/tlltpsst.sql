IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

CREATE TABLE [Courses] (
    [Id] int NOT NULL IDENTITY,
    [Code] nvarchar(max) NOT NULL,
    [Name] nvarchar(max) NOT NULL,
    [Description] nvarchar(max) NOT NULL,
    [CreatedBy] nvarchar(max) NOT NULL,
    [CreatedOn] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_Courses] PRIMARY KEY ([Id])
);
GO

CREATE TABLE [Students] (
    [Id] int NOT NULL IDENTITY,
    [FirstName] nvarchar(max) NOT NULL,
    [MiddleName] nvarchar(max) NOT NULL,
    [LastName] nvarchar(max) NOT NULL,
    [EmailAddress] nvarchar(max) NOT NULL,
    [DateOfBirth] datetime2 NOT NULL,
    [PhoneNumber] nvarchar(max) NOT NULL,
    [Address] nvarchar(max) NOT NULL,
    [CourseId] int NOT NULL,
    [CreatedBy] nvarchar(max) NOT NULL,
    [CreatedOn] nvarchar(max) NOT NULL,
    CONSTRAINT [PK_Students] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Students_Courses_CourseId] FOREIGN KEY ([CourseId]) REFERENCES [Courses] ([Id]) ON DELETE CASCADE
);
GO

CREATE INDEX [IX_Students_CourseId] ON [Students] ([CourseId]);
GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20240805080552_StudentDetails', N'8.0.7');
GO

COMMIT;
GO

