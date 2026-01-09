CREATE TABLE users (
	id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(320) UNIQUE,
    passhash VARCHAR(32),
    urole INT
);
CREATE TABLE workshops (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    created_at INT,
    wdate INT DEFAULT -1,
    wlocation VARCHAR(255) DEFAULT '',
    max_participants INT DEFAULT -1,
    sponsor VARCHAR(255) DEFAULT 'none',
    visibility INT,
    extra_text VARCHAR(3200) DEFAULT '',
    extra_text_visibility INT DEFAULT 0
);
CREATE TABLE files (
    id INT PRIMARY KEY AUTO_INCREMENT,
    workshop_id INT,
    fpath VARCHAR(255)
);
CREATE TABLE participations (
    id INT PRIMARY KEY AUTO_INCREMENT,
    workshop_id INT,
    user_id INT,
    approved INT DEFAULT 0,
    pname VARCHAR(255),
    notes VARCHAR(3200) DEFAULT ''
);
CREATE TABLE email_codes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    code VARCHAR(255),
    user_id INT
);
CREATE TABLE session_tokens (
    id INT PRIMARY KEY AUTO_INCREMENT,
    token VARCHAR(64),
    user_id INT,
    expiry INT
);
CREATE TABLE invites ( -- these are generic invites, not tied to specific users
    id INT PRIMARY KEY AUTO_INCREMENT,
    workshop_id INT,
    code VARCHAR(6),
    uses_left INT DEFAULT 1
);

CREATE TABLE claimed_invites ( -- these are invites that have been claimed by specific users
    id INT PRIMARY KEY AUTO_INCREMENT,
    workshop_id INT,
    user_id INT
);