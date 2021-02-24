# JTK CP Data
This folder contains json file that represent JTK participation in competition, and also leaderboard data from various CP site.

## Contributing
Contribution are highly encouraged. To contribute please make a pull request with the addition, and follow the corresponding file formatting, and guidelines of the fields.

## File Format
Please follow this template to make sure data are well represented and easily understandable by others. Here are the following file format with their explanation.

### `people.json`
```
[
   {
      "id":"141524020",
      "name":"Muhammad Saiful Islam",
      "batch":"2014",
      "graduated":true,
      "accounts":{
         "codeforces":"saifulwebid",
         "kattis":"saifulwebid"
      }
   }
]
```
This file represent all of the recorded participant of CP from JTK in json format. Each of the people are on its own object. To add new people, please add a new object into the root array.

The only required field are,

1. ```.id```, the NIM or UUID v4 generated id as temporary id of that people
2. ```.name```, trivial
3. `.batch`, year of entry to JTK
4. `.graduated`, true if already graduated

Explanation for each of the fields are,

| Field | Explanation |
|--|--|
| `.id` | NIM or UUID v4 generated id as temporary id of that people if it is not in NIM, please change it to NIM if it is known  |
| `.name` | Trivial |
| `.batch` | Year of entry to JTK |
| `.graduated` | Boolean if already graduated |
| `.accounts` | List of account in CP websites |


### `competition.json`
```
[
   {
      "name":"Competition name goes here",
      "place":"Where the competition is",
      "year":"Year of the competition",
      "links":[
         "Competition link 1",
         "Competition link 2"
      ],
      "stages":[
         {
            "level":1,
            "name":"Prelim"
         },
         {
            "level":2,
            "name":"Semi"
         }
      ],
      "rewards":[
         {
            "type":"Prize type, like money/physical/etc",
            "place":"1st/2nd/etc",
            "value":"Monetary value or something equal"
         }
      ],
      "paticipants":[
         {
            "name":"Team name goes here",
            "members":[
               "191524026",
               "7eac0d9f-b205-47c6-a89c-1017b1ffbf12"
            ],
            "results":[
               {
                  "level":1,
                  "position":"1st/69th/etc"
               }
            ]
         }
      ]
   }
]
```
This file represent all of the recorded history of JTK competition participation data in json format. Each of the competition are on its own object. To add new competition, please add a new object into the root array.

The only required field are,

1. ```.name```, the name of the competition
2. ```.participants.*.members```, member id of the team that participate

Explanation for each of the fields are,

| Field | Explanation |
|--|--|
| ```.name``` | Name of the competition |
| ```.place``` | Place where the competition are held | 
| ```.year``` | Year (in number) of the competition | 
| `.links` | Array of link of the competition info |
| `.stages` | Array of stage object, representing each of the stages in the competition|
| `.stages.*.level` | Level (in number) of the competition. For example, prelim, semi final, and final, each would have level of 1, 2, and 3 |
| `.stages.*.name` | Stage name for that level |
| `.rewards` | Array of reward object, representing the reward given by the competition |
| `.rewards.*.type` | Type of the reward, like money/physical/etc. |
| `.rewards.*.place` | Place in the competition, 1st/2nd/3rd/etc. |
| `.rewards.*.value` | Value or name of the reward |
| `.participants` | Array of participant, representing each team |
| `.participants.*.name` | The name of the team |
| `.participants.*.members` | Array of string, with the id of the members listed on `people.json`, if id is not NIM, then it is temporary (a.k.a please change) |
| `.participants.*.results` | Array of result object, representing team place in each stages |
| `.participants.*.results.*.level` | Level of the competition, listed in `.stages` |
| `.participants.*.results.*.position` | Position on that level of the competition |

