# README

This is a REST and Graphql API on Call of Duty Modern WarFare 2.The API is deployed on Render


`BASE_URL`  
```yaml
https://modern-warfare.onrender.com
```
Endpoint for fetching Vehicles.

```yaml
https://modern-warfare.onrender.com/vehicles
```
Endpoint to fetching operators.

```yaml
https://modern-warfare.onrender.com/operators
```
Endpoint to fetching missions.

```yaml
https://modern-warfare.onrender.com/missions
```
You can also pass an id to your missions url to fetch a specific mission

Endpoint for fetching maps

```yaml
https://modern-warfare.onrender.com/maps
```
This endpoint also supports pagination using the `will_paginate` gem to query maps using the page parameter,it is also possible to query maps using the per_page parameter

Example while using pagination `https://modern-warfare.onrender.com/maps?page=1`

`GRAPH QL`
The url to query and retrieve data is 
```yaml
https://modern-warfare.onrender.com/graphql
```

Example of a query
```yaml
query {
  guns {
    name
    image
    description
    real_life
  }
}
```
