CREATE TABLE todos (id SERIAL PRIMARY KEY, title VARCHAR(255) NOT NULL, details VARCHAR NULL, priority INTEGER NOT NULL DEFAULT 1, created_at TIMESTAMP NOT NULL, completed_at TIMESTAMP NULL);

INSERT INTO todos (title, details, priority, created_at) VALUES ('Wash Car', 'Cold and wet', 5, current_timestamp);

INSERT INTO todos (title, details, priority, created_at) VALUES ('Write Novel', 'Impossible', 2, current_timestamp);

INSERT INTO todos (title, details, priority, created_at) VALUES ('Clean House', 'Boring', 9, current_timestamp);

INSERT INTO todos (title, details, priority, created_at) VALUES ('Brush Teeth', 'Minty', 9, current_timestamp);

SELECT title FROM todos WHERE completed_at IS NULL;

SELECT title FROM todos WHERE priority > 1;

UPDATE todos SET completed_at = current_timestamp WHERE id = 7;

DELETE FROM todos WHERE completed_at IS NOT NULL;
