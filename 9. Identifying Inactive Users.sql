-- 1. Identifying Inactive Users
-- Management wants to find users who have never interacted with the platform (no
-- likes, posts, or messages).
SELECT users.user_id
FROM socialhive.users
LEFT JOIN socialhive.likes ON users.user_id = likes.user_id
LEFT JOIN socialhive.messages ON users.user_id = messages.sender_id
LEFT JOIN socialhive.posts ON users.user_id = posts.user_id
WHERE likes.user_id IS NULL
AND messages.sender_id IS NULL
AND posts.user_id IS NULL;
