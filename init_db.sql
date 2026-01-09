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
    extra_text_visibility INT DEFAULT 0,
    FOREIGN KEY (user_id) REFERENCES users(id)
);
CREATE TABLE files (
    id INT PRIMARY KEY AUTO_INCREMENT,
    workshop_id INT,
    fpath VARCHAR(255),
    FOREIGN KEY (workshop_id) REFERENCES workshops(id)
);
CREATE TABLE participations (
    id INT PRIMARY KEY AUTO_INCREMENT,
    workshop_id INT,
    user_id INT,
    approved INT DEFAULT 0,
    pname VARCHAR(255),
    notes VARCHAR(3200) DEFAULT '',
    FOREIGN KEY (workshop_id) REFERENCES workshops(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);
CREATE TABLE email_codes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    code VARCHAR(255),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);
CREATE TABLE session_tokens (
    id INT PRIMARY KEY AUTO_INCREMENT,
    token VARCHAR(64),
    user_id INT,
    expiry INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);
CREATE TABLE invites ( -- these are generic invites, not tied to specific users
    id INT PRIMARY KEY AUTO_INCREMENT,
    workshop_id INT,
    code VARCHAR(6),
    uses_left INT DEFAULT 1,
    FOREIGN KEY (workshop_id) REFERENCES workshops(id),
);

CREATE TABLE claimed_invites ( -- these are invites that have been claimed by specific users
    id INT PRIMARY KEY AUTO_INCREMENT,
    workshop_id INT,
    user_id INT,
    invite_id INT,
    FOREIGN KEY (workshop_id) REFERENCES workshops(id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (invite_id) REFERENCES invites(id)
);