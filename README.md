# Informant Common Words API
This API is designed to consume strings of text and keep track of how often they occur. It is used by Informant Lobby to create a word cloud of terms that are most commonly mentioned in Lobbyist Filings.

## Example Data
> __api/v1/common_words__
>
> Returns all of the words in the database with their count in a JSON object customized for the word cloud module

```json
...
    {
        "text": "mental",
        "value": 6
    },
    {
        "text": "boards",
        "value": 2
    },
    {
        "text": "domain",
        "value": 1
    },
    {
        "text": "nuclear",
        "value": 7
    },
     {
        "text": "capital",
        "value": 8
    },
    {
        "text": "encourage",
        "value": 3
    },
    {
        "text": "than",
        "value": 2
    },
    {
        "text": "agriculture",
        "value": 17
    },
    {
        "text": "advocate",
        "value": 9
    },
    {
        "text": "performance",
        "value": 2
    }
 ...
 ```
