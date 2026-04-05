🚌 Bus Ticket Booking System

This is a simple Bus Ticket Booking System built using Java. The project is designed to make ticket booking easier for users while also giving admins control over managing buses and bookings.

It has a clean interface where users can search for buses, select seats, and book tickets. At the same time, admins can add or manage bus details and keep track of reservations.

✨ What this project does
👤 For Users
Create an account and log in
Search available buses
View details of buses
Select seats easily
Book tickets
Check booked tickets
🛠️ For Admin
Login as admin
Add new buses
Update or delete bus details
Manage users
View all bookings
🏗️ How the project is organized
BUS TICKET/

src/com/adubus/
 ├── dao/        → Handles database operations
 ├── db/         → Database connection setup
 ├── model/      → Classes like User, Bus
 ├── ui/         → User Interface (Swing)
     ├── admin/
     ├── auth/
     ├── panels/
     └── components/

mysql-connector → MySQL driver
💻 Technologies used
Java (Swing) – for building the UI
MySQL – for storing data
JDBC – for connecting Java with database
⚙️ How to run this project

Clone the repository

git clone https://github.com/your-username/bus-ticket-booking.git
Open in any Java IDE
(IntelliJ / Eclipse / NetBeans)

Set up the database

Create a MySQL database
Update your username & password in DBConnection.java

Example:

String url = "jdbc:mysql://localhost:3306/your_db";
String user = "root";
String password = "your_password";
Run the project
Run ADUFrame.java
🚀 Future improvements
Add online payment system
Send ticket confirmation via email/SMS
Show real-time seat availability
Build a mobile app version
🤝 Contribution

If you want to improve this project, feel free to fork it and make changes. Suggestions are always welcome.

📄 Note

This project is mainly created for learning and academic purposes.
