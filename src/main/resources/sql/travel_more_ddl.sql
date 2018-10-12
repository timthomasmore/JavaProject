SET GLOBAL time_zone = '+01:00';
CREATE TABLE location (
  id                INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name              VARCHAR(255) NOT NULL,
  code              VARCHAR(5) NOT NULL
);