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

this Porject is currently extended with the following plugins.
Instructions on how to use them in your own application are linked below.

| Plugin | README |
| ------ | ------ |
| dio | https://pub.dev/packages/dio |
| provider | https://pub.dev/packages/provider |
| shimmer | https://pub.dev/packages/shimmer |


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
