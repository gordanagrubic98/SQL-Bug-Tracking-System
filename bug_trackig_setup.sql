/**************************************************************** QA PORTFOLIO: Bug Tracking System Database Schema
  DESCRIPTION: This script demonstrates Table Creation, 
               Data Manipulation (DML), and Relational Joins.
****************************************************************/

-- 1. Create Testers table (Primary entity)
CREATE TABLE Testers (
    tester_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);

-- 2. Create Bugs table (Linked to Testers via Foreign Key)
CREATE TABLE Bugs (
    bug_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    priority VARCHAR(10) CHECK (priority IN ('High', 'Medium', 'Low')),
    status VARCHAR(20) DEFAULT 'Open',
    tester_id INTEGER REFERENCES Testers(tester_id) -- Establishing Relationship
);

-- 3. Insert sample data into Testers
INSERT INTO Testers (full_name, email) VALUES 
('Marija Markovic', 'marija@testmail.com'),
('Nikola Nikolic', 'nikola@testmail.com');

-- 4. Insert 5 diverse bugs for testing scenarios
INSERT INTO Bugs (title, description, priority, status, tester_id) VALUES 
('Login failure', 'User cannot login with valid credentials', 'High', 'Open', 1),
('Broken link', 'Footer link leads to 404 page', 'Low', 'Open', 1),
('Search delay', 'Search results take more than 10 seconds', 'Medium', 'Open', 2),
('UI Overlap', 'Login button overlaps text on mobile', 'Low', 'Open', 2),
('Checkout crash', 'Application crashes during payment selection', 'High', 'Open', 1);

-- 5. Update bug status (Simulating a bug fix)
UPDATE Bugs 
SET status = 'Closed' 
WHERE title = 'Broken link';

-- 6. Execute INNER JOIN to display bug reports with assigned testers
-- This view confirms that data integrity is maintained between tables
SELECT 
    Bugs.title AS "Bug Summary", 
    Bugs.status AS "Current Status", 
    Testers.full_name AS "Reported By"
FROM Bugs
INNER JOIN Testers ON Bugs.tester_id = Testers.tester_id;