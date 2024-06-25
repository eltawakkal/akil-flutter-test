# Akil's Flutter Test Project

An example project that created fo testing purpose

## Screenshots
<p>
  <img src="https://github.com/eltawakkal/akil-flutter-test/blob/main/screenshoot/ss1.png?raw=true" alt="screenshoot1" style="width:200px;"/>
  <img src="https://github.com/eltawakkal/akil-flutter-test/blob/main/screenshoot/ss2.png?raw=true" alt="screenshoot2" style="width:200px;"/>
  <img src="https://github.com/eltawakkal/akil-flutter-test/blob/main/screenshoot/ss3.png?raw=true" alt="screenshoot3" style="width:200px;"/>
  <img src="https://github.com/eltawakkal/akil-flutter-test/blob/main/screenshoot/ss4.png?raw=true" alt="screenshoot4" style="width:200px;"/>
</p>

## How to run

1. install packages by running

```dart
flutter pub get
```

2. run to your AVD or Phone


## Page / State

- Splash Screen
- User List
- Loading Sate
- Error State

## Packages

this Project is currently extended with the following packages.
Instructions on how to use them in your own application are linked below.

 Package | Link | Used For          |
| ------ | ------ |-------------------|
| dio | https://pub.dev/packages/dio | http request      |
| provider | https://pub.dev/packages/provider | state management  |
| shimmer | https://pub.dev/packages/shimmer | shimmer animation |


## API Reference

#### Get Users

```http
  GET https://reqres.in/api/users
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `page` | `string` | **Required**. number of page |

#### example

```http
  GET https://reqres.in/api/users?page=1
```


## Tested
- [ ]  IOS
- [x]  Android

> Note: you must connect to `internet` to run this project.
