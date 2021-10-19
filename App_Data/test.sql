CREATE TABLE [dbo].[Accounts] (
    [Id]     INT IDENTITY (1, 1) NOT NULL,
    [Credit] INT NULL,
    [Debit]  INT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


CREATE TABLE [dbo].[Orders] (
    [Order_Id]      INT      IDENTITY (1, 1) NOT NULL,
    [Order_date]    DATETIME NULL,
    [Delivery_date] DATETIME NULL,
    [Product_ID]    INT      NOT NULL,
    [Supplier_ID]   INT      NOT NULL,
    PRIMARY KEY CLUSTERED ([Order_Id] ASC),
    CONSTRAINT [Products_Orders] FOREIGN KEY ([Product_ID]) REFERENCES [dbo].[Products] ([Product_ID]),
    CONSTRAINT [Supplier_Orders] FOREIGN KEY ([Supplier_ID]) REFERENCES [dbo].[Suppliers] ([Supplier_ID])
);


CREATE TABLE [dbo].[Products] (
    [Product_ID] INT        IDENTITY (1, 1) NOT NULL,
    [Name]       NCHAR (20) NULL,
    [Category]   NCHAR (20) NULL,
    [Price]      NCHAR (20) NULL,
    [Quantity]   NCHAR (20) NULL,
    [Status]     NCHAR (20) NULL,
    PRIMARY KEY CLUSTERED ([Product_ID] ASC)
);


CREATE TABLE [dbo].[Suppliers] (
    [Supplier_ID] INT        IDENTITY (1, 1) NOT NULL,
    [Name]        NCHAR (20) NULL,
    [Address]     NCHAR (25) NULL,
    [Account]     INT        NULL,
    PRIMARY KEY CLUSTERED ([Supplier_ID] ASC)
);
