# SoundSync

SoundSync is a real-time collaborative music listening platform built with Phoenix/Elixir. Create private listening spaces, invite friends, and enjoy synchronized music playback while chatting together.

![SoundSync Logo](/assets/images/sound_sync_logo.png)

## ✨ Features

- **Private Listening Spaces**: Create your own music room and invite up to 4 friends
- **Synchronized Music Experience**: Everyone hears the same track at the same time
- **Real-time Chat**: Discuss the music as you listen together
- **Seamless Authentication**: Simple signup with email or phone verification
- **Intuitive Controls**: Space creators control the music while everyone can chat

## 🚀 Tech Stack

- **Backend**: Elixir/Phoenix framework
- **Frontend**: Phoenix LiveView for real-time UI updates
- **Database**: PostgreSQL
- **Real-time Communication**: Phoenix Channels
- **Authentication**: Email/Phone OTP verification
- **Music Integration**: Spotify API (or alternative music service API)

## 📋 Project Status

SoundSync is currently in active development. See the project roadmap below for upcoming features.

## 🔧 Installation & Setup

### Prerequisites

- Elixir 1.14+
- Phoenix 1.7+
- PostgreSQL 14+
- Node.js 18+

### Local Development Setup

```bash
# Clone the repository
git clone https://github.com/Kaybangz/SoundSync.git
cd SoundSync

# Install dependencies
mix deps.get
mix ecto.setup
cd assets && npm install

# Configure environment variables
cp .env.example .env
# Edit .env with your configuration

# Start the Phoenix server
mix phx.server
```

Visit [`localhost:4000`](http://localhost:4000) in your browser to access the application.

## 📱 App Structure

- **Authentication Module**: Handles user registration, login, and session management
- **User Profiles**: User information and preferences
- **Listening Spaces**: Core functionality for creating and managing music rooms
- **Music Integration**: Connects to music APIs for track selection and playback
- **Real-time Communication**: Manages chat and synchronized listening experiences

## 🗺️ Roadmap

- [x] Project initialization
- [ ] Landing page
- [ ] User authentication system
- [ ] Profile management
- [ ] Music API integration
- [ ] Listening space creation
- [ ] Invitation system
- [ ] Real-time chat functionality
- [ ] Synchronized music playback
- [ ] Mobile responsive design
- [ ] Push notifications
- [ ] Expanded music service options

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License.

## Support

You can support this project by giving it a star ⭐
