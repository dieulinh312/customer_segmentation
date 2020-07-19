--- Get a feel for the users table:

SELECT * 
  FROM users
  LIMIT 20;

--- Find the email addresses and birthdays of users whose birth day is between 1980-01-01 and 1989-12-31:

SELECT email, birthday
  FROM users
  WHERE birthday BETWEEN '1980-01-01' AND '1990';

--- Find the emails and creation date of users who signed up prior to May 2017

SELECT email, created_at
  FROM users
  WHERE created_at < '2017-05-01';

--- Find the emails of the users who received the 'bears' test:

SELECT email
  FROM users
  WHERE test = 'bears';

--- Find all emails of users who received a campaign on website BBB:

SELECT email
  FROM users
  WHERE campaign LIKE 'BBB%';

--- Find all emails of users who received ad copy 2 in their campaign:

SELECT email
  FROM users
  WHERE campaign LIKE '%-2';

--- Find all emails of users who received both a campaign and a test:

SELECT email
 FROM users
 WHERE campaign IS NOT NULL AND test IS NOT NULL;
