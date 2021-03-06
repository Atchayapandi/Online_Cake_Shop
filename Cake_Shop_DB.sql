---USER DETAILS TABLE---
create table user_details( user_id int generated by default as identity (start with 100 increment by 1) primary key,
                           user_name varchar2(20) not null
                          ,email_id varchar2(90)unique not null,
                          password varchar2(20)not null,
                          address varchar2(200)not null);                     



alter table user_details add  user_wallet number  default '50000';
update  user_details set user_wallet=0 where user_id=105;
update user_details set user_wallet=0
alter table user_details add Role varchar2(20) default 'user';
insert into user_details (user_name,email_id,password,address,role) values ('Atchaya','atchaya10@gmail.com','atchayapandi','Madurai','Admin');
update user_details set user_wallet = (user_wallet+10000) where user_name = 'priya';

update user_details set user_wallet=500 where user_name='priya';

select user_wallet from user_details  where user_id = 191;

update product_details set picture='https://cdn.shopify.com/s/files/1/0017/5646/3165/articles/Fresh_Fruit_Cream_Cake_for_Summer_Boone_Bake_2048x.PNG?v=1591153589'
where cake_id=114;



---Table 2: Help and Support

create table help_support (phone number(15),Email varchar2(100));
insert into help_support values(8610970796,'atchaya10@gmail.com');

update help_support set  Email='atchaya1011@gmail.com' where phone=9600939198;

select*from help_support;
---PRODUCT DETAILS TABLE---
create table product_details(cake_id int default P_ID.nextval primary key ,
                      cake_name varchar2(30)not null,
                      cake_description varchar2(100)not null,
                      cake_price int not null,
                      category_name varchar2(20)not null,
                      picture varchar2(200) not null,
                      rating number(5,2) default 5,
                      rating_count number default 0); 
                      
       cake_name,cake_description,cake_price,category_name,picture               
           
   commit;
                      
create sequence P_ID increment by 1 start with 111;  
update product_details set rating_count default 1;

alter table product_details modify rating_count default 1;

insert into product_details (cake_name,cake_description,cake_price,category_name,picture) values ('Truffle Cake' ,'made with a chocolate ganache centre coated in chocolate',1025,'butter');
insert into product_details (cake_name,cake_description,cake_price,category_name,picture) values ('Butterscotch Cake','The cake layers are made with brown sugar which is the primary ingredient of butterscotch',1030,'chocolate');
insert into product_details (cake_name,cake_description,cake_price,category_name,picture) values ('Black Forest Cake','chocolate sponge cake, cherries, and whipped cream',1050,'Biscuit');
insert into product_details (cake_name,cake_description,cake_price,category_name,picture) values ('Fresh Fruit Cake','cake made with chopped candied fruit and/or dried fruit, nuts, and spices',1900,'Baked Flourless Cake');
insert into product_details (cake_name,cake_description,cake_price,category_name,picture) values ('Pinapple Cake','scratch with crushed pineapple and topped',1500,'Sponge Cake');
insert into product_details (cake_name,cake_description,cake_price,category_name,picture) values ('Caramel Cake','Salted Caramel',1700,'Genoise Cake');
insert into product_details (cake_name,cake_description,cake_price,category_name,picture) values('Strawberry Cake',' scone that is split and filled with strawberries and sweetened whipped cream',2000,'pound cake');
insert into product_details (cake_name,cake_description,cake_price,category_name,picture) values('Oreo Cake',' caramel flavour filling and coloured sprinkles',1300,'Sponge Cake');
insert into product_details (cake_name,cake_description,cake_price,category_name,picture) values('Blueberry','butter and dust with flour and line the bottom with parchment paper',1400,'butter');
insert into product_details (cake_name,cake_description,cake_price,category_name,picture) values('White Forest','white cake with vanilla extract in the mixture',1200,'Biscuit');

commit;

update product_details set picture='https://i1.fnp.com/images/pr/l/v20200707215237/pink-strawberry-cream-cake-1-kg_1.jpg' where cake_id=117;

select*from product_details;

---ORDER DETAILS TABLE---
create table cart_items(cart_id int generated BY DEFAULT AS IDENTITY (START WITH 200 INCREMENT BY 1)primary key,
                       cake_id int, 
                      user_id int,                       
                     order_quantity int not null,                    
                     total_price number(10,2) not null,
                     order_date Date not null,
                     foreign  key (cake_id) references product_details(cake_id) , 
                     foreign key (user_id) references user_details(user_id));
     
       
create table customized_details(custcake_id int generated BY DEFAULT AS IDENTITY (START WITH 500 INCREMENT BY 1)primary key,
                                 User_id int,                                
                                 flavour varchar2(100),
                                 types varchar2(100),
                                 shape varchar2(100),
                                 quantity int,
                                 Order_date Date,     
                                 Initial_amount int default 1000,
                                 foreign key (user_id) references user_details(user_id));       
                                 commit;
                                 update product_details set rating_count=1;
                                          
select*from help_support;
select * from cart_items; 
select * from product_details;

select * from user_details;
select*from customized_details;

delete from customized_details;

update user_details set role ='Inactive' where Email_id=?;


update  user_details set user_wallet=700 where user_id=190; 

select * from  cart_items where order_date between '07-01-2022' and '07-01-2022';
       
commit;           

select * from cart_items order by order_date desc;  

select Email_id,cake_name,order_quantity,Total_price,Order_date from cart_items 
inner join user_details using (user_id) 
inner join product_details using(cake_id)
where user_id=190 order by order_date desc;

select Email_id,quantity,Order_date,flavour,types,shape,(quantity*initial_amount)as total_price from customized_details 
inner join user_details using (user_id)
where user_id=190 order by order_date desc;

select * from cart_items where user_id=203;
create table invoice ;




commit;


alter table customized_details add quantity int;
update product_details set rating =5 where rating=14;
select * from customized_details;
commit;
select Email_id,cake_name,order_quantity,Total_price,Order_date from cart_items 
inner join user_details using (user_id) 
inner join product_details using(cake_id) where user_id=180;
select * from product_details;
desc product_details;
alter table product_details add rating number(5,2) default 5;

select count(user_id),sum(total_price),sum(order_quantity) from cart_items where order_date between '16-01-2022' and '22-01-2022';

update user_details set user_wallet=(user_wallet+(select Total_price from cart_items where cart_id=340)) where user_name='abinaya';

select count(user_id),sum(total_price) from cart_items where order_date between '16-01-2022' and '22-01-2022';

select cake_name,rating,rating_count from product_details order by rating desc;




