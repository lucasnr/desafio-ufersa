DROP DATABASE IF EXISTS TURING_TODO;
CREATE DATABASE TURING_TODO;
USE TURING_TODO;

CREATE TABLE `USER`(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    `NAME` VARCHAR(200),
    EMAIL VARCHAR(250) NOT NULL UNIQUE,
    `PASSWORD` CHAR(64) NOT NULL,
    AVATAR_URL VARCHAR(300)
);

CREATE TABLE TASK(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    USER_ID INT NOT NULL,
    TITLE VARCHAR(150) NOT NULL,
    `TEXT` VARCHAR(500),
    `DATETIME` DATETIME,
    DONE BOOLEAN DEFAULT FALSE,
    
    FOREIGN KEY(USER_ID) REFERENCES `USER`(ID)
		ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE SUBTASK(
	TASK_ID INT PRIMARY KEY,
    TITLE VARCHAR(100) NOT NULL,
    
    FOREIGN KEY(TASK_ID) REFERENCES TASK(ID)
		ON DELETE CASCADE 
        ON UPDATE CASCADE
);
