-- init the table -*- mode: sql -*-

CREATE SEQUENCE IF NOT EXISTS user_id;

CREATE TABLE IF NOT EXISTS user (
"id" integer,
"docs_href" text,  -- this is intended to be a hyperlink to objectives or some such
"manager_id" integer,
"name" text,
"email" text,
"score" json,
"update" timestamp with time zone,
"last_login" timestamp with time zone
);

SELECT create_or_replace_replication_trigger('user');


CREATE SEQUENCE IF NOT EXISTS chat_id;

CREATE TABLE IF NOT EXISTS chat (
"id" integer,
"from_user_id" integer,
"to_user_id" integer,
"when" timestamp with time zone;
"what" json -- could use hton to capture complex chat
-- if hton and no storage then only links to images would be possible
-- perhaps we need a storage as well?
);

SELECT create_or_replace_replication_trigger('chat');

-- End
