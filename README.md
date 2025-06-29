# AI Chat App

A Flutter-based chat application that integrates with AI services using the OpenRouter API.

## Project Structure

```
lib/
├── main.dart                 # App entry point
├── models/
│   └── message.dart         # Message data model
├── screens/
│   └── chat_screen.dart     # Main chat interface
├── services/
│   └── chat_service.dart    # API communication service
├── widgets/
│   ├── message_bubble.dart  # Individual message display
│   └── message_input.dart   # Message input field
└── utils/
    └── constants.dart       # App constants and configuration
```

## Features

- **Clean Architecture**: Organized into models, services, screens, and widgets
- **Real-time Chat**: Send messages and receive AI responses
- **Message History**: View conversation history with timestamps
- **Copy Messages**: Long-press to copy messages to clipboard
- **Clear Chat**: Reset conversation with a single tap
- **Responsive UI**: Adaptive design for different screen sizes
- **Loading States**: Visual feedback during API calls

## Dependencies

- `flutter`: Flutter SDK
- `http`: HTTP client for API requests
- `cupertino_icons`: iOS-style icons

## Setup

1. Ensure Flutter is installed on your system
2. Run `flutter pub get` to install dependencies
3. Run `flutter run` to start the application

## API Integration

The app uses the OpenRouter API with the following configuration:
- Model: `meta-llama/llama-3.1-8b-instruct:free`
- Max tokens: 1000
- Temperature: 0.7

## Usage

1. Launch the app
2. Type your message in the input field
3. Press send or hit enter
4. Wait for the AI response
5. Long-press any message to copy it
6. Use the clear button to reset the conversation

## File Organization

- **Models**: Data structures and business logic
- **Services**: External API communication
- **Screens**: Full-page UI components
- **Widgets**: Reusable UI components
- **Utils**: Constants and helper functions