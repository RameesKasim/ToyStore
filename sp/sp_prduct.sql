create procedure [dbo].[sp_prduct] @name varchar(50)='',@category varchar(20)='',@age varchar(20)='',@avail int=0,@image varchar(50)='',@flag  int=0,@d_id int=0,@price int=0
as
	if(@flag=0)
begin
    insert into product_tb (p_name,category,agelimit,price,availability,image,dealer_id) values(@name,@category,@age,@price,@avail,@image,@d_id);
end
	if(@flag=1)
begin
	select * from product_tb;
end
