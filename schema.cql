-- Create a keyspace
CREATE KEYSPACE IF NOT EXISTS mykeyspace WITH replication = {
  'class': 'SimpleStrategy',
  'replication_factor': 1
};

-- Use the keyspace
USE mykeyspace;

-- Create a table
CREATE TABLE IF NOT EXISTS users (
  user_id UUID PRIMARY KEY,
  username text,
  email text,
  created_at timestamp
);

-- Optional: Insert sample data
INSERT INTO users (user_id, username, email, created_at) VALUES (uuid(), 'john_doe', 'john@example.com', toTimestamp(now()));
