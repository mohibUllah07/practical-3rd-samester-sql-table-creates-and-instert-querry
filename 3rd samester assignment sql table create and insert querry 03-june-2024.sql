create database production;
 

 create table product(
 prodId int primary key identity(1,1),
 prodName varchar(200),
 prodDescription varchar(200),
 prodPrice int,
 prodQuentity int
 );

 insert into product(prodName,prodDescription,prodPrice,prodQuentity)
 values
 ('gammingchair','good product and very confirmtable cahir',25000,1),
  ('gammingHeadPhones','good product',15000,1),
   ('gammingPC','good product and very smooth PC ',95500,1);


 create table addcart(
  addcartId int primary key identity(1,1),
  prodId  int foreign key references product(prodId) ON delete cascade  
 );

 insert into addcart(prodId)
 values
 (3),
  (1),
   (2);


 create table orders(
 order_id int primary key identity(1,1),
 addcartId int foreign key references addcart(addcartId) ON delete cascade,
   prodId  int foreign key references product(prodId),
   quentity int,
   orderStatus varchar(200)
 );

  insert into orders(addcartId,prodId,quentity,orderStatus)
  values
  (1,3,1,'delivered'),
  (2,1,1,'cancle'),
  (3,2,1,'Processing');

 create table rating(
 ratingId int primary key identity(1,1),
 productRating decimal,
 prodId  int foreign key references product(prodId),
 );

 insert into rating(productRating,prodId)
 values
 (5.0,2),
 (4.0,1),
 (2.0,2);


 select * from  product;
 select * from  addcart;
 select * from  orders;
 select * from  rating;



