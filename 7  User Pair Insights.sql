-- User Pair Insights
-- A researcher studying user engagement wants to identify user pairs
-- (sender and receiver) who have exchanged messages with each other
-- more than 3 times.

SELECT 
    CASE 
        WHEN sender_id < receiver_id THEN sender_id 
        ELSE receiver_id 
    END AS user1,
    
    CASE 
        WHEN sender_id > receiver_id THEN sender_id 
        ELSE receiver_id 
    END AS user2,
    
    COUNT(*) AS message_count
FROM socialhive.messages
GROUP BY user1, user2
HAVING message_count > 3;