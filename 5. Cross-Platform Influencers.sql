-- 5. Cross-Platform Influencers
-- SocialHive wants to identify content creators who focus solely on posting
-- content but do not engage through messaging. Find users who have
-- received a significant number of likes on their posts but have not sent or
-- received any messages.
select posts.post_id, users.username, posts.content, posts.created_at from socialhive.posts join socialhive.users on posts.user_id=users.user_id; 
