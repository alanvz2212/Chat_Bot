import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/message.dart';

class ChatService {
  static const String _apiKey = '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';
  static const String _baseUrl = 'https://openrouter.ai/api/v1';

  Future<String> sendMessage(List<Message> messages) async {
    try {
      // Only send last 10 messages to reduce payload and improve performance
      final recentMessages = messages.length > 10 
          ? messages.sublist(messages.length - 10) 
          : messages;

      final response = await http.post(
        Uri.parse('$_baseUrl/chat/completions'),
        headers: {
          'Authorization': 'Bearer $_apiKey',
          'Content-Type': 'application/json',
          'HTTP-Referer': 'https://localhost',
          'X-Title': 'Flutter Chat App',
        },
        body: jsonEncode({
          'model': 'meta-llama/llama-3.1-8b-instruct:free',
          'messages': recentMessages.map((msg) => {
            'role': msg.isUser ? 'user' : 'assistant',
            'content': msg.content,
          }).toList(),
          'max_tokens': 500,
          'temperature': 0.7,
        }),
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return data['choices'][0]['message']['content'] ?? 'No response received';
      } else {
        return 'Sorry, I encountered an error. Please try again.';
      }
    } catch (e) {
      return 'Connection error. Please check your internet and try again.';
    }
  }
}