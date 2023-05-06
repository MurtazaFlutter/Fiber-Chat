class ChatMessage {
  final String name;
  final String message;
  final String time;
  final int numberOfMessages;
  final String image;
  final bool isOnline;

  ChatMessage({
    required this.name,
    required this.message,
    required this.time,
    required this.numberOfMessages,
    required this.image,
    required this.isOnline,
  });
}
