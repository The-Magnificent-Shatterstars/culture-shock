# Culture Shock

## Description
Culture Shock is Ruby on Rails app that pulls from two APIs and presents the user with a themed playlist and recipe. The user can explore a faraway region's cuisine and culture at home.

## API Documentation

### How it Works

The user needs to enter in a region and playlist length (short or long). This is an output example of a random recipe and music selection when searching for "Korean."

```Ruby
{
    "recipe": {
    "name": "Cook the Book: Steak and Eggs Korean Style",
    "recipe_source": "http://allrecipes.com/Recipe/Korean-Soft-Tofu-Stew-Soon-Du-Bu-Jigae/Detail.aspx",
    "playlist": {
    "songs": "http://open.spotify.com/user/sophiebotdf/playlist/2hnLqGDeZnLxbUAS0M2Hjx"
    }
  }
}
```

### How to Install Culture Shock
* Clone this repository to your computer
* Run ```bundle install```
* Registering for an API is optional, please visit <a href="http://www.developer.spotify.com" target="_blank"> Spotify.com  
* Register for an API at <a href="http://food2fork.com/" target="_blank">Food2Fork.com</a>
