import 'package:flutter/material.dart';
import 'package:gohan_treinamentos_app/Classes/TodoList.dart';
import 'package:gohan_treinamentos_app/pages/home_page.dart';
import 'package:gohan_treinamentos_app/pages/page1.dart';
import 'package:gohan_treinamentos_app/pages/page2.dart';
import 'package:gohan_treinamentos_app/pages/page3.dart';
import 'package:gohan_treinamentos_app/provider/menu_provider.dart';
import 'package:provider/provider.dart';

List<String> titles = <String>['Cloud', 'Beach', 'Sunny', '(24)99319-9126 '];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Titulo',
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.orange),
        scaffoldBackgroundColor: Colors.black26,
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            color: Colors.pink,
          ),
        ),
      ),
      home: const GohanTreinamentos(),
      // home: ChangeNotifierProvider(
      //   create: (_) => PageController(),
      //   child: const MyAppBarAPP(),
    );
  }
}



class PageController extends ChangeNotifier {
  int _page = 0;

  int get page => _page;

  set page(int value) {
    _page = value;
    notifyListeners();
  }
}

//! WIDGETs

//! 1)
// class NightWolfAppBar extends StatelessWidget {
//   final String commentButtonTitle;
//   final String settingsButtonTitle;
//   final String menuButtonTitle;

//   const NightWolfAppBar({
//     required Key key,
//     this.commentButtonTitle = Comment,
//     this.settingsButtonTitle = Settings,
//     this.menuButtonTitle = Menu,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       title: Text('🐺 -> NIGHT WOLF 1 - TodoList🐺'),
//       actions: <Widget>[
//         IconButton(
//           icon: Icon(Icons.comment),
//           tooltip: commentButtonTitle,
//           onPressed: () {},
//         ),
//         IconButton(
//           icon: Icon(Icons.settings),
//           tooltip: settingsButtonTitle,
//           onPressed: () {},
//         ),
//         IconButton(
//           icon: Icon(Icons.menu),
//           tooltip: menuButtonTitle,
//           onPressed: () {},
//         ),
//       ],
//     );
//   }
// }

//! 2)
class CloneAppBar extends StatelessWidget {
  const CloneAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);
    const int tabsCount = 3;

    return DefaultTabController(
      initialIndex: 1,
      length: tabsCount,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar Sample'),
          // This check specifies which nested Scrollable's scroll notification
          // should be listened to.
          //
          // When  is true and scroll view has
          // scrolled underneath the app bar, this updates the app bar
          // background color and elevation.
          //
          // This sets  to listen to the scroll
          // notification from the nested .
          notificationPredicate: (ScrollNotification notification) {
            return notification.depth == 1;
          },
          // The elevation value of the app bar when scroll view has
          // scrolled underneath the app bar.
          scrolledUnderElevation: 4.0,
          shadowColor: Theme.of(context).shadowColor,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: const Icon(Icons.cloud_outlined),
                text: titles[0],
              ),
              Tab(
                icon: const Icon(Icons.beach_access_sharp),
                text: titles[1],
              ),
              Tab(
                icon: const Icon(Icons.brightness_5_sharp),
                text: titles[2],
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView.builder(
              itemCount: 25,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  tileColor: index.isOdd ? oddItemColor : evenItemColor,
                  title: const Text(' '),
                );
              },
            ),
            ListView.builder(
              itemCount: 25,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  tileColor: index.isOdd ? oddItemColor : evenItemColor,
                  title: const Text(' '),
                );
              },
            ),
            ListView.builder(
              itemCount: 25,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  tileColor: index.isOdd ? oddItemColor : evenItemColor,
                  title: const Text(' '),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
