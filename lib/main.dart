import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:untitled1/Calculator.pb.dart';
import 'package:untitled1/Calculator.pbgrpc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'gRPC Chat Client',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChatPage(),
    );
  }
}

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final channel = ClientChannel(
    '192.168.5.150',
    port: 50051,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );

  final TextEditingController _messageController = TextEditingController();

  Future<void> _sendMessage() async {
    final client = CalculatorClient(channel);

    final message = AddRequest();
    message.phone = _messageController.text;

    try {
      await client.add(message);
      // Add any handling logic for a successful message sent.
      _messageController.clear();
    } catch (e) {
      // Handle any errors that occur during the message sending process.
      print('Error sending message: $e');
    } finally {
      //client.close();
    }
  }

  @override
  void dispose() {
    channel.shutdown();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('gRPC Chat Client'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: _messageController,
                  decoration: InputDecoration(
                    hintText: 'Enter your message...',
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: _sendMessage,
            child: Text('Send Message'),
          ),
        ],
      ),
    );
  }
}
