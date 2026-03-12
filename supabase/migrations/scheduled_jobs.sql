SELECT cron.schedule(
    'notifications-cleanup',
    '0 0 * * 0',
    $$
        DELETE FROM notifications
        WHERE created_at < now() - INTERVAL '90 days';
    $$
);

SELECT cron.schedule(
    'affinity-decay',
    '0 0 * * 0',
    $$
        UPDATE affinity
        SET
        score = score * 0.85,
        last_updated = now()
        WHERE last_updated < now() - INTERVAL '7 days';

        DELETE FROM affinity
        WHERE score < 0.5;
    $$
);