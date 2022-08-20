import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  final List<Tab> topTabs = <Tab>[
    const Tab(icon: Icon(Icons.camera_alt)),
    const Tab(text: 'CHATS'),
    const Tab(text: 'STATUS'),
    const Tab(text: 'CALLS')
  ];

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Whatsapp"),
        bottom: TabBar(
          tabs: topTabs,
          controller: _tabController,
        ),
      ),
      body: const Text("This is body of the app"),
    );
  }
}
