import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/callPage.dart';
import 'package:whatsapp_clone/pages/chat.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Tab> topTabs = <Tab>[
    const Tab(icon: Icon(Icons.camera_alt)),
    const Tab(text: 'CHATS'),
    const Tab(text: 'STATUS'),
    const Tab(text: 'CALLS')
  ];

  final List<IconButton> topActions = <IconButton>[
    IconButton(
      icon: const Icon(Icons.search),
      onPressed: () {
        print("Search button pressed");
      },
    ),
    IconButton(
      icon: const Icon(Icons.more_vert),
      onPressed: () {
        print("More button clicked");
      },
    )
  ];

  @override
  void initState() {
    _tabController = TabController(length: 4, initialIndex: 1, vsync: this);
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Whatsapp"),
        actions: topActions,
        bottom: TabBar(
          tabs: topTabs,
          indicatorColor: Colors.white,
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Text('CAMERA'),
          ChatPage(),
          Text('STATUS'),
          CallPage(),
        ],
      ),
    );
  }
}
