# basic_app
A lightweight Flutter application featuring a 
**Login Screen** with validation and navigation to a **Home Screen**.  
This project demonstrates clean UI practices, reusable widgets.

## Getting Started
this is implementation for the week 1 Flutter Task for the internship of Developers Hub corporation.

## Features
- **Reusable TextFormFields** for email and password input
- **Form validation** using a `GlobalKey<FormState>`
- **TextButton with Icon** for "Forgot Password" (replacing deprecated FlatButton)
- **ElevatedButton** for login action
- **Navigation** to Home Screen upon successful validation
- Clean and maintainable code structure
 throughout separating validation logic at
  utils/validator and use it in abstract way and calling it in login ui screen like this validator.validateEmail().
