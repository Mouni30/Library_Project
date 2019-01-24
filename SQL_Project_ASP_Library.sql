create database Project_ASP_Library

use Project_ASP_Library

--Student Table

create table tbl_Student
(
StudentEmailID varchar(100) primary key,
StudentName varchar(100) not null,
StudentPassword varchar(100) not null,
StudentContactNo varchar(15) not null,
StudentGender varchar(100) not null,
StudentImage varchar(100) not null
)

--Book Table

create table tbl_Book
(
BookID int identity(1000,1) primary key,
BookTitle varchar(100) not null,
BookAuthorName varchar(100) not null,
BookPages int not null,
BookCategory varchar(100) not null,
BookImage varchar(100) not null
)


--Admin Table

create table tbl_Admin
(
AdminID int identity(100,1) primary key,
AdminName varchar(100) not null,
AdminEmailId varchar(100) not null,
AdminPassword varchar(100) not null,
AdminContactNo varchar(15) not null
)

--Issue Book Table

create table tbl_IssueBook
(
IssueID int identity(10,1) primary key,
BookID int foreign key references tbl_Book(BookID),
StudentEmailID varchar(100) foreign key references tbl_Student(StudentEmailID),
IssueDate datetime not null,
IssueStatus varchar(100) not null
)

--Login Procedure

create proc proc_Login
(@id varchar(100),@password varchar(100))
as
begin
declare @count int
select @count=count(*) from tbl_Student
where StudentEmailID=@id and StudentPassword=@password
return @count
end

--Add Student Procedure

alter proc proc_AddStudent
(@emailid varchar(100),@name varchar(100),@password varchar(100),@contactno varchar(100),
@gender varchar(100),@image varchar(100))
as
begin
declare @count int
select @count=count(*) from tbl_Student where StudentEmailID=@emailid
if(@count=0)
begin
insert tbl_Student values(@emailid,@name,@password,@contactno,@gender,@image)
end
return @@rowcount
end


--Student Search Procedure

create proc proc_searchstudent
(@key varchar(100))
as
begin 
select * from tbl_Student where StudentEmailID like '%'+@key+'%' or
								StudentName like '%'+@key+'%' or
								StudentPassword like '%'+@key+'%' or
								StudentContactNo like '%'+@key+'%' or
								StudentGender like '%'+@key+'%' or
								StudentImage like '%'+@key+'%' 
end

select @@rowcount

--Add Book Procedure

create proc proc_AddBook
(@title varchar(100),@author varchar(100),@pages int,@category varchar(100),
@image varchar(100))
as
begin
insert tbl_Book values(@title,@author,@pages,@category,@image)
return @@identity
end

--Book Search Procedure

create proc proc_searchbook
(@key varchar(100))
as
begin 
select * from tbl_Book where BookID like '%'+@key+'%' or 
							 BookTitle like '%'+@key+'%' or
							 BookAuthorName like '%'+@key+'%' or
							 BookPages like '%'+@key+'%' or
						     BookCategory like '%'+@key+'%' or
							 BookImage like '%'+@key+'%'
end

--Find Book Procedure

create proc proc_FindBook
(@id int)
as
begin
select * from tbl_Book where BookID=@id
end


--Issue Book Procedure

create proc proc_IssueBook
(@bid int,@sid int)
as
begin
insert tbl_IssueBook values(@bid,@sid,getdate(),'Issued')
return @@identity
end


--Show Book Procedure

create proc proc_ShowBook
(@Sid int)
as
begin
Select * from tbl_Book where bookid in
(Select bookid from tbl_IssueBook where StudentEmailID=@Sid)
end


select * from tbl_Student

select * from tbl_Book


--Update Book Procedure

create proc proc_update
(@id int,@title int,@authorname varchar(100),@pages varchar(100),@category varchar(100))
as
begin
update tbl_Book set BookTitle=@title , BookAuthorName=@authorname , BookPages=@pages , 
BookCategory=@category where BookID=@id
return @@rowcount
end






























