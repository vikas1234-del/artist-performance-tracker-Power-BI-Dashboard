create database SQLProject;
use SQLProject;

CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100) NOT NULL
);
CREATE TABLE Artists (
    ArtistID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    CategoryID INT,
    Email VARCHAR(100) UNIQUE,
    Country VARCHAR(100),
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    City VARCHAR(100),
    MobileNumber varchar(20)
);
CREATE TABLE Artworks (
    ArtworkID INT PRIMARY KEY,
    ArtistID INT,
    Title VARCHAR(150) NOT NULL,
    Price DECIMAL(10,2),
    CreatedDate DATE,
    FOREIGN KEY (ArtistID) REFERENCES Artists(ArtistID)
);

CREATE TABLE Purchase (
    PurchaseID INT PRIMARY KEY,
    ArtistID INT,
    CustomerID INT,
    Purchase_Amount DECIMAL(10,2),
    Purchase_Date DATE,
    FOREIGN KEY (ArtistID) REFERENCES Artists(ArtistID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Categories (CategoryID, CategoryName) VALUES
(1, 'Artist'),
(2, 'Dancer'),
(3, 'Writer'),
(4, 'Poet'),
(5, 'Singer'),
(6, 'Actor'),
(7, 'Speaker'),
(8, 'Photographer'),
(9, 'Sculptor'),
(10, 'Painter');

INSERT INTO Artists (ArtistID, Name, CategoryID, Email, Country) VALUES
(1, 'Aarav Mehta', 3, 'aarav.mehta@example.com', 'India'),
(2, 'Lina Roy', 7, 'lina.roy@example.com', 'India'),
(3, 'Rishi Patel', 1, 'rishi.patel@example.com', 'India'),
(4, 'Neha Sharma', 10, 'neha.sharma@example.com', 'India'),
(5, 'Kabir Das', 5, 'kabir.das@example.com', 'India'),
(6, 'Ayesha Khan', 4, 'ayesha.khan@example.com', 'India'),
(7, 'Rahul Joshi', 9, 'rahul.joshi@example.com', 'India'),
(8, 'Meera Sen', 2, 'meera.sen@example.com', 'India'),
(9, 'Dev Verma', 6, 'dev.verma@example.com', 'India'),
(10, 'Isha Kulkarni', 1, 'isha.kulkarni@example.com', 'India'),
(11, 'Tanya Chawla', 8, 'tanya.chawla@example.com', 'India'),
(12, 'Manav Thakur', 3, 'manav.thakur@example.com', 'India'),
(13, 'Simran Jain', 5, 'simran.jain@example.com', 'India'),
(14, 'Ravi Shetty', 2, 'ravi.shetty@example.com', 'India'),
(15, 'Nisha Menon', 6, 'nisha.menon@example.com', 'India'),
(16, 'Arjun Rao', 10, 'arjun.rao@example.com', 'India'),
(17, 'Fatima Shaikh', 7, 'fatima.shaikh@example.com', 'India'),
(18, 'Yashwant Jadhav', 8, 'yash.jadhav@example.com', 'India'),
(19, 'Sana D’Souza', 4, 'sana.dsouza@example.com', 'India'),
(20, 'Ritika Bhatt', 1, 'ritika.bhatt@example.com', 'India'),
(21, 'Zoya Khan', 9, 'zoya.khan@example.com', 'India'),
(22, 'Ibrahim Ali', 2, 'ibrahim.ali@example.com', 'India'),
(23, 'Pankaj Bansal', 6, 'pankaj.bansal@example.com', 'India'),
(24, 'Trisha Roy', 3, 'trisha.roy@example.com', 'India'),
(25, 'Aditya Sharma', 5, 'aditya.sharma@example.com', 'India');

INSERT INTO Customers (CustomerID, Name, Email, City, MobileNumber) VALUES
(1, 'Rohit Sharma', 'rohit.sharma@example.com', 'Mumbai', '9876543210'),
(2, 'Sneha Patel', 'sneha.patel@example.com', 'Ahmedabad', '9123456780'),
(3, 'Arjun Reddy', 'arjun.reddy@example.com', 'Hyderabad', '9988776655'),
(4, 'Pooja Mehra', 'pooja.mehra@example.com', 'Delhi', '9345678901'),
(5, 'Karan Kapoor', 'karan.kapoor@example.com', 'Chandigarh', '9001122334'),
(6, 'Ananya Singh', 'ananya.singh@example.com', 'Lucknow', '9785643210'),
(7, 'Nikhil Verma', 'nikhil.verma@example.com', 'Bhopal', '9898989898'),
(8, 'Divya Joshi', 'divya.joshi@example.com', 'Jaipur', '9765432189'),
(9, 'Ravi Kumar', 'ravi.kumar@example.com', 'Chennai', '9321654789'),
(10, 'Priya Desai', 'priya.desai@example.com', 'Pune', '9998887776'),
(11, 'Saurabh Nair', 'saurabh.nair@example.com', 'Kochi', '9445566778'),
(12, 'Meenal Shah', 'meenal.shah@example.com', 'Vadodara', '9340083412'),
(13, 'Yusuf Khan', 'yusuf.khan@example.com', 'Nagpur', '9364527890'),
(14, 'Ritika Jain', 'ritika.jain@example.com', 'Indore', '9988776611'),
(15, 'Gaurav Chawla', 'gaurav.chawla@example.com', 'Kanpur', '9223344556'),
(16, 'Sana Sheikh', 'sana.sheikh@example.com', 'Patna', '9365478932'),
(17, 'Abhay Tiwari', 'abhay.tiwari@example.com', 'Ranchi', '9311254312'),
(18, 'Tanya Malhotra', 'tanya.malhotra@example.com', 'Gurgaon', '9354455671'),
(19, 'Farhan Shaikh', 'farhan.shaikh@example.com', 'Surat', '9090909090'),
(20, 'Neelam Bhosale', 'neelam.bhosale@example.com', 'Nashik', '9376543212'),
(21, 'Ajay Rana', 'ajay.rana@example.com', 'Shimla', '9347896543'),
(22, 'Kriti Sinha', 'kriti.sinha@example.com', 'Noida', '9234567123'),
(23, 'Vikram Roy', 'vikram.roy@example.com', 'Kolkata', '9876012345'),
(24, 'Lavanya Reddy', 'lavanya.reddy@example.com', 'Vijayawada', '9312784596'),
(25, 'Himanshu Bhat', 'himanshu.bhat@example.com', 'Dehradun', '9887654321');

INSERT INTO Artworks (ArtworkID, ArtistID, Title, Price, CreatedDate) VALUES
(1, 5, 'Brush of Emotion', 299.99, '2023-01-12'),
(2, 17, 'Melody & Motion', 259.50, '2023-02-08'),
(3, 3, 'Silent Sketches', 199.00, '2023-02-22'),
(4, 12, 'Spoken Rhythm', 189.75, '2023-03-15'),
(5, 9, 'Frame of Freedom', 275.00, '2023-03-29'),
(6, 21, 'Colors Collide', 245.99, '2023-04-10'),
(7, 2, 'Light and Lyrics', 225.50, '2023-04-20'),
(8, 8, 'Footprints of Art', 310.00, '2023-05-01'),
(9, 14, 'Modern Muse', 295.80, '2023-05-17'),
(10, 1, 'Canvas Soul', 180.00, '2023-06-05'),
(11, 24, 'The Artist\'s Eye', 240.20, '2023-06-23'),
(12, 10, 'Ink Flow', 330.00, '2023-07-01'),
(13, 4, 'Voice in Paint', 299.95, '2023-07-18'),
(14, 7, 'Abstract Energy', 340.40, '2023-07-30'),
(15, 18, 'The Bold Palette', 219.99, '2023-08-11'),
(16, 11, 'Writing with Light', 270.00, '2023-08-25'),
(17, 23, 'Stage of Imagination', 350.65, '2023-09-03'),
(18, 13, 'Rhythmic Shades', 215.00, '2023-09-14'),
(19, 6, 'Grace in Ink', 205.45, '2023-09-29'),
(20, 25, 'Vivid Tales', 299.99, '2023-10-10'),
(21, 16, 'Echoes of Culture', 220.75, '2023-10-25'),
(22, 20, 'Dance of Colors', 260.90, '2023-11-07'),
(23, 22, 'Visual Vibes', 325.00, '2023-11-20'),
(24, 15, 'Stories Untold', 199.95, '2023-12-01'),
(25, 19, 'Performing Pixels', 275.30, '2023-12-12');

INSERT INTO Purchase (PurchaseID, ArtistID, CustomerID, Purchase_Amount, Purchase_Date) VALUES
(1, 5, 2, 299.99, '2023-07-01'),
(2, 3, 1, 245.00, '2023-07-05'),
(3, 12, 3, 189.75, '2023-07-10'),
(4, 7, 4, 315.25, '2023-07-12'),
(5, 10, 5, 275.00, '2023-07-15'),
(6, 15, 6, 199.90, '2023-07-18'),
(7, 20, 7, 260.50, '2023-07-22'),
(8, 1, 8, 300.00, '2023-07-25'),
(9, 8, 9, 225.40, '2023-07-28'),
(10, 4, 10, 280.00, '2023-07-30'),
(11, 17, 1, 240.00, '2023-08-02'),
(12, 2, 2, 210.00, '2023-08-04'),
(13, 6, 3, 275.60, '2023-08-08'),
(14, 9, 4, 260.10, '2023-08-12'),
(15, 13, 5, 250.00, '2023-08-15'),
(16, 19, 6, 299.50, '2023-08-18'),
(17, 25, 7, 320.00, '2023-08-22'),
(18, 11, 8, 215.75, '2023-08-25'),
(19, 22, 9, 330.99, '2023-08-28'),
(20, 18, 10, 245.65, '2023-09-01'),
(21, 21, 1, 299.99, '2023-09-05'),
(22, 23, 2, 260.25, '2023-09-08'),
(23, 14, 3, 285.00, '2023-09-12'),
(24, 24, 4, 190.45, '2023-09-15'),
(25, 16, 5, 310.30, '2023-09-18');
ALTER TABLE Purchase
ADD Product_Name VARCHAR(150),
ADD Review TEXT;

UPDATE Purchase SET
    Product_Name = 'The Wandering Quill',
    Review = 'Beautiful writing and a touching story.'
WHERE PurchaseID = 1;

UPDATE Purchase SET
    Product_Name = 'Echoes of a Dream',
    Review = 'Hauntingly lyrical poetry.'
WHERE PurchaseID = 2;

UPDATE Purchase SET
    Product_Name = 'Voices Live - Singer Concert',
    Review = 'The performance was electrifying!'
WHERE PurchaseID = 3;

UPDATE Purchase SET
    Product_Name = 'Strokes of Serenity - Painting',
    Review = 'Vivid colors, very peaceful vibe.'
WHERE PurchaseID = 4;

UPDATE Purchase SET
    Product_Name = 'Broken Verses',
    Review = 'Powerful emotions captured in words.'
WHERE PurchaseID = 5;

UPDATE Purchase SET
    Product_Name = 'Canvas Chronicles',
    Review = 'Tells a story without a single word.'
WHERE PurchaseID = 6;

UPDATE Purchase SET
    Product_Name = 'Soul Strings - Live Performance',
    Review = 'Breathtaking voice and lyrics.'
WHERE PurchaseID = 7;

UPDATE Purchase SET
    Product_Name = 'Shadows & Light - Sculpture',
    Review = 'Masterful craftsmanship.'
WHERE PurchaseID = 8;

UPDATE Purchase SET
    Product_Name = 'Ink & Fire - Poetry Book',
    Review = 'Raw and passionate poems.'
WHERE PurchaseID = 9;

UPDATE Purchase SET
    Product_Name = 'Brush Whispers',
    Review = 'A true visual masterpiece.'
WHERE PurchaseID = 10;

UPDATE Purchase SET
    Product_Name = 'Ink Trails - Writer’s Journal',
    Review = 'Thought-provoking essays and tales.'
WHERE PurchaseID = 11;

UPDATE Purchase SET
    Product_Name = 'Echo Chamber - Concert Performance',
    Review = 'Unforgettable stage experience.'
WHERE PurchaseID = 12;

UPDATE Purchase SET
    Product_Name = 'Midnight Muse - Poetry',
    Review = 'A soothing rhythm of words.'
WHERE PurchaseID = 13;

UPDATE Purchase SET
    Product_Name = 'Words in Motion',
    Review = 'A compelling story well told.'
WHERE PurchaseID = 14;

UPDATE Purchase SET
    Product_Name = 'Beyond the Horizon - Live Music',
    Review = 'Goosebumps throughout!'
WHERE PurchaseID = 15;

UPDATE Purchase SET
    Product_Name = 'Stone Stories - Sculpture',
    Review = 'A perfect blend of tradition and creativity.'
WHERE PurchaseID = 16;

UPDATE Purchase SET
    Product_Name = 'Silent Canvas',
    Review = 'Subtle yet deeply expressive.'
WHERE PurchaseID = 17;

UPDATE Purchase SET
    Product_Name = 'Rhymes and Realms',
    Review = 'Unique poetic themes, highly recommend.'
WHERE PurchaseID = 18;

UPDATE Purchase SET
    Product_Name = 'The Story Weaver - Novel',
    Review = 'Couldn’t put it down!'
WHERE PurchaseID = 19;

UPDATE Purchase SET
    Product_Name = 'Soul Ink - Poet Collection',
    Review = 'A literary gem!'
WHERE PurchaseID = 20;

UPDATE Purchase SET
    Product_Name = 'Live in Harmony - Singer Event',
    Review = 'Heart-touching melodies.'
WHERE PurchaseID = 21;

UPDATE Purchase SET
    Product_Name = 'Dream in Colors - Painting',
    Review = 'Simply mesmerizing.'
WHERE PurchaseID = 22;

UPDATE Purchase SET
    Product_Name = 'The Final Note - Musical Play',
    Review = 'A spectacular finale.'
WHERE PurchaseID = 23;

UPDATE Purchase SET
    Product_Name = 'The Mind’s Eye - Art Sketch',
    Review = 'Impressive use of perspective.'
WHERE PurchaseID = 24;

UPDATE Purchase SET
    Product_Name = 'Night Rhythms - Concert',
    Review = 'Danced all night!'
WHERE PurchaseID = 25;