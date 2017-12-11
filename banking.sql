-- 
-- โครงสร้างตาราง `account`
-- 

CREATE TABLE `account` (
  `account_number` varchar(10) NOT NULL,
  `branch_name` varchar(126) NOT NULL,
  `balance` int(11) NOT NULL,
  PRIMARY KEY  (`account_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- dump ตาราง `account`
-- 

INSERT INTO `account` VALUES ('A-101', 'Downtown', 500);
INSERT INTO `account` VALUES ('A-215', 'Mianus', 700);
INSERT INTO `account` VALUES ('A-102', 'Perryridge', 400);
INSERT INTO `account` VALUES ('A-305', 'Round Hill', 350);
INSERT INTO `account` VALUES ('A-201', 'Brighton', 900);
INSERT INTO `account` VALUES ('A-222', 'Redwood', 700);
INSERT INTO `account` VALUES ('A-217', 'Brighton', 750);

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `borrower`
-- 

CREATE TABLE `borrower` (
  `customer_name` varchar(126) NOT NULL,
  `loan_number` varchar(10) NOT NULL,
  PRIMARY KEY  (`customer_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- dump ตาราง `borrower`
-- 

INSERT INTO `borrower` VALUES ('Adams', 'L-16');
INSERT INTO `borrower` VALUES ('Curry', 'L-93');
INSERT INTO `borrower` VALUES ('Hayes', 'L-15');
INSERT INTO `borrower` VALUES ('Jackson', 'L-14');
INSERT INTO `borrower` VALUES ('Jones', 'L-17');
INSERT INTO `borrower` VALUES ('Smith', 'L-11');
INSERT INTO `borrower` VALUES ('Williams', 'L-17');

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `branch`
-- 

CREATE TABLE `branch` (
  `branch_name` varchar(126) NOT NULL,
  `branch_city` varchar(126) NOT NULL,
  `assets` int(11) NOT NULL,
  PRIMARY KEY  (`branch_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- dump ตาราง `branch`
-- 

INSERT INTO `branch` VALUES ('Brighton', 'Brooklyn', 7100000);
INSERT INTO `branch` VALUES ('Downtown', 'Brooklyn', 9000000);
INSERT INTO `branch` VALUES ('Mianus', 'Horseneck', 400000);
INSERT INTO `branch` VALUES ('North Town', 'Rye', 3700000);
INSERT INTO `branch` VALUES ('Perryridge', 'Horseneck', 1700000);
INSERT INTO `branch` VALUES ('Pownal', 'Bennington', 300000);
INSERT INTO `branch` VALUES ('Redwood', 'Palo Alto', 2100000);
INSERT INTO `branch` VALUES ('Round Hill', 'Horseneck', 8000000);

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `customer`
-- 

CREATE TABLE `customer` (
  `customer_name` varchar(126) NOT NULL,
  `customer_street` varchar(126) NOT NULL,
  `customer_city` varchar(126) NOT NULL,
  PRIMARY KEY  (`customer_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- dump ตาราง `customer`
-- 

INSERT INTO `customer` VALUES ('Adams', 'Spring', 'Pittsfield');
INSERT INTO `customer` VALUES ('Brooks', 'Senator', 'Brooklyn');
INSERT INTO `customer` VALUES ('Curry', 'North', 'Rye');
INSERT INTO `customer` VALUES ('Glenn', 'Sand Hill', 'Woodside');
INSERT INTO `customer` VALUES ('Green', 'Walnut', 'Brooklyn');
INSERT INTO `customer` VALUES ('Lindsay', 'Park', 'Pittsfield');
INSERT INTO `customer` VALUES ('Smith', 'North', 'Rye');
INSERT INTO `customer` VALUES ('Turner', 'Putnam', 'Stamford');
INSERT INTO `customer` VALUES ('Williams', 'Nassau', 'Princeton');

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `depositor`
-- 

CREATE TABLE `depositor` (
  `customer_name` varchar(126) NOT NULL,
  `account_number` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- dump ตาราง `depositor`
-- 

INSERT INTO `depositor` VALUES ('Hayes', 'A-102');
INSERT INTO `depositor` VALUES ('Johnson', 'A-101');
INSERT INTO `depositor` VALUES ('Johnson', 'A-201');
INSERT INTO `depositor` VALUES ('Jones', 'A-217');
INSERT INTO `depositor` VALUES ('Lindsay', 'A-222');
INSERT INTO `depositor` VALUES ('Smith', 'A-215');
INSERT INTO `depositor` VALUES ('Turner', 'A-305');

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `loan`
-- 

CREATE TABLE `loan` (
  `loan_number` varchar(10) NOT NULL,
  `branch_name` varchar(126) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY  (`loan_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- dump ตาราง `loan`
-- 

INSERT INTO `loan` VALUES ('L-11', 'Round Hill', 900);
INSERT INTO `loan` VALUES ('L-14', 'Downtown', 1500);
INSERT INTO `loan` VALUES ('L-15', 'Perryridge', 1500);
INSERT INTO `loan` VALUES ('L-16', 'Perryridge', 1300);
INSERT INTO `loan` VALUES ('L-17', 'Downtown', 1000);
INSERT INTO `loan` VALUES ('L-23', 'Redwood', 2000);
INSERT INTO `loan` VALUES ('L-93', 'Mianus', 500);

-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `test`
-- 

CREATE TABLE `test` (
  `SID` varchar(3) NOT NULL,
  `Sname` varchar(15) NOT NULL,
  `age` smallint(6) NOT NULL,
  PRIMARY KEY  (`SID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- dump ตาราง `test`
-- 


-- --------------------------------------------------------

-- 
-- โครงสร้างตาราง `users`
-- 

CREATE TABLE `users` (
  `ID` mediumint(9) NOT NULL auto_increment,
  `username` varchar(60) default NULL,
  `password` varchar(60) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- dump ตาราง `users`
-- 

INSERT INTO `users` VALUES (1, 'kaew', '81dc9bdb52d04dc20036dbd8313ed055');
INSERT INTO `users` VALUES (2, 'asdf', '912ec803b2ce49e4a541068d495ab570');
