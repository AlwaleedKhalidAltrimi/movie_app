# Movie App

A feature-rich movie browsing application built with Flutter. This app allows users to discover the latest, most popular, and upcoming movies by leveraging The Movie DB (TMDb) API for real-time data. Users can explore various genres, search for specific films, watch trailers, and maintain a personal list of favorite movies stored locally.

## Features

*   **Discover Movies**: Browse movies categorized as "Now Showing," "Upcoming," and "Popular."
*   **Genre-Based Filtering**: Explore movies by selecting from a list of genres like Action, Comedy, Drama, and more.
*   **Movie Search**: Find specific movies by name with a responsive search functionality.
*   **Detailed Information**: View comprehensive details for each movie, including its overview, rating, vote count, release date, and original language.
*   **In-App Trailer Playback**: Watch movie trailers directly within the app using an integrated YouTube player.
*   **Favorites System**: Add or remove movies from a personal favorites list. This list is persisted locally on the device using a SQLite database.
*   **Smooth UI/UX**: Enjoy a clean interface with smooth animations and transitions.

## Architecture & Technology

The application is structured using a feature-based architecture to promote modularity and maintainability.

-   **Framework**: [Flutter](https://flutter.dev/)
-   **State Management**: [Provider](https://pub.dev/packages/provider) for managing application state reactively.
-   **Networking**: [HTTP](https://pub.dev/packages/http) package for making API requests to the TMDb service.
-   **Local Database**: [SQFlite](https://pub.dev/packages/sqflite) for local data persistence of favorite movies.
-   **Image Caching**: [Cached Network Image](https://pub.dev/packages/cached_network_image) for efficient loading and caching of movie posters.
-   **Video Playback**: [YouTube Player Flutter](https://pub.dev/packages/youtube_player_flutter) for embedding and playing trailers.

## Getting Started

To get a local copy up and running, please follow these steps.

### Prerequisites

Ensure you have the Flutter SDK installed on your system. For installation instructions, see the [official Flutter documentation](https://docs.flutter.dev/get-started/install).

### Installation

1.  Clone the repository to your local machine:
    ```sh
    git clone https://github.com/AlwaleedKhalidAltrimi/movie_app.git
    ```

2.  Navigate to the project directory:
    ```sh
    cd movie_app
    ```

3.  Install the required dependencies:
    ```sh
    flutter pub get
    ```

4.  Run the application on your connected device or emulator:
    ```sh
    flutter run
