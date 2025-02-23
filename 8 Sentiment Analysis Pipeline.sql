-- Sentiment Analysis Pipeline
-- The team is building a sentiment analysis tool to train models using user
-- messages. Extract all messages containing keywords like “great,” “happy,”
-- or “excited.” Include the sender and receiver details for messages sent
-- after January 2023.
SELECT * FROM messages
WHERE (content LIKE '%great%' OR content LIKE '%happy%' OR content LIKE '%excited%')
AND sent_at > '2023-01-01';