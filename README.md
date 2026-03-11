# 🎬 Movie App

A modern and responsive **Movie Application built with Flutter** that allows users to discover trending, popular, and top-rated movies.

The app provides a clean and intuitive user interface while fetching real-time movie data from **The Movie Database (TMDb) API**.
It is designed with a modular architecture and uses **Provider** for efficient state management while supporting local storage for favourite movies.

---

## ✨ Features

* **Trending Movies**: Discover the latest trending movies
* **Popular & Top Rated**: Browse highly rated and popular films
* **Search Functionality**: Easily search for movies by title
* **Movie Details**: View detailed information about each movie
* **Watch Trailers**: Play official trailers using YouTube player
* **Genre Categories**: Explore movies by genre
* **Favourites System**: Save and manage favourite movies locally
* **Offline Support**: Access saved favourites without internet
* **Modern UI**: Dark theme with smooth animations
* **Optimised Performance**: Efficient state management with Provider

---

## 🛠️ Tech Stack

* **Framework**: Flutter (Dart)
* **State Management**: Provider
* **API**: TMDb (The Movie Database API)
* **Database**: SQLite (sqflite)
* **HTTP Client**: http package
* **Image Handling**: cached_network_image
* **Video Player**: youtube_player_flutter
* **Animations**: Flutter animations package

---

## 📁 Project Structure

```
lib/
├── Features/
│   ├── Category/        # Genre/category filtering
│   ├── Detail/          # Movie details screen
│   ├── Favorite/        # Favorites management
│   ├── Home/            # Home screen with movie lists
│   ├── Search/          # Search functionality
│   └── Splash/          # Splash screen
│
├── core/
│   ├── database/        # SQLite database setup
│   ├── extensions/      # Dart extensions
│   ├── helper/          # Helper utilities
│   ├── models/          # Data models
│   ├── services/        # API services
│   ├── tables/          # Database tables
│   ├── utils/           # Utility functions and routers
│   └── widgets/         # Reusable widgets
│
└── main.dart            # Application entry point
```

---

## 🚀 Getting Started

### Prerequisites

Make sure you have installed:

* Flutter SDK **3.5.4 or higher**
* Dart SDK (included with Flutter)
* Android Studio or VS Code with Flutter extension
* TMDb API Key
* Android / iOS Emulator or Physical Device

---

### Installation

1. Clone or download the project

2. Navigate to the project folder

3. Install dependencies:

```bash
flutter pub get
```

4. Add your **TMDb API key** inside the API service file.

5. Run the application:

```bash
flutter run
```

---

### Building for Production

To build the application for release:

```bash
flutter build apk --release
```

Or for iOS:

```bash
flutter build ios --release
```

Or for Web:

```bash
flutter build web --release
```

---

## 🎬 Movie Sections

The application provides several movie sections:

* Trending Movies
* Popular Movies
* Top Rated Movies
* Movies by Genre
* Search Results
* Favourite Movies

Each section fetches and displays movies using the **TMDb API**.

---

## 🧠 Application Logic

The application handles:

* Fetching movie data from **TMDb API**
* Managing application state using **Provider**
* Saving favourite movies locally using **SQLite**
* Displaying movie posters using **cached images**
* Playing trailers with **YouTube Player**
* Handling loading and error states

---

## 🎨 UI Components

The UI is built using reusable widgets including:

* **Movie Card Widget** – Displays movie poster and title
* **Movie List View** – Shows movies in scrollable lists
* **Category Widget** – Displays movie genres
* **Movie Detail View** – Shows detailed movie information
* **Favourite Widget** – Displays saved favourite movies

---

## 🤝 Contributing

Contributions are welcome! Feel free to fork the repository and submit pull requests for improvements.

### Possible Enhancements

* Add movie recommendations
* Implement user authentication
* Add watchlist feature
* Improve UI animations
* Add movie reviews and ratings
* Add pull-to-refresh functionality

---

## 📷 Screenshots

<p align="center">
  <img src="screenshots/screenshot1.png" width="100" style="margin:10px;">
  <img src="screenshots/screenshot2.png" width="100" style="margin:10px;">
  <img src="screenshots/screenshot3.png" width="100" style="margin:10px;">
  <img src="screenshots/screenshot4.png" width="100" style="margin:10px;">
</p>

<p align="center">
  <img src="screenshots/screenshot5.png" width="100" style="margin:10px;">
  <img src="screenshots/screenshot6.png" width="100" style="margin:10px;">
  <img src="screenshots/screenshot7.png" width="100" style="margin:10px;">
  <img src="screenshots/screenshot8.png" width="100" style="margin:10px;">
</p>


---

## 📜 License

This project is open source and available for learning and development purposes.

---

## 📞 Contact

If you have any questions, feedback, or suggestions, feel free to get in touch. I’m happy to help!
