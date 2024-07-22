import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  
  late TabController _tabController;
  int _selectedIndex = 0;
  
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(
      () => setState(() => _selectedIndex = _tabController.index)
    );
  }

  // 페이지 종료 시 종료해 주는 기능
  @override
  void dispose() {
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("test title"),
        ),
        body: _selectedIndex == 0
      ? tabContainer(context, Colors.indigo, "Friends Tab")
        : _selectedIndex == 1 ? tabContainer(context, Colors.yellow, "Chats Tab")
        : tabContainer(context, Colors.blue, "Setting Tab"),
      bottomNavigationBar: SizedBox(
        height: 90,
        child: TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          tabs: [
            Tab(
             icon: Icon(
                 _selectedIndex == 0 ? Icons.person : Icons.person_2_outlined
             ),
             text: "Friends",
            ),
            Tab(
              icon: Icon(
                  _selectedIndex == 1 ? Icons.chat : Icons.chat_outlined
              ),
              text: "Chats",
            ),
            Tab(
              icon: Icon(
                  _selectedIndex == 2 ? Icons.settings : Icons.settings_outlined
              ),
              text: "Settings",
            ),
          ],
        ),
      ),
    );
  }

  Widget tabContainer(BuildContext con, Color tabColor, String tabText) {
    return Container(
      width: MediaQuery.of(con).size.width,
      height: MediaQuery.of(con).size.height,
      color: tabColor,
      child: Center(
        child: Text(
          tabText,
          style: const TextStyle(
            color: Colors.white
          ),
        ),
      ),
    );
  }

}
