# 🏋️ BMI Calculator

A cross-platform **Body Mass Index (BMI) Calculator** built with **Flutter**, supporting Android, iOS, Web, Windows, macOS, and Linux.

---

## 📱 About

BMI Calculator is a simple and intuitive app that helps users calculate their Body Mass Index based on their height and weight. It provides instant feedback on their BMI category, making it easy to understand their health status at a glance.

---

## ✨ Features

- Calculate BMI from height and weight inputs
- Display BMI result with health category (Underweight, Normal, Overweight, Obese)
- Clean and minimal UI
- Cross-platform support (Android, iOS, Web, Desktop)

---

## 🚀 Getting Started

### Prerequisites

Make sure you have the following installed:

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (v3.0 or higher recommended)
- [Dart SDK](https://dart.dev/get-dart) (comes with Flutter)
- Android Studio / Xcode (for mobile targets)
- A connected device or emulator

### Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/MarwaaMuhammad/BMI_Calculator.git
   cd BMI_Calculator
   ```

2. **Install dependencies**

   ```bash
   flutter pub get
   ```

3. **Run the app**

   ```bash
   flutter run
   ```

   To target a specific platform:

   ```bash
   flutter run -d chrome      # Web
   flutter run -d windows     # Windows
   flutter run -d macos       # macOS
   flutter run -d linux       # Linux
   ```

---

## 🗂️ Project Structure

```
BMI_Calculator/
├── android/        # Android-specific files
├── ios/            # iOS-specific files
├── linux/          # Linux desktop support
├── macos/          # macOS desktop support
├── windows/        # Windows desktop support
├── web/            # Web support
├── lib/            # Main Dart source code
├── test/           # Unit and widget tests
├── pubspec.yaml    # Project dependencies and metadata
└── README.md
```

---

## 📊 BMI Categories

| BMI Range      | Category       |
|----------------|----------------|
| Below 18.5     | Underweight    |
| 18.5 – 24.9    | Normal weight  |
| 25.0 – 29.9    | Overweight     |
| 30.0 and above | Obese          |

---

## 🛠️ Built With

- [Flutter](https://flutter.dev/) — UI toolkit for cross-platform apps
- [Dart](https://dart.dev/) — Programming language

---

## 🤝 Contributing

Contributions are welcome! To contribute:

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/your-feature`)
3. Commit your changes (`git commit -m 'Add your feature'`)
4. Push to the branch (`git push origin feature/your-feature`)
5. Open a Pull Request

---

## 📄 License

This project is open source. Feel free to use and modify it.

---

## 👩‍💻 Author

**Marwaa Muhammad** — [@MarwaaMuhammad](https://github.com/MarwaaMuhammad)
