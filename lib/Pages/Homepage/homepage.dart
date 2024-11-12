import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sampark_chat_app/Config/images.dart';
import 'package:sampark_chat_app/Config/strings.dart';
import 'package:sampark_chat_app/Pages/Homepage/Widgets/chatslist.dart';
import 'package:sampark_chat_app/Pages/Homepage/Widgets/tabbar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: Text(
          AppString.appName,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SvgPicture.asset(
            AssetsImages.appIconSvg,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
        bottom: myTabBar(tabController, context),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          try {
            print(" >>>>>>>>>>> ");
            bool permissiongranted = await FlutterContacts.requestPermission();
            if (permissiongranted) {
              List<Contact> contacts = await FlutterContacts.getContacts();
              print(contacts);
              for (var contact in contacts) {
                print("contact : : : ${contact.displayName}");
              }
            } else {
              print("Permission is deninde");
            }
          } catch (e) {
            print(e);
          }
        },
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Icon(
          Icons.add_call,
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TabBarView(
          controller: tabController,
          children: [
            Chatslist(),
            ListView(
              children: [
                ListTile(
                  title: Text('List Item 1'),
                ),
              ],
            ),
            ListView(
              children: [
                ListTile(
                  title: Text('List Item 1'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
