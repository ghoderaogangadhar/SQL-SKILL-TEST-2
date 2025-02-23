-- 3. First-Time Liker
-- To analyze user behavior, SocialHive’s analytics team wants to identify
-- users who liked a post for the first time. Generate a list of the first
-- recorded likes for each user, along with the corresponding post.
select users.username,liked_at from socialhive.users join socialhive.likes on users.user_id=likes.user_id order by liked_at asc; 
