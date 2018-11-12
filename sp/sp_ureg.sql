SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter procedure [dbo].[sp_reg] @type varchar(10)='',@fname varchar(20)='',@lname varchar(20)='',@email varchar(50)='',@phoneno numeric(10,0)=0,@username varchar(20)='',@password varchar(20)='',@image varchar(30)='',@flag  int=0
as
if(@flag=1)
begin
	insert into cust_reg_tb(firstname,lastname,username,contact_no,email,image) values(@fname,@lname,@username,@phoneno,@email,@image);
	insert into login_tb values(@username,@password,'user');
end
if(@flag=2)
begin
	select * from login_tb where username=@username and password=@password and type=@type;
end
if(@flag=3)
begin
	select * from cust_reg_tb where username=@username;   
end
if(@flag=4)
begin
	select * from cust_reg_tb where  email=@email;   
end
if(@flag=5)
begin
	select * from cust_reg_tb where contact_no=@phoneno;   
end