## Automate Docker builds using Jenkins Pipelines | Dockerize Python App | Upload Images into AWS ECR
-Pre-requistes:
1. Jenkins is up and running
2. Docker installed on Jenkins instance. Click here to for integrating Docker and Jenkins
3. Docker and Docker pipelines plug-in are installed
4. Repo created in ECR, Click here to know how to do that.
5. Make sure port 8096 is opened up in firewall rules. 
6. Create an IAM role with AmazonEC2ContainerRegistryFullAccess policy, attach to Jenkins EC2 instance
7. Make sure AWS cli is installed in Jenkins instance.

Refer this website (Git->Maven->Docker->ECR->EKS): https://www.coachdevops.com/2022/01/deploy-springboot-microservices-app_11.html
Refer this website: https://www.cidevops.com/2020/07/automate-docker-builds-using-jenkins.html

# TrainBooking Website
- Youtube video for local setup of similar project: https://www.youtube.com/watch?v=mLFPodZO8Iw&t=8s
- Live Url: https://traintickets.herokuapp.com <br>
- Login Credentials: admin/admin

### About:
This project is about the Train-Ticket-Reservation-System which is used to view Train Schedule, search trains, Seat availability, Train timings. We can also enquire about fare of different trains. We can get information about train between two stations. We can book seats online. This provides a safe and secure seat reservation system. 
### Online Train Information and Reservation
<span style="color:blue">**This Website is built for following purpose:-**</span>
- View Trains Schedule
- Search Trains
- Seat Availability
- Train Timings
- Fare Enquiry
- Trains Between Stations
- Booking seats online.
- Login and Logout Security

<span style="color:blue">**The Admin have the following access to this website:-**</span>
- Login
- Add Trains
- Update Trains
- Remove  or cancle Trains
- View Trains
- Profile Edit
- Logout

<span style="color:blue">**The Users have the following Access:-**</span>
- Register
- Login
- View Trains
- Check Seat Availability
- Search Trains
- Train Avaiablity and Fare Between Stations
- Books Tickets
- View Profile
- Update Profile
- Change Password
- Logout

### Technologies used:-
1. Front-End Development:
- Html
- Css
- Javascript

2. Back-End Development
- Java
- JDBC
- Servlet
- Oracle ( SQL )

### ==== Software And Tools Required ======
- : Oracle SQL
- : Eclipse EE
- : Java JDK 8+
- : Tomcat v8.0
- 
### ========== Dummy Database Initialization ===========

STEP 1: Open Oracle Sql Command Line

STEP 2: Login to administrator User as: ```connect <username>/<password>```

STEP 3 :Copy paste the following SQL Query:

```SQL
create user reservation identified by manager;

grant dba to reservation;

commit;

connect reservation/manager;

create table admin6(uname varchar2(40) primary key,name varchar2(40),
	pword varchar2(50),mail_id varchar2(60),phone_no varchar2(12));
	
create table train6(tr_no number(10) primary key,tr_name varchar2(70),
	from_stn varchar2(20),to_stn varchar2(20),available number(5),fare number(5));

create table register(uname varchar2(40) primary key,pword varchar2(50),
	fname varchar2(40),lname varchar2(40),
	addr varchar2(100), phno varchar2(12), mailid varchar2(60));

insert into admin6 values('admin','admin','admin','admin@train.com','9874561230');
insert into admin6 values('shashi','shashi','admin','shashi@train.com','98323561230');
insert into train6 values(10101,'Jodhpur Exp','Howrah','Jodhpur',152,450);
insert into train6 values(10102,'Mumbai Mail','Gaya','Mumbai',182,650);
insert into register values('shashi','shashi','Shashi','Raj','Tekari, Gaya, Bihar',954745222,'shashiraj.972@gmail.com');

commit;
```


### The Screenshots of some of the  webPages of this project are Here:

1. Login Page
<img src="https://github.com/shashirajraja/Train-Ticket-Reservation-System/blob/master/Screenshots/login.png" width="100%">


2. Register New User
<img src="https://github.com/shashirajraja/Train-Ticket-Reservation-System/blob/master/Screenshots/registeruser.png" width="100%">


3. View Profile
<img src="https://github.com/shashirajraja/Train-Ticket-Reservation-System/blob/master/Screenshots/viewprofile.png" width="100%">


4. View and Book Trains
<img src="https://github.com/shashirajraja/Train-Ticket-Reservation-System/blob/master/Screenshots/Search.png" width="100%">


5. Add Trains By Admin
<img src="https://github.com/shashirajraja/Train-Ticket-Reservation-System/blob/master/Screenshots/addtrains.png" width="100%">


6. Change Password
<img src="https://github.com/shashirajraja/Train-Ticket-Reservation-System/blob/master/Screenshots/passwordchange.png" width="100%">

7. Train Fare Enquiry
<img src="https://github.com/shashirajraja/Train-Ticket-Reservation-System/blob/master/Screenshots/fareenquiry.png" width="100%">

8. Train Details
<img src="https://github.com/shashirajraja/Train-Ticket-Reservation-System/blob/master/Screenshots/Availability.png" width= "100%">


9. User Home
<img src="https://github.com/shashirajraja/Train-Ticket-Reservation-System/blob/master/Screenshots/userhome.png" width="100%">


10. Book Trains Now
<img src="https://github.com/shashirajraja/Train-Ticket-Reservation-System/blob/master/Screenshots/booknow.png" width="100%">

11. Train Ticket Book
<img src="https://github.com/shashirajraja/Train-Ticket-Reservation-System/blob/master/Screenshots/TicketBook.png" width="100%">


