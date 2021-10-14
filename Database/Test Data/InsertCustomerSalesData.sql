INSERT INTO [dbo].[Customer]
VALUES 
(100000,'Mike','Smith','701 Dovetail Rd','Grimes','IA','50111','515-258-9688','mikesmith@yahoo.com' ,'2021-01-01' ,NULL),
(100001,'Cathy','Jones','Canteen Dr.','Greeley','CO','80526','970-258-9678','1999@yahoo.com' ,'2021-10-12' ,NULL),
(100002,'Ricardo','Suez','Hollow Road','Houston','TX','85623','845-258-9688','yogurt@yahoo.com' ,'1995-12-01' ,NULL),
(100003,'Cam','Tate','Dunbar Ave','Fort Collins','CO','80526','456-258-9999','yama@yahoo.com' ,'2021-03-12' ,NULL),
(100004,'Saul','Good','Martinez Rd','San Francisco','CA','91111','489-478-2222','california@yahoo.com' ,'2021-04-17' ,NULL),
(100005,'George','Kataloupe','611 Main St','Aurelia','IA','51005','712-434-5915','farmguy@yahoo.com' ,'2021-06-03',NULL),
(100006,'Sarah','Smitthers','62859 Hillside Rd','Grimes','IA','50111','515-258-9688','candyshop@yahoo.com' ,'2021-04-01' ,NULL),
(100007,'Carl','Tides','14921 Summit Dr','Clive','IA','50325','515-309-1699','clive@yahoo.com' ,'2021-01-15' ,NULL),
(100008,'Larry','Notes','Carma Way Rd','Chicago','IL','62536','955-255-9688','bulls@yahoo.com' , '2021-09-15',NULL),
(100009,'Todd','Katawitz','1659 Peach Dr','Springfield','IL','62536','999-255-9688','game@yahoo.com' , '2020-09-15',NULL)

INSERT INTO [dbo].[Sales]
VALUES 
(1000,100000, 45.56, '2021-09-01'),
(1001,100001, 45.56, '2021-10-12'),
(1002,100002, 125.26, '2021-04-01'),
(1003,100003, 252.53, '2021-07-04'),
(1004,100004, 55.68, '2021-09-01'),
(1011,100004, 35.68, '2021-09-02'),
(1012,100004, 45.38, '2021-09-03'),
(1005,100005, 10.52, '2021-03-01'),
(1006,100006, 5.55, '2021-02-01'),
(1007,100007, 300.56, '2021-09-21'),
(1008,100008, 38.56, '2021-09-22'),
(1009,100009, 38.56, '2021-01-22'),
(1010,100009, 50.01, '2021-09-30')
