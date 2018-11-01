# Politik Common Words API
[![Build Status](https://travis-ci.org/jtrtj/informant_common_words.svg?branch=master)](https://travis-ci.org/jtrtj/informant_common_words)
---

#### This API provides data for a word cloud on [Politik](https://informant-lobby.herokuapp.com). It accepts POST requests from Politik Lobbyist API. The Politik Lobbyist API sends strings of text from Lobbyist filings and the Common Words API keeps track of how many times each word appears.

> __POST /api/v1/common_words__
>
> Expects a payload in this format:
> ```json 
> { "representation_id": <integer>, "issue_string": <string> }
> ```
> If successful, it will return 
>
> status code: 201
>
> response body: 
> ```json
> { "message": "Lobbying Representation: <lobbying_represenntation_id> issue logged in common words system." }
> ```
  
> __GET /api/v1/common_words__
>
> Returns all words from the database with the amount of times they occur in Lobbyist Representation Filings from the other API
#### Sample:
```json
{
        "text": "activities",
        "value": 12
    },
    {
        "text": "good",
        "value": 4
    },
    {
        "text": "remote",
        "value": 6
    },
    {
        "text": "innovation",
        "value": 22
    },
    {
        "text": "advancing",
        "value": 6
    },
    {
        "text": "army",
        "value": 13
    },
    {
        "text": "clean",
        "value": 23
    },
    {
        "text": "water",
        "value": 47
    }
```
### if you would like to deploy locally:
1. Clone this repo
1. `$ cd` into directory
1. `$ bundle update`
1. `$ rake db:{create,migrate}`
1. `$ rspec` to run the test suite
1. `$ rails s` use [PostMan](https://www.getpostman.com/) or similar to make a POST request to localhost:3000/api/v1/common_words
