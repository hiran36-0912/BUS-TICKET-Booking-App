🚌 Bus Ticket Booking System

A simple Bus Ticket Booking System built using Java and MySQL. This project allows users to search buses, book tickets, and manage reservations through an easy-to-use interface, while admins can manage buses and bookings efficiently.

📌 Features
👤 User
User Registration & Login
Search available buses
View bus details
Seat selection
Book tickets
View booked tickets
🛠️ Admin
Admin login
Add new buses
Update bus details
Delete buses
Manage users
View all bookings
🛠️ Tech Stack
Frontend
Java Swing (GUI)
Backend
Java
JDBC
Database
MySQL
📂 Project Structure
BUS TICKET
│
├── src/com/adubus/
│   ├── dao/          # Database operations
│   ├── db/           # DB connection setup
│   ├── model/        # User, Bus models
│   ├── ui/           # UI components
│   │   ├── admin/
│   │   ├── auth/
│   │   ├── panels/
│   │   └── components/
│
├── mysql-connector   # MySQL JDBC driver
│
└── README.md
⚙️ Prerequisites

Make sure you have:

Java (JDK 8 or above)
MySQL Server
MySQL Workbench / XAMPP (optional)
Any IDE (IntelliJ / Eclipse / NetBeans)
Git
🚀 How to Run the Project
1️⃣ Clone the Repository
git clone <repository-url>
cd bus-ticket-booking
2️⃣ Setup Database
Create a MySQL database
Update credentials in DBConnection.java

Example:

String url = "jdbc:mysql://localhost:3306/your_db";
String user = "root";
String password = "your_password";
3️⃣ Run the Application
Open project in IDE
Run:
ADUFrame.java
👥 Team Collaboration
GitHub is used for version control
Each member can work on different modules
Avoid pushing unnecessary files
Follow proper commit messages
📌 Notes
Do not upload node_modules (if any) or unnecessary files
Ensure MySQL server is running before starting
Update database credentials properly
🚀 Future Improvements
Online payment integration
Email/SMS ticket confirmation
Real-time seat availability
Mobile-friendly version
📄 License

This project is developed for academic purposes.

✨ Acknowledgements

Thanks to all contributors who worked on this project and helped in its development.
