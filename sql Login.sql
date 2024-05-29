Alter Procedure LoginUser_P
@Id nvarchar(50),
@UserName nvarchar(50),
@Password nvarchar(50)
as 
begin 
Select * from [dbo].[LoginUser] where Username=@UserName and Password=@Password
insert into [dbo].[Login_log] (UserId,LoginDate,LoginTime) values(@UserName,GETDATE() )
End
