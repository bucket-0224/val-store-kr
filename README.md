# ValStore

A Flutter-based mobile application designed to help Valorant players easily check their daily storefront, match history, and player profile on the go.

## ✨ Features

* **Riot Sign-On (RSO) Integration:** Secure login using an in-app browser (WebView) to authenticate with Riot Games.
* **Storefront Check:** View your daily weapon skin offers and Night Market without launching the game.
* **Wallet Balance:** Check your current Valorant Points (VP), Radianite Points (RP), and Kingdom Credits.
* **Player Profile & Loadout:** View your current equipped skins, player cards, and titles.
* **Match History:** Browse your recent match history and detailed performance statistics.
* **Skin Catalog:** Detailed views for various weapon skins, agents, and maps.

## 🛠 Tech Stack

* **Framework:** [Flutter](https://flutter.dev/)
* **Language:** Dart
* **Architecture:** Clean Architecture + MVVM (Model-View-ViewModel)
* **Networking:** * [Dio](https://pub.dev/packages/dio) (HTTP client)
  * [Retrofit](https://pub.dev/packages/retrofit) (REST API client generator)
* **Dependency Injection:** * [GetIt](https://pub.dev/packages/get_it) (Service Locator)
  * [Injectable](https://pub.dev/packages/injectable) (Code generator for GetIt)
* **Data Serialization:** [JSON Serializable](https://pub.dev/packages/json_serializable)
* **Local Storage:** [Shared Preferences](https://pub.dev/packages/shared_preferences)
* **Web/Auth:** [WebView Flutter](https://pub.dev/packages/webview_flutter)

## 📂 Project Structure

This project follows the **Clean Architecture** principles, dividing the codebase into three main layers: Data, Domain, and Presentation.

```text
lib/
├── data/           # Data layer: API requests, Models (DTOs), and Repositories
│   ├── base/       # Core network configurations (Dio module)
│   ├── entitlement/# Riot Auth & Entitlement APIs
│   ├── info/       # Player information APIs
│   ├── skin/       # Skin, Agent, and Map data sources
│   └── ...         # (match, storefront, wallet, loadout)
├── domain/         # Domain layer: Pure business logic
│   ├── skin_usecase.dart
│   ├── wallet_usecase.dart
│   └── ...
├── presentation/   # Presentation layer: UI components and State Management
│   ├── base/       # Base widgets and viewmodels
│   ├── components/ # Reusable UI components (Cards, Bottom Sheets)
│   ├── di/         # Dependency Injection setup
│   ├── pages/      # Main screens (Home, Account, Match History, etc.)
│   └── viewmodel/  # MVVM ViewModels handling UI logic
└── main.dart       # Application entry point
```

## 🚀 Getting Started

### Prerequisites
* Flutter SDK (Latest stable version recommended)
* Dart SDK

### Installation

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/yourusername/valstore.git](https://github.com/yourusername/valstore.git)
   cd valstore
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Generate code for DI, JSON serialization, and Retrofit APIs:**
   Since this project uses code generation tools, you must run the build runner before launching the app.
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. **Run the app:**
   ```bash
   flutter run
   ```

## ⚠️ Disclaimer

ValStore is an unofficial, fan-made application. It is not endorsed by, directly affiliated with, maintained, authorized, or sponsored by Riot Games. All product and company names are the registered trademarks of their original owners.
```
