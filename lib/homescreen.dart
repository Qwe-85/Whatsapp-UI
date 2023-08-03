import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          bottom: const TabBar(tabs: [
            Tab(
              child: Icon(Icons.camera_alt_outlined),
            ),
            Tab(child: Text('Chats')),
            Tab(
              child: Text('Status'),
            ),
            Tab(
              child: Text('Call'),
            ),
          ]),
          actions: [
            const Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (context) => [
                      const PopupMenuItem(value: '1', child: Text('New Group')),
                      const PopupMenuItem(value: '2', child: Text('Settings')),
                      const PopupMenuItem(value: '3', child: Text('LogOut')),
                    ]),
            const SizedBox(width: 10),
          ],
        ),
        body: TabBarView(
          children: [
            const Text('Camera'),
            ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/4045762/pexels-photo-4045762.jpeg?auto=compress&cs=tinysrgb&w=600'),
                    ),
                    title: Text('Anish Shrestha'),
                    subtitle: Text('where is the peace?'),
                    trailing: Text('2:52 pm'),
                  );
                }),
            ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('New Updates'),
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.green, width: 3),
                              ),
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://images.pexels.com/photos/4045762/pexels-photo-4045762.jpeg?auto=compress&cs=tinysrgb&w=600'),
                              ),
                            ),
                            title: const Text('Anish Shrestha'),
                            subtitle: Text('35 min ago'),
                            trailing: Text('2:52 pm'),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.green, width: 3),
                        ),
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/4045762/pexels-photo-4045762.jpeg?auto=compress&cs=tinysrgb&w=600'),
                        ),
                      ),
                      title: const Text('Anish Shrestha'),
                      subtitle: Text('35 min ago'),
                      trailing: Text('2:52 pm'),
                    );
                  }
                }),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/4045762/pexels-photo-4045762.jpeg?auto=compress&cs=tinysrgb&w=600'),
                    ),
                    title: Text('Anish Shrestha'),
                    subtitle: Text(index / 2 == 0
                        ? 'You missed call'
                        : 'call time is 12:30'),
                    trailing:
                        Icon(index / 2 == 0 ? Icons.phone : Icons.video_call),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
