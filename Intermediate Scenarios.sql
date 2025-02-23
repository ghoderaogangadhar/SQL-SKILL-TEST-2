-- Intermediate Scenarios
-- 4. Top Engaged Posts-- The analytics team needs to identify the top 5 most engaging posts based
-- on the number of likes. Include the usernames of the users who created
-- these posts to analyze content trends.
select posts.post_id,posts.content,count(liked_at) as no_of_liked from socialhive.posts join socialhive.likes on posts.post_id=likes.post_id group by post_id,content order by no_of_liked desc limit 5;
