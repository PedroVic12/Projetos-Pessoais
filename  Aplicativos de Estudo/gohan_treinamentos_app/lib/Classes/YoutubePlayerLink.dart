// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   final YoutubePlayerController _controller = YoutubePlayerController(
//     initialVideoId: 'iLnmTe5Q2Qw',
//     flags: YoutubePlayerFlags(
//       autoPlay: true,
//       mute: false,
//     ),
//   );
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Example App"),
//       ),
//       body: Column(
//         children: [
//           InkWell(
//             child: Text("Link"),
//             onTap: () async {
//               final url = 'https://www.google.com';
//               if (await canLaunch(url)) {
//                 await launch(url);
//               } else {
//                 throw 'Could not launch $url';
//               }
//             },
//           ),
//
//         ],
//       ),
//     );
//   }
// }
