# hw7-ddl.sql

## DO NOT RENAME OR OTHERWISE CHANGE THE SECTION TITLES OR ORDER.
## The autograder will look for specific code sections. If it can't find them, you'll get a "0"

# Code specifications.
# 0. Where there a conflict between the problem statement in the google doc and this file, this file wins.
# 1. Complete all sections below.
# 2. Table names must MATCH EXACTLY to schemas provided.
# 3. Define primary keys in each table as appropriate.
# 4. Define foreign keys connecting tables as appropriate.
# 5. Assign ID to skills, people, roles manually (you must pick the ID number!)
# 6. Assign ID in the peopleskills and peopleroles automatically (use auto_increment)
# 7. Data types: ONLY use "int", "varchar(255)", "varchar(4096)" or "date" as appropriate.

# Section 1
# Drops all tables.  This section should be amended as new tables are added.

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS peopleroles;
DROP TABLE IF EXISTS peopleskills;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS skills;
DROP TABLE IF EXISTS roles;
# ... 
SET FOREIGN_KEY_CHECKS=1;

# Section 2
# Create skills( id,name, description, tag, url, time_commitment)
# ID, name, description and tag cannot be NULL. Other fields can default to NULL.
# tag is a skill category grouping.  You can assign it based on your skill descriptions.
# time committment offers some sense of how much time was required (or will be required) to gain the skill.
# You can assign the skill descriptions.  Please be creative!

CREATE TABLE skills (
    skills_id int not null,
    skills_name varchar(255) not null,
    skills_description varchar(255) not null,
    skills_tag varchar(255) not null,
    skills_url varchar(255),
    skills_time_commitment int,
    primary key (skills_id)
);



# Section 3
# Populate skills
# Populates the skills table with eight skills, their tag fields must exactly contain “Skill 1”, “Skill 2”, etc.
# You can assign skill names.  Please be creative!

INSERT INTO skills (skills_id, skills_name, skills_description, skills_tag, skills_url, skills_time_commitment) VALUES
(1, 'Rock Climbing', 'Finger strength!', 'Skill 1', 'https://example.com/rock_climbing', 20),
(2, 'Rap', 'Freestyle of the dome', 'Skill 2', 'https://example.com/rap', 15),
(3, 'Skateboarding', 'Are you brave enough?', 'Skill 3', 'https://example.com/skateboarding', 30),
(4, 'Rock Climbing', 'Finger strength!', 'Skill 4', 'https://example.com/rock_climbing', 20),
(5, 'Culinary Arts', 'Mastering the art of cooking and food preparation.', 'Skill 5', 'https://example.com/culinary_arts', 25),
(6, 'Photography', 'Capturing moments and creating visually stunning photographs.', 'Skill 6', 'https://example.com/photography', 15),
(7, 'Gardening', 'Cultivating and maintaining beautiful and productive gardens.', 'Skill 7', 'https://example.com/gardening', 20),
(8, 'Woodworking', 'Crafting intricate and functional items from wood.', 'Skill 8', 'https://example.com/woodworking', 30);




# Section 4
# Create people( id,first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
# ID cannot be null, Last name cannot be null, date joined cannot be NULL.
# All other fields can default to NULL.

CREATE TABLE people (
    people_id int not null,
    people_first_name varchar(255),
    people_last_name varchar(256) NOT NULL,
    people_email varchar(255),
    people_linkedin_url varchar(255),
    people_headshot_url varchar(255),
    people_discord_handle varchar(255),
    people_brief_bio varchar(255),
    people_date_joined date not null,
    PRIMARY KEY (people_id)
);

# Section 5
# Populate people with six people.
# Their last names must exactly be “Person 1”, “Person 2”, etc.
# Other fields are for you to assign.

INSERT INTO people (people_id, people_first_name, people_last_name, people_email, people_linkedin_url, people_headshot_url, people_discord_handle, people_brief_bio, people_date_joined) VALUES
 (1, 'John', 'Person 1', 'john.doe@example.com', 'https://www.linkedin.com/in/johndoe', 'https://example.com/headshot1.jpg', 'john_doe25', 'Experienced software developer with a passion for innovation.', '2013-09-12'),
 (2, 'Alice', 'Person 2', 'alice.johnson@example.com', 'https://www.linkedin.com/in/alicejohnson', 'https://example.com/headshot2.jpg', 'alice_johnson53', 'Creative designer with a keen eye for aesthetics.', '2011-11-12'),
 (3, 'Michael', 'Person 3', 'michael.smith@example.com', 'https://www.linkedin.com/in/michaelsmith', 'https://example.com/headshot3.jpg', 'michael_smith76', 'Team-oriented developer and team lead.', '2015-11-15'),
 (4, 'Emily', 'Person 4', 'emily.brown@example.com', 'https://www.linkedin.com/in/emilybrown', 'https://example.com/headshot4.jpg', 'emily_brown755', 'Enthusiastic recruit ready to learn and contribute.', '2018-01-09'),
 (5, 'Sophia', 'Person 5', 'sophia.wilson@example.com', 'https://www.linkedin.com/in/sophiawilson', 'https://example.com/headshot5.jpg', 'sophia_wilson234', 'Eager recruit excited to embark on a new journey.', '2020-11-06'),
 (6, 'Daniel', 'Person 6', 'daniel.miller@example.com', 'https://www.linkedin.com/in/danielmiller', 'https://example.com/headshot6.jpg', 'daniel_miller876', 'Versatile developer with a passion for design.', '2023-04-28'),
 (7, 'Olivia', 'Person 7', 'olivia.moore@example.com', 'https://www.linkedin.com/in/oliviamoore', 'https://example.com/headshot7.jpg', 'olivia_moore8765', 'Talented designer with a focus on user experience.', '2022-03-28'),
 (8, 'Ethan', 'Person 8', 'ethan.anderson@example.com', 'https://www.linkedin.com/in/ethananderson', 'https://example.com/headshot8.jpg', 'ethan_anderson7654', 'Creative designer and team lead.', '2021-02-28'),
 (9, 'Ava', 'Person 9', 'ava.hill@example.com', 'https://www.linkedin.com/in/avahill', 'https://example.com/headshot9.jpg', 'ava_hill_1243543', 'Experienced developer with a focus on web technologies.', '2020-01-28'),
 (10, 'Logan', 'Person 10', 'logan.baker@example.com', 'https://www.linkedin.com/in/loganbaker', 'https://example.com/headshot10.jpg', 'logan_baker', 'Passionate developer and designer with a knack for problem-solving.', '2011-08-28');





# Section 6
# Create peopleskills( id, skills_id, people_id, date_acquired )
# None of the fields can ba NULL. ID can be auto_increment.

CREATE TABLE peopleskills (
    id int auto_increment,
    skills_id int,
    people_id int,
    date_acquired date default (current_date),
    primary key (id),
    foreign key (skills_id) references skills (skills_id),
    foreign key (people_id) references people (people_id)
);


# Section 7
# Populate peopleskills such that:
# Person 1 has skills 1,3,6;
# Person 2 has skills 3,4,5;
# Person 3 has skills 1,5;
# Person 4 has no skills;
# Person 5 has skills 3,6;
# Person 6 has skills 2,3,4;
# Person 7 has skills 3,5,6;
# Person 8 has skills 1,3,5,6;
# Person 9 has skills 2,5,6;
# Person 10 has skills 1,4,5;
# Note that no one has yet acquired skills 7 and 8.
 
INSERT INTO peopleskills (people_id,skills_id) values
(1,1),
(1,3),
(1,6),
(2,3),
(2,4),
(2,5),
(3,1),
(3,5),
(5,3),
(5,6),
(6,2),
(6,3),
(6,4),
(7,3),
(7,5),
(7,6),
(8,1),
(8,3),
(8,5),
(8,6),
(9,2),
(9,5),
(9,6),
(10,1),
(10,4),
(10,5);


# Section 8
# Create roles( id, name, sort_priority )
# sort_priority is an integer and is used to provide an order for sorting roles
CREATE TABLE roles(
    roles_id int,
    roles_name varchar(255),
    roles_sort_priority int,
    primary key(roles_id)

);


# Section 9
# Populate roles
# Designer, Developer, Recruit, Team Lead, Boss, Mentor
# Sort priority is assigned numerically in the order listed above (Designer=10, Developer=20, Recruit=30, etc.)

INSERT INTO roles (roles_id, roles_name, roles_sort_priority) VALUES
    (1, 'Designer', 10),
    (2, 'Developer', 20),
    (3, 'Recruit', 30),
    (4, 'Team Lead', 40),
    (5, 'Boss', 50),
    (6, 'Mentor', 60);



# Section 10
# Create peopleroles( id, people_id, role_id, date_assigned )
# None of the fields can be null.  ID can be auto_increment

CREATE TABLE peopleroles (
    peoplesroles_id INT AUTO_INCREMENT,
    people_id INT NOT NULL,
    role_id INT NOT NULL,
    date_assigned DATE NOT NULL,
    PRIMARY KEY (peoplesroles_id),
    FOREIGN KEY (people_id) REFERENCES people(people_id),
    FOREIGN KEY (role_id) REFERENCES roles(roles_id)
);




# Section 11
# Populate peopleroles
# Person 1 is Developer 
# Person 2 is Boss, Mentor
# Person 3 is Developer and Team Lead
# Person 4 is Recruit
# person 5 is Recruit
# Person 6 is Developer and Designer
# Person 7 is Designer
# Person 8 is Designer and Team Lead
# Person 9 is Developer
# Person 10 is Developer and Designer


INSERT INTO peopleroles (people_id, role_id, date_assigned) VALUES
    (1, 2, '2023-11-12'), 
    (2, 5, '2023-11-12'), 
    (2, 6, '2023-11-12'), 
    (3, 2, '2023-11-12'),
    (3, 4, '2023-11-12'), 
    (4, 3, '2023-11-12'), 
    (5, 3, '2023-11-12'),
    (6, 2, '2023-11-12'), 
    (6, 1, '2023-11-12'), 
    (7, 1, '2023-11-12'), 
    (8, 1, '2023-11-12'), 
    (8, 4, '2023-11-12'), 
    (9, 2, '2023-11-12'), 
    (10, 2, '2023-11-12'), 
    (10, 1, '2023-11-12'); 
