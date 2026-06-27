# Apex E-Commerce App

## Overview

Apex E-Commerce App is a Flutter-based mobile application developed as an academic project. It allows users to browse products, view product details, add items to cart, and manage profile-related navigation.

The project focuses on basic e-commerce functionality using local/mock data.

---

## Features

* Splash screen (no authentication required)
* Product listing in home screen
* Product detail view
* Add to cart functionality
* Cart management system
* Quantity increase and decrease
* Remove items from cart
* Total price calculation
* Profile screen with navigation options

---

## Project Screens

### Splash Screen (`splashscreen.dart`)

* Simple splash screen displayed at app launch
* Navigates to Home screen
* No authentication implemented

---

### Home Screen (`home.dart`)

* Displays products using list/grid view
* Each product includes image, name, price, and rating
* Clicking a product navigates to Product Details screen

---

### Product Details Screen (`product1.dart`)

* Shows full product information
* Includes image, name, price, description, and rating
* Contains “Add to Cart” button

---

### Cart Screen (`cart.dart`, `cart_data.dart`)

* Displays all added products
* Supports quantity increase and decrease using setState
* Allows removing items from cart
* Uses a getter method to calculate total price dynamically

---

### Profile Screen (`profile.dart`)

* Displays user profile photo
* Navigation options:

  * Personal Information screen (`personalinfo.dart`)
  * Help & Support screen (`help.dart`)

---

### Main File (`main.dart`)

* Entry point of the application
* Initializes and runs the Flutter app

---

## State Management and Logic

* `setState()` is used for:

  * Increasing product quantity
  * Decreasing product quantity

* Getter method is used for:

  * Calculating total cart price dynamically

* Mock data is used for:

  * Product listing
  * Cart items
  * Product details navigation

---

## AI Tools Used

* ChatGPT
* Copilot

---

## AI Usage Details

AI tools were used for:

* Implementing total price calculation using getter method
* Understanding and implementing navigation when a product is clicked
* Structuring and using mock data for products and cart system

---

## Project Structure

lib/
│
├── main.dart
├── splashscreen.dart
├── home.dart
├── product1.dart
├── cart.dart
├── cart_data.dart
├── profile.dart
├── personalinfo.dart
└── help.dart


---

## Technologies Used

* Flutter
* Dart
* Material Design

---

## Requirements

* Flutter SDK
* Dart SDK
* Android Studio / VS Code

---

## Installation

1. Navigate to project folder

```bash id="r7m2bb"
cd apex_e_commerce_app
```

2. Install dependencies

```bash id="t8k4dd"
flutter pub get
```

3. Run the application

```bash id="u2p9ff"
flutter run
```

---

## Future Improvements

* Firebase authentication
* Online product database
* Payment gateway integration
* Wishlist feature
* Order history
* Dark mode UI improvement
* Search and filter system

---

## Developer

Shashika Suraweera

Software Engineering Undergraduate

---

## License

This project is developed for educational purposes only.
