# boilerplate project

This project contains some of the most used packages and custom widgets to make the initial setup of a project quicker.

## Getting Started

There are two main state management packages in the pubspec file. 
Flutter BloC and Get. Be sure to delete the one you don't need, or both if you're going to use another one.

For local storage, there is Hive and Crypto working together to make the storage safe. The path_provider package is also available.

Dio is available for http request.

permission_handler, url_launcher, share_plus and local_auth are also available to makes things easier as well.

Flavor configuration is done by the flavorizr package, check the pubscpec for the flavor settings.

This project uses the barrel files concept, since Flutter Apps usually have a lot of files holding different widgets the barrel file concept helps a lot, making the import section smaller. 

## Widgets

The widgets folder contains a bunch of custom widgets that are common used during development but also requires a bit of configuration, i.e., Text Form Field.
Most of them are already up to go with default values if needed.

## Styles

Some colors, sizes, ThemeData and simple TextStyles are also configured.

## Helpers

Some common used functions related to string manipulation, date formatter and route building are available.
