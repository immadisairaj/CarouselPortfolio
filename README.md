# Personal Portfolio

This project made with Flutter and hosted in the [website](https://immadisairaj.github.io).

## About Website

This website is built taking the screen into account. It adjusts different layout for desktop version, mobile portrait version and mobile landscape version.

This website unlike other flutter websites handles the cursor when hovered at a button or clickable.

## Build the website

Follow the following to build the website:

-> Fork the Project

-> Clone the Project

```
git clone https://github.com/<username>/Portfolio
```

Here *username* is your github username

-> Open the directory

```
cd Portfolio
```

-> If you want to build locally (given flutter is already installed, including web version)

```
flutter run
```

Then you will be able to check the website at `localhost:<some port given in terminal>/`

-> Build the project

```
flutter build web
```

Now, the build website will be under `/build/web/`. 

If you want to host the website in your *github.io* then, copy all the content in `/build/web/` into another directory and push the content to your repository named `<username>.github.io`

Then you can check your website live at `https://<username>.github.io`

Here *username* is your github username

## Content

**Logo of the website:**

Replace `/web/logo.png` with your logo

**Title:**

Replace the Title at `/web/index.html` `line:11,line:31` with your title.

**Constants:**

All the Constants of the website are under `/lib/constants/constants.dart`

These constants include
- Profile Image
- Name
- Tag Line (two tag lines)
- About
- Quote
- Blog linking site
- Resume
- Few other similar categories to be under Profile Page

**Social Icons:**

Update links of Social Icons inside `/lib/widgets/social_icons.dart`

**Colors:**

Few Custom used/non-used colors are present under `/lib/theme/colors.dart/`

**Google Analytics:**

This website supports google analytics. You can replace 'UA-XXXXXXXXX-X' with your analytics ID at `/web/index.html` `line:27` to track your website

**Note:** All of the above should be updated before building the project

## Dependencies

- [Percent Indicator](https://pub.dev/packages/percent_indicator): v2.1.3
- [Animated Text Kit](https://pub.dev/packages/animated_text_kit): v2.1.0
- [Font Awesome Flutter](https://pub.dev/packages/font_awesome_flutter): v8.8.1
- [Responsive Builder](https://pub.dev/packages/responsive_builder): v0.1.4
- [Carousel Slider](https://pub.dev/packages/carousel_slider): v2.0.0

### License

This work is licensed under a [MIT License](https://github.com/immadisairaj/Portfolio/blob/master/LICENSE.md).

### Getting Started with Flutter

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
