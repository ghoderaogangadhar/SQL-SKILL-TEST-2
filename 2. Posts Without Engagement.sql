-- 2. Posts Without Engagement
-- The product manager suspects that some posts lack proper targeting or
-- visuals. Identify all posts that haven’t received any likes to help refine the
-- content strategy.
SELECT posts.post_id, posts.user_id, posts.content, posts.created_at
FROM socialhive.posts
LEFT JOIN socialhive.likes ON posts.post_id = likes.post_id
WHERE likes.post_id IS NULL;