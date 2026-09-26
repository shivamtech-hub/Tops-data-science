-- Q1
select version();

-- Q2
create database Foodie_app;
use foodie_app;

-- Q3
CREATE TABLE restaurants (
    customer_id INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
   Items VARCHAR(50),
    restaurant_id VARCHAR (50),
    orders VARCHAR (50),
    rating DECIMAL(2,1),
    location VARCHAR(100),
    address VARCHAR(255),
    city VARCHAR(50),
    state VARCHAR(50),
    pincode VARCHAR(10)
   );
   
   INSERT INTO restaurants 
(customer_id, Name, Items, restaurant_id, orders, rating, location, address, city, state, pincode) 
VALUES
(1, 'Rahul Sharma', 'Paneer Tikka', 'REST001', 'ORD001', 4.5, 'Navrangpura', 'C G Road', 'Ahmedabad', 'Gujarat', '380009'),

(2, 'Amit Patel', 'Masala Dosa', 'REST002', 'ORD002', 4.2, 'Satellite', 'Jodhpur Cross Road', 'Ahmedabad', 'Gujarat', '380015'),

(3, 'Priya Shah', 'Veg Biryani', 'REST003', 'ORD003', 4.7, 'Vastrapur', 'IIM Road', 'Ahmedabad', 'Gujarat', '380015'),

(4, 'Neha Mehta', 'Margherita Pizza', 'REST004', 'ORD004', 4.1, 'Maninagar', 'Jawahar Chowk', 'Ahmedabad', 'Gujarat', '380008'),

(5, 'Karan Gupta', 'Butter Paneer', 'REST005', 'ORD005', 4.6, 'Bopal', 'Bopal Road', 'Ahmedabad', 'Gujarat', '380058'),

(6, 'Riya Patel', 'Hakka Noodles', 'REST006', 'ORD006', 4.3, 'Thaltej', 'S G Highway', 'Ahmedabad', 'Gujarat', '380054'),

(7, 'Vivek Joshi', 'Paneer Butter Masala', 'REST007', 'ORD007', 4.4, 'Chandkheda', 'New C G Road', 'Ahmedabad', 'Gujarat', '382424'),

(8, 'Anjali Desai', 'Idli Sambar', 'REST008', 'ORD008', 4.8, 'Ghatlodia', 'Sola Road', 'Ahmedabad', 'Gujarat', '380061'),

(9, 'Rohan Mehta', 'Veg Manchurian', 'REST009', 'ORD009', 4.0, 'Gota', 'Gota Road', 'Ahmedabad', 'Gujarat', '382481'),

(10, 'Rohit Kumar', 'Burger', 'REST010', 'ORD010', 4.3, 'Satellite', 'Main Road', 'Ahmedabad', 'Gujarat', '380015'),

(11, 'Pooja Shah', 'Pav Bhaji', 'REST011', 'ORD011', 4.5, 'Paldi', 'Paldi Road', 'Ahmedabad', 'Gujarat', '380007'),

(12, 'Akash Patel', 'Chole Bhature', 'REST012', 'ORD012', 4.2, 'Vasna', 'Vasna Road', 'Ahmedabad', 'Gujarat', '380007'),

(13, 'Sneha Joshi', 'Veg Sandwich', 'REST013', 'ORD013', 4.1, 'Ellis Bridge', 'Ashram Road', 'Ahmedabad', 'Gujarat', '380006'),

(14, 'Manish Shah', 'Chicken Biryani', 'REST014', 'ORD014', 4.6, 'Naranpura', 'Naranpura Road', 'Ahmedabad', 'Gujarat', '380013'),

(15, 'Kavita Patel', 'Dosa', 'REST015', 'ORD015', 4.4, 'Memnagar', 'University Road', 'Ahmedabad', 'Gujarat', '380052'),

(16, 'Suresh Mehta', 'Pani Puri', 'REST016', 'ORD016', 4.0, 'Isanpur', 'Isanpur Road', 'Ahmedabad', 'Gujarat', '382443'),

(17, 'Nisha Sharma', 'Fried Rice', 'REST017', 'ORD017', 4.3, 'Vejalpur', 'Vejalpur Road', 'Ahmedabad', 'Gujarat', '380051'),

(18, 'Arjun Patel', 'Dal Tadka', 'REST018', 'ORD018', 4.5, 'Ranip', 'Ranip Road', 'Ahmedabad', 'Gujarat', '382480'),

(19, 'Simran Kaur', 'Chilli Paneer', 'REST019', 'ORD019', 4.2, 'Naroda', 'Naroda Road', 'Ahmedabad', 'Gujarat', '382330'),

(20, 'Dev Kumar', 'Cheese Pizza', 'REST020', 'ORD020', 4.7, 'Odhav', 'Odhav Road', 'Ahmedabad', 'Gujarat', '382415'),

(21, 'Meena Joshi', 'Aloo Paratha', 'REST021', 'ORD021', 4.4, 'Wadaj', 'New Wadaj Road', 'Ahmedabad', 'Gujarat', '380013'),

(22, 'Raj Malhotra', 'Momos', 'REST022', 'ORD022', 4.1, 'Science City', 'Science City Road', 'Ahmedabad', 'Gujarat', '380060'),

(23, 'Divya Shah', 'Pasta', 'REST023', 'ORD023', 4.6, 'Bodakdev', 'Sindhu Bhavan Road', 'Ahmedabad', 'Gujarat', '380054'),

(24, 'Yash Patel', 'Gujarati Thali', 'REST024', 'ORD024', 4.8, 'Ashram Road', 'Ashram Road', 'Ahmedabad', 'Gujarat', '380009'),

(25, 'Komal Mehta', 'Spring Roll', 'REST025', 'ORD025', 4.0, 'Prahlad Nagar', 'Corporate Road', 'Ahmedabad', 'Gujarat', '380015'),

(26, 'Harsh Sharma', 'Veg Burger', 'REST026', 'ORD026', 4.3, 'Juhapura', 'Juhapura Road', 'Ahmedabad', 'Gujarat', '380055'),

(27, 'Ayesha Khan', 'Chicken Roll', 'REST027', 'ORD027', 4.5, 'Makarba', 'Makarba Road', 'Ahmedabad', 'Gujarat', '380051'),

(28, 'Nitin Patel', 'Rajma Chawal', 'REST028', 'ORD028', 4.2, 'Motera', 'Motera Stadium Road', 'Ahmedabad', 'Gujarat', '380005'),

(29, 'Isha Desai', 'Samosa', 'REST029', 'ORD029', 4.1, 'Sabarmati', 'Sabarmati Road', 'Ahmedabad', 'Gujarat', '380005'),

(30, 'Mohit Joshi', 'Pav Bhaji', 'REST030', 'ORD030', 4.6, 'Kankaria', 'Kankaria Road', 'Ahmedabad', 'Gujarat', '380022'),

(31, 'Tina Shah', 'Malai Kofta', 'REST031', 'ORD031', 4.4, 'Jodhpur', 'Jodhpur Road', 'Ahmedabad', 'Gujarat', '380015'),

(32, 'Varun Patel', 'Manchurian', 'REST032', 'ORD032', 4.0, 'Nikol', 'Nikol Road', 'Ahmedabad', 'Gujarat', '382350'),

(33, 'Shreya Mehta', 'Mysore Dosa', 'REST033', 'ORD033', 4.7, 'Vastral', 'Vastral Road', 'Ahmedabad', 'Gujarat', '382418'),

(34, 'Aditya Sharma', 'Tandoori Paneer', 'REST034', 'ORD034', 4.5, 'Sarkhej', 'Sarkhej Road', 'Ahmedabad', 'Gujarat', '382210'),

(35, 'Muskan Patel', 'Veg Pulao', 'REST035', 'ORD035', 4.2, 'Hatkeshwar', 'Hatkeshwar Road', 'Ahmedabad', 'Gujarat', '380026'),

(36, 'Vishal Gupta', 'Butter Naan', 'REST036', 'ORD036', 4.6, 'Amraiwadi', 'Amraiwadi Road', 'Ahmedabad', 'Gujarat', '380026'),

(37, 'Payal Shah', 'French Fries', 'REST037', 'ORD037', 4.3, 'Law Garden', 'Law Garden Road', 'Ahmedabad', 'Gujarat', '380006'),

(38, 'Kunal Mehta', 'Cheese Sandwich', 'REST038', 'ORD038', 4.1, 'C G Road', 'C G Road', 'Ahmedabad', 'Gujarat', '380009'),

(39, 'Jignesh Patel', 'Punjabi Thali', 'REST039', 'ORD039', 4.8, 'Gurukul', 'Gurukul Road', 'Ahmedabad', 'Gujarat', '380052'),

(40, 'Bhavna Joshi', 'Veg Noodles', 'REST040', 'ORD040', 4.4, 'Shahibaug', 'Shahibaug Road', 'Ahmedabad', 'Gujarat', '380004'),

(41, 'Deepak Shah', 'Kathi Roll', 'REST041', 'ORD041', 4.2, 'Bapunagar', 'Bapunagar Road', 'Ahmedabad', 'Gujarat', '380024'),

(42, 'Pallavi Patel', 'Dahi Puri', 'REST042', 'ORD042', 4.5, 'Gheekanta', 'Gheekanta Road', 'Ahmedabad', 'Gujarat', '380001'),

(43, 'Sameer Khan', 'Chicken Tikka', 'REST043', 'ORD043', 4.7, 'Jamalpur', 'Jamalpur Road', 'Ahmedabad', 'Gujarat', '380001'),

(44, 'Rashmi Mehta', 'Veg Kolhapuri', 'REST044', 'ORD044', 4.3, 'Ambawadi', 'Ambawadi Road', 'Ahmedabad', 'Gujarat', '380015'),

(45, 'Tarun Joshi', 'Cheese Burst Pizza', 'REST045', 'ORD045', 4.6, 'Thaltej', 'Thaltej Road', 'Ahmedabad', 'Gujarat', '380054'),

(46, 'Kriti Sharma', 'Hara Bhara Kabab', 'REST046', 'ORD046', 4.4, 'Bodakdev', 'Bodakdev Road', 'Ahmedabad', 'Gujarat', '380054'),

(47, 'Sanjay Patel', 'Pav Sandwich', 'REST047', 'ORD047', 4.1, 'Chandlodia', 'Chandlodia Road', 'Ahmedabad', 'Gujarat', '382481'),

(48, 'Mansi Shah', 'Veg Frankie', 'REST048', 'ORD048', 4.5, 'Gota', 'Gota Road', 'Ahmedabad', 'Gujarat', '382481'),

(49, 'Abhishek Mehta', 'Mango Lassi', 'REST049', 'ORD049', 4.3, 'Bopal', 'Bopal Road', 'Ahmedabad', 'Gujarat', '380058'),

(50, 'Jyoti Patel', 'Gulab Jamun', 'REST050', 'ORD050', 4.8, 'Navrangpura', 'Navrangpura Road', 'Ahmedabad', 'Gujarat', '380009');
  
select * from restaurants;

desc restaurants

-- Q4
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone_number VARCHAR(15) NOT NULL UNIQUE,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (username, email, phone_number)
VALUES
('rahul_sharma', 'rahul.sharma@gmail.com', '9876500001'),
('amit_patel', 'amit.patel@gmail.com', '9876500002'),
('priya_shah', 'priya.shah@gmail.com', '9876500003'),
('rohit_kumar', 'rohit.kumar@gmail.com', '9876500004'),
('neha_mehta', 'neha.mehta@gmail.com', '9876500005'),
('karan_gupta', 'karan.gupta@gmail.com', '9876500006'),
('pooja_patel', 'pooja.patel@gmail.com', '9876500007'),
('vivek_joshi', 'vivek.joshi@gmail.com', '9876500008'),
('anjali_desai', 'anjali.desai@gmail.com', '9876500009'),
('sahil_shah', 'sahil.shah@gmail.com', '9876500010'),

('riya_patel', 'riya.patel@gmail.com', '9876500011'),
('harsh_mehta', 'harsh.mehta@gmail.com', '9876500012'),
('kavita_shah', 'kavita.shah@gmail.com', '9876500013'),
('manish_patel', 'manish.patel@gmail.com', '9876500014'),
('sneha_joshi', 'sneha.joshi@gmail.com', '9876500015'),
('yash_desai', 'yash.desai@gmail.com', '9876500016'),
('komal_patel', 'komal.patel@gmail.com', '9876500017'),
('akshay_sharma', 'akshay.sharma@gmail.com', '9876500018'),
('meera_shah', 'meera.shah@gmail.com', '9876500019'),
('dhruv_mehta', 'dhruv.mehta@gmail.com', '9876500020'),

('nisha_patel', 'nisha.patel@gmail.com', '9876500021'),
('raj_malhotra', 'raj.malhotra@gmail.com', '9876500022'),
('simran_kaur', 'simran.kaur@gmail.com', '9876500023'),
('mohit_sharma', 'mohit.sharma@gmail.com', '9876500024'),
('tina_patel', 'tina.patel@gmail.com', '9876500025'),
('jatin_joshi', 'jatin.joshi@gmail.com', '9876500026'),
('bhavna_shah', 'bhavna.shah@gmail.com', '9876500027'),
('nitin_patel', 'nitin.patel@gmail.com', '9876500028'),
('payal_mehta', 'payal.mehta@gmail.com', '9876500029'),
('arjun_verma', 'arjun.verma@gmail.com', '9876500030'),

('sonia_gupta', 'sonia.gupta@gmail.com', '9876500031'),
('varun_singh', 'varun.singh@gmail.com', '9876500032'),
('isha_jain', 'isha.jain@gmail.com', '9876500033'),
('ravi_kumar', 'ravi.kumar@gmail.com', '9876500034'),
('ayesha_khan', 'ayesha.khan@gmail.com', '9876500035'),
('deepak_sharma', 'deepak.sharma@gmail.com', '9876500036'),
('nandini_mehta', 'nandini.mehta@gmail.com', '9876500037'),
('suresh_patel', 'suresh.patel@gmail.com', '9876500038'),
('kajal_shah', 'kajal.shah@gmail.com', '9876500039'),
('vikas_gupta', 'vikas.gupta@gmail.com', '9876500040'),

('anu_sharma', 'anu.sharma@gmail.com', '9876500041'),
('manav_jain', 'manav.jain@gmail.com', '9876500042'),
('ritika_singh', 'ritika.singh@gmail.com', '9876500043'),
('gaurav_kumar', 'gaurav.kumar@gmail.com', '9876500044'),
('shreya_gupta', 'shreya.gupta@gmail.com', '9876500045'),
('abhishek_verma', 'abhishek.verma@gmail.com', '9876500046'),
('tanvi_sharma', 'tanvi.sharma@gmail.com', '9876500047'),
('sakshi_jain', 'sakshi.jain@gmail.com', '9876500048'),
('nikhil_patel', 'nikhil.patel@gmail.com', '9876500049'),
('muskan_shah', 'muskan.shah@gmail.com', '9876500050');

desc users;

select * from users;
select count(*) from users;
-- Q5 Wrong
CREATE TABLE test_users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50)
    email VARCHAR(100),
    phone_number VARCHAR(15),
    created_at DATETIME
);
-- Q5 Correct
CREATE TABLE test_users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(15),
    created_at DATETIME
);





