-- 1. Identifying Active Users
-- SocialHive’s marketing team wants to send a “thank you” message to all
-- users who have interacted with the platform. Define “interaction” as
-- posting, liking a post, or sending a message. Provide a list of users who
-- have engaged in any of these activities.
select users.user_id, users.username,posts.media_url from socialhive.users join socialhive.posts on users.user_id = posts.user_id where media_url like 'https://%';
