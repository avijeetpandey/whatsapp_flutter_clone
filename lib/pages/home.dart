import 'package:flutter/material.dart';

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
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("Search button pressed");
            },
          )
        ],
        bottom: TabBar(
          tabs: topTabs,
          indicatorColor: Colors.white,
          controller: _tabController,
        ),
      ),
      body: const Text("This is body of the app"),
    );
  }
}
