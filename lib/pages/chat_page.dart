import 'package:flutter/material.dart';

import '../widgets/chat_box.dart';

class ChatPage extends StatefulWidget {
  static const routeName = '/chat_page';
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // user CHAT model selection
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Theme.of(context).primaryColor),
                      borderRadius: BorderRadius.circular(
                          10) // Set border color to primary color
                      ),
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text('GPT-3 Turbo',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_drop_down,
                            color: Theme.of(context).primaryColor,
                            size: 40), // Set icon color to primary color
                        onPressed: () {
                          // Add BottomSheet to show more models
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => Column(
                              children: [
                                const Text('Choose Model',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                const SizedBox(height: 10),
                                Image.asset('assets/gpt_model/GPT3-poster.png'),
                                Image.asset('assets/gpt_model/GPT4-poster.png'),
                                Image.asset(
                                    'assets/gpt_model/GPT4T-poster.png'),
                              ],
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Divider(
                color: Colors.grey[900],
                thickness: 2, // Set thickness to 2
              ),
              //some suggestions for user
              Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Suggested',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600])),
                  ),
                  const SizedBox(height: 5),
                  const ChatBox(text: 'Write a letter to a friend'),
                  const ChatBox(
                      text:
                          "Write an email to reject client's offer because of the high price"),
                  const ChatBox(text: 'Write a letter to a friend'),
                ],
              ),
            ],
          ),
          Column(
            children: [
              //User input box
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10).copyWith(
                        bottomLeft: const Radius.circular(0),
                        bottomRight: const Radius.circular(0))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('You have 10 free messages left.'),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'GET MORE MESSAGES',
                            style: TextStyle(color: Colors.amber),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.mic),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.grey.withOpacity(0.1),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Ask me anything....'),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.send_rounded),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
