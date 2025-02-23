-- 2. Weekly Activity Report
-- The analytics team needs a report showing the number of posts created and the
-- total likes received weekly. Focus only on weeks where more than 50 posts were
-- created.
select posts.created_at, likes.liked_at, count(created_at) as no_of_post_created from socialhive.posts join socialhive.likes on posts.post_id=likes.post_id group by created_at,liked_at order by created_at asc;