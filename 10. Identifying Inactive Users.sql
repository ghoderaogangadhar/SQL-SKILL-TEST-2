-- 1. Identifying Inactive Users
-- Management wants to find users who have never interacted with the platform (no
-- likes, posts, or messages).
-- ● Flawed Query
SELECT user_id 
FROM socialhive.users 
WHERE user_id NOT IN ( 
    SELECT DISTINCT user_id FROM socialhive.likes
    UNION ALL 
    SELECT DISTINCT sender_id FROM socialhive.messages 
    UNION ALL 
    SELECT DISTINCT user_id FROM socialhive.posts 
); 
