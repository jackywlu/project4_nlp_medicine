CREATE DATABASE reddit_medicine;

\connect reddit_medicine;

CREATE TABLE submissions(
	post_id TEXT PRIMARY KEY,
	author TEXT,
	created_utc INT,
	month INT,
	title TEXT,
	submission_text TEXT,
	score INT,
	num_comments INT,
	stickied BOOLEAN,
	url TEXT

);