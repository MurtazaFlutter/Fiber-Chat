import 'package:flutter/material.dart';

import '../models/chats.dart';

class ChatProvider with ChangeNotifier {
  final List<ChatMessage> _messages = [
    ChatMessage(
      name: 'Zubair',
      message: 'Hello What\'s up',
      time: '17/05',
      numberOfMessages: 1,
      image: 'https://randomuser.me/api/portraits/men/1.jpg',
      isOnline: true,
    ),
    ChatMessage(
      name: 'Jasmine',
      message: 'Hi there!',
      time: '17/05',
      numberOfMessages: 2,
      image: 'https://randomuser.me/api/portraits/women/2.jpg',
      isOnline: false,
    ),
    ChatMessage(
      name: 'Sarah',
      message: 'How are you doing?',
      time: '16/05',
      numberOfMessages: 0,
      image: 'https://randomuser.me/api/portraits/women/3.jpg',
      isOnline: true,
    ),
    ChatMessage(
      name: 'Adam',
      message: 'Can you send me the report?',
      time: '15/05',
      numberOfMessages: 0,
      image: 'https://randomuser.me/api/portraits/men/4.jpg',
      isOnline: true,
    ),
    ChatMessage(
      name: 'John',
      message: 'Did you watch the game last night?',
      time: '15/05',
      numberOfMessages: 0,
      image: 'https://randomuser.me/api/portraits/men/5.jpg',
      isOnline: false,
    ),
    ChatMessage(
      name: 'Lisa',
      message: 'Where are we meeting tomorrow?',
      time: '15/05',
      numberOfMessages: 0,
      image: 'https://randomuser.me/api/portraits/women/6.jpg',
      isOnline: true,
    ),
    ChatMessage(
      name: 'Zubair',
      message: 'Hello What\'s up',
      time: '17/05',
      numberOfMessages: 1,
      image: 'https://randomuser.me/api/portraits/men/1.jpg',
      isOnline: true,
    ),
    ChatMessage(
      name: 'Jasmine',
      message: 'Hi there!',
      time: '17/05',
      numberOfMessages: 2,
      image: 'https://randomuser.me/api/portraits/women/2.jpg',
      isOnline: false,
    ),
    ChatMessage(
      name: 'Sarah',
      message: 'How are you doing?',
      time: '16/05',
      numberOfMessages: 0,
      image: 'https://randomuser.me/api/portraits/women/3.jpg',
      isOnline: true,
    ),
    ChatMessage(
      name: 'Adam',
      message: 'Can you send me the report?',
      time: '15/05',
      numberOfMessages: 0,
      image: 'https://randomuser.me/api/portraits/men/4.jpg',
      isOnline: true,
    ),
    ChatMessage(
      name: 'John',
      message: 'Did you watch the game last night?',
      time: '15/05',
      numberOfMessages: 0,
      image: 'https://randomuser.me/api/portraits/men/5.jpg',
      isOnline: false,
    ),
    ChatMessage(
      name: 'Lisa',
      message: 'Where are we meeting tomorrow?',
      time: '15/05',
      numberOfMessages: 0,
      image: 'https://randomuser.me/api/portraits/women/6.jpg',
      isOnline: true,
    ),
        ChatMessage(
      name: 'Zubair',
      message: 'Hello What\'s up',
      time: '17/05',
      numberOfMessages: 1,
      image: 'https://randomuser.me/api/portraits/men/1.jpg',
      isOnline: true,
    ),
    ChatMessage(
      name: 'Jasmine',
      message: 'Hi there!',
      time: '17/05',
      numberOfMessages: 2,
      image: 'https://randomuser.me/api/portraits/women/2.jpg',
      isOnline: false,
    ),
    ChatMessage(
      name: 'Sarah',
      message: 'How are you doing?',
      time: '16/05',
      numberOfMessages: 0,
      image: 'https://randomuser.me/api/portraits/women/3.jpg',
      isOnline: true,
    ),
    ChatMessage(
      name: 'Adam',
      message: 'Can you send me the report?',
      time: '15/05',
      numberOfMessages: 0,
      image: 'https://randomuser.me/api/portraits/men/4.jpg',
      isOnline: true,
    ),
    ChatMessage(
      name: 'John',
      message: 'Did you watch the game last night?',
      time: '15/05',
      numberOfMessages: 0,
      image: 'https://randomuser.me/api/portraits/men/5.jpg',
      isOnline: false,
    ),
    ChatMessage(
      name: 'Lisa',
      message: 'Where are we meeting tomorrow?',
      time: '15/05',
      numberOfMessages: 0,
      image: 'https://randomuser.me/api/portraits/women/6.jpg',
      isOnline: true,
    ),
        ChatMessage(
      name: 'Zubair',
      message: 'Hello What\'s up',
      time: '17/05',
      numberOfMessages: 1,
      image: 'https://randomuser.me/api/portraits/men/1.jpg',
      isOnline: true,
    ),
    ChatMessage(
      name: 'Jasmine',
      message: 'Hi there!',
      time: '17/05',
      numberOfMessages: 2,
      image: 'https://randomuser.me/api/portraits/women/2.jpg',
      isOnline: false,
    ),
    ChatMessage(
      name: 'Sarah',
      message: 'How are you doing?',
      time: '16/05',
      numberOfMessages: 0,
      image: 'https://randomuser.me/api/portraits/women/3.jpg',
      isOnline: true,
    ),
    ChatMessage(
      name: 'Adam',
      message: 'Can you send me the report?',
      time: '15/05',
      numberOfMessages: 0,
      image: 'https://randomuser.me/api/portraits/men/4.jpg',
      isOnline: true,
    ),
    ChatMessage(
      name: 'John',
      message: 'Did you watch the game last night?',
      time: '15/05',
      numberOfMessages: 0,
      image: 'https://randomuser.me/api/portraits/men/5.jpg',
      isOnline: false,
    ),
    ChatMessage(
      name: 'Lisa',
      message: 'Where are we meeting tomorrow?',
      time: '15/05',
      numberOfMessages: 0,
      image: 'https://randomuser.me/api/portraits/women/6.jpg',
      isOnline: true,
    ),
    // add more chat messages here...
  ];

  List<ChatMessage> get messages => _messages;

  // void addMessage(ChatMessage message) {
  //   _messages.add(message);
  //   notifyListeners();
  // }
}
