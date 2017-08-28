CREATE TABLE todos (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    details TEXT NULL,
    priority INTEGER NOT NULL DEFAULT 1,
    created_at TIMESTAMP NOT NULL,
    completed_at TIMESTAMP NULL

);



INSERT INTO todos (title, details, priority, created_at, completed_at) VALUES
('Wash the Car', 'Use soap and a sponge to wash the car in the driveway. Do not take it to the carwash at the gas station. You do not have quarters.', 3, '2004-10-19 10:23:54', NULL ),
('Take Kratos for a Walk', 'Put Kratos in his puppy harness and walk outside with him. Let him run and play. Make sure you bring a bag for when he does his thing.', 4 , '2004-10-19 10:23:54', NULL ),
('Go to The Iron Yard', 'Get in the car, making sure you have gas, and drive forever. Just keep driving. Maybe you will get there one day. Maybe not. Either way, class starts at 9am.', 5, '2004-10-19 10:23:54', '2017-08-28 07:10:37'),
('Eat Lunch', 'Finish your daily project, then go eat. You are hungry.', 5, '2004-10-19 10:23:54', NULL),
('Turn in Daily Project', 'Finish writing these commands, and finish your work and turn it in by 4pm.', 4, '2004-10-19 10:23:54', NULL);

SELECT * FROM todos WHERE completed_at IS NULL;

SELECT title, details FROM todos WHERE completed_at IS NULL;

SELECT * FROM todos WHERE priority > 1;

UPDATE todos SET completed_at = '2017-08-28 15:37:37' WHERE id = 4;

SELECT * FROM todos WHERE completed_at IS NOT NULL;

DELETE FROM todos WHERE completed_at IS NOT NULL;

SELECT * FROM todos;
