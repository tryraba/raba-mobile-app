## Folder Structure :open_file_folder:

```
lib/
├── app/
├── core/
│   ├── errors/
│   ├── network/
│   └── utils/
├── di/
├── features/
│   ├── feature0/
│   │   ├── data/
│   │   │   ├── client/
│   │   │   ├── data_sources/
│   │   │   ├── models/
│   │   │   └── repositories/
│   │   ├── domain/
│   │   │   ├── entities/
│   │   │   ├── repositories/
│   │   │   └── use_cases/
│   │   └── presentation/
│   │       ├── blocs/
│   │       ├── pages/
│   │       └── widgets/
├── services/
├── shared/
```


## 📦 **Dependencies**

-   **`bloc_concurrency`** – Optimizes event handling in BLoC by controlling how events are processed concurrently or sequentially.

-   **`cached_network_image`** – Efficiently loads and caches network images to reduce redundant network calls and improve performance.

-   **`dio`** – A powerful HTTP client for making API requests with advanced features like interceptors and cancellation.

-   **`equatable`** – Simplifies value comparison in Dart classes, especially for state management.

-   **`flutter`** – The core Flutter SDK used to build beautiful, cross-platform apps from a single codebase.

-   **`flutter_bloc`** – Enables implementation of the BLoC (Business Logic Component) pattern for predictable state management.

-   **`flutter_localizations`** – Adds built-in support for localizing your Flutter app into multiple languages.

-   **`freezed_annotation`** – Used to generate immutable data classes with copy, equality, and JSON methods via `freezed`.

-   **`freezed`** – Code generation tool for creating unions/sealed classes and immutable models in Dart.

-   **`get_it`** – A lightweight service locator for dependency injection to manage app-wide objects easily.

-   **`intl`** – Supports internationalization, localization, and date/number formatting in different locales.

-   **`json_annotation`** – Adds annotations used with code generators like `json_serializable` for model serialization.

-   **`logger`** – A customizable logging utility to help you debug by printing logs in a structured way.

-   **`retrofit`** – A type-safe HTTP client generator for Dart inspired by Retrofit in Android/Kotlin.

-   **`rxdart`** – Adds functional and reactive extensions to Dart streams (in this case, used to implement debouncers.