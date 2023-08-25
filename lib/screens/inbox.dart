import 'package:flutter/material.dart';

class Inbox extends StatefulWidget {
  const Inbox({super.key});

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16), // Adjust margin
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              style: const TextStyle(color: Color(0xFF9D9FA0)),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.black12,
                border: const OutlineInputBorder(borderSide: BorderSide.none),
                hintText: 'Search here',
                suffixIcon: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  margin: const EdgeInsets.only(right: 10),
                  width: 44,
                  height: 44,
                  child: const Center(
                    child: Icon(
                      Icons.search,
                      size: 26,
                      color: Colors.black54,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            _buildChatList()
          ],
        ),
      ),
    );
  }
  
  Widget _buildChatList() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true, // Limit the height to its content
      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: (builder, context) {
        return _buildChatRow();
      },
    );
  }

  Widget _buildChatRow() {
    return Column(
      children: [
        Container(
          height: 70,
          child: Row(
            children: [
              const Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(),
                    SizedBox(width: 16,),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Roger Hulg'),
                          Text('Hey, can i ask something? i need your help please', style: TextStyle(overflow: TextOverflow.clip),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Today'),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.only(top: 20, right: 10),
                    width: 20, height: 20,
                    child: Center(child: Text('2', textAlign: TextAlign.center,)),)
                ],
              )
            ],
          ),
        ),
        const Divider()
      ],
    );
  }
}
