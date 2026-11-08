<p align="center">
  <img src="https://readme-typing-svg.demolab.com?font=Poppins&weight=700&size=30&pause=900&color=FF6B1A&center=true&vCenter=true&width=650&lines=Salon+Service+App;Book+your+salon+appointment;Beauty+%7C+Care+%7C+Convenience" alt="Salon Service App animated title" />
</p>

<p align="center">
  A Flutter application starter for a modern salon-service booking experience.
</p>

<p align="center">
  <img alt="Flutter" src="https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter&logoColor=white">
  <img alt="Dart" src="https://img.shields.io/badge/Dart-3.x-0175C2?logo=dart&logoColor=white">
  <img alt="Platforms" src="https://img.shields.io/badge/Platforms-Android%20%7C%20iOS%20%7C%20Desktop-FF6B1A">
  <img alt="Status" src="https://img.shields.io/badge/Status-In%20Development-yellow">
  <img alt="License" src="https://img.shields.io/badge/License-Not%20specified-lightgrey">
</p>

---

## Overview

**Salon Service App** is a Flutter project intended to provide a convenient way to explore salon services and build an appointment-booking experience. The repository is currently an early-stage starter; screens, booking workflows, backend integration, and platform builds should be considered **planned until implemented and tested**.

## Platform support

Flutter can target the following platforms. Actual support for this project depends on adding and testing each platform's generated project files and any required native configuration.

| Platform | Target | Build command | Build environment |
|---|---|---|---|
| Android | Android phones and tablets | `flutter build apk` or `flutter build appbundle` | Windows, macOS, or Linux with Android SDK |
| iOS | iPhone and iPad | `flutter build ios` | macOS with Xcode |
| Windows | Windows desktop | `flutter build windows` | Windows with Visual Studio C++ desktop workload |
| macOS | macOS desktop | `flutter build macos` | macOS with Xcode |
| Linux | Linux desktop | `flutter build linux` | Linux with required desktop development packages |

> **Current status:** These are Flutter target build commands, not evidence that release builds have already succeeded. Verify every target on its required development environment before advertising it as production-ready. iOS builds require macOS and Xcode.

## UI animation direction

The intended visual direction is a clean, premium salon experience with smooth, subtle motion rather than distracting effects.

- **Splash screen:** logo fade-in with a short scale transition.
- **Screen transitions:** fade and slide transitions between onboarding, authentication, and home screens.
- **Buttons:** tap feedback with a brief scale/ripple animation and clear loading state.
- **Service cards:** staggered fade/slide entrance and gentle image transitions.
- **Booking flow:** animated step/progress indicator and confirmation check animation.
- **Small devices:** keep animations lightweight and respect the system's reduced-motion preference where practical.

### Suggested Flutter animation APIs

Start with Flutter's built-in animation tools to avoid unnecessary dependencies:

- `AnimatedOpacity` and `AnimatedContainer` for simple transitions.
- `AnimatedSwitcher` for changing labels, icons, and screen states.
- `Hero` for shared-element transitions between service lists and details.
- `AnimationController` and `Tween` for custom splash or confirmation animations.

Optional packages such as [Lottie](https://pub.dev/packages/lottie) or [flutter_animate](https://pub.dev/packages/flutter_animate) can be evaluated when the project needs JSON animations or reusable animation effects. Add a package to `pubspec.yaml` before using it in code.

## Planned application areas

The following are proposed product areas, not a claim that these screens are already implemented:

1. Splash and onboarding
2. Sign in and account creation
3. Home and salon/service discovery
4. Service details, pricing, and duration
5. Appointment date and time selection
6. Booking summary and confirmation
7. User profile and booking history

## Project structure

A suggested structure as the app grows:

```text
lib/
├── main.dart
├── core/
│   ├── constants/
│   ├── theme/
│   └── utils/
├── models/
├── services/
├── widgets/
│   ├── custom_button.dart
│   └── custom_text.dart
└── features/
    ├── splash/
    ├── onboarding/
    ├── authentication/
    ├── home/
    └── booking/

assets/
├── image/
├── icons/
└── animations/
```

## Getting started

### Requirements

- Flutter SDK compatible with the Dart SDK constraint in `pubspec.yaml`.
- Android Studio or another configured Android SDK toolchain for Android builds.
- Xcode on macOS for iOS and macOS builds.
- Visual Studio with the **Desktop development with C++** workload for Windows desktop builds.
- A suitable Linux desktop toolchain for Linux builds.

### Setup

```bash
# Get the source code
git clone https://github.com/rafsanrakibdskm75/Salon_Service_App.git
cd Salon_Service_App

# Check the Flutter installation
flutter doctor -v

# Install Dart/Flutter dependencies
flutter pub get

# Run on a connected device or selected desktop target
flutter devices
flutter run
```

### Enable desktop targets

Run only the command for the desktop platform you intend to develop on:

```bash
flutter config --enable-windows-desktop
flutter config --enable-macos-desktop
flutter config --enable-linux-desktop
```

If a platform directory is missing in your local checkout, add the target platform using Flutter's project tooling from the project root, then configure and test its native build environment. Review generated files before committing them.

### Build examples

```bash
# Android APK
flutter build apk --release

# Android Play Store bundle
flutter build appbundle --release

# iOS (run on macOS with Xcode)
flutter build ios --release

# Desktop (run on the matching host operating system)
flutter build windows --release
flutter build macos --release
flutter build linux --release
```

## Assets

Declare the asset directory in `pubspec.yaml`:

```yaml
flutter:
  uses-material-design: true
  assets:
    - assets/
```

Example usage:

```dart
Image.asset(
  'assets/image/splash.png',
  width: 75,
  height: 75,
  fit: BoxFit.contain,
)
```

Keep file and folder names consistent with the paths in `pubspec.yaml` and the Dart code. After changing asset declarations, run `flutter pub get`.

## Quality checks

Before publishing a release, run:

```bash
flutter pub get
flutter analyze
flutter test
```

Then create and install a release build on real devices for every platform you intend to support. Check navigation, image loading, text scaling, responsive layouts, permissions, and animation performance.

## Contributing

1. Create a feature branch.
2. Keep widgets reusable and separate UI from business logic.
3. Run `flutter analyze` and relevant tests.
4. Include screenshots or a short screen recording for significant UI changes.
5. Open a pull request with a clear summary and testing notes.

## License

No license has been specified in this repository yet. Unless a license is added, do not assume that the source code is available for unrestricted reuse or redistribution.

---

<p align="center">
  Made with Flutter · <a href="https://github.com/rafsanrakibdskm75/Salon_Service_App">Salon_Service_App on GitHub</a>
</p>
