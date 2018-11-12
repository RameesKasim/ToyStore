SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_dreg] @type varchar(10)='',@name varchar(30)='',@loc varchar(20)='',@email varchar(50)='',@phoneno numeric(10,0)=0,@password varchar(20)='',@image varchar(30)='',@flag  int=0
as
	if(@flag=0)
begin
	select * from dealer_tb where name=@name or email=@email or contact_info=@phoneno;   
end
if(@flag=1)
begin
	insert into dealer_tb (name,location,contact_info,email,image) values(@name,@loc,@phoneno,@email,@image);
	insert into login_tb values(@name,@password,'user');
end
if(@flag=2)
begin
	select * from login_tb where username=@name and password=@password and type=@type;
end
