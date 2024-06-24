-- Register the /news command
RegisterCommand('news', function()
    -- List of news items
    local newsItems = {
        '1. New animations when standing still for a long time.',
        '2. Example news item 1.',
        '3. Example news item 2.',
        '4. Example news item 3.',
        '5. Example news item 4.',
        '6. Example news item 5.',
        '7. Example news item 6.',
        '8. Example news item 7.',
        '9. Example news item 8.',
        '10. Example news item 9.',
        '11. Example news item 10.',
        '12. Example news item 11.',
        '13. Example news item 12.',
        '14. Example news item 13.',
        '15. Example news item 14.',
        '16. Example news item 15.',
        '17. Example news item 15.'
    }

    -- Create the text for the alert
    local alertText = '**Main news:**\n\n'

    -- Add each news item to the text
    for _, newsItem in ipairs(newsItems) do
        alertText = alertText .. newsItem .. '\n'
    end

    -- Display the alert with the news items
    lib.alertDialog({
        header = '📰 News',
        content = alertText,
        centered = true,
        cancel = true,
        size = 'md',
        labels = {
            cancel = 'Close',
            confirm = 'Confirm'
        }
    })
end, false)
