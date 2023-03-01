import 'package:flutter/material.dart';
import 'package:gohan_treinamentos_app/widgets/CustomContainer.dart';
import 'package:gohan_treinamentos_app/widgets/ScrollTela.dart';
import 'package:gohan_treinamentos_app/widgets/YoutubePlayer.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 4 - Repositorio de Videos do Youtube'),
      ),
      body:  MyGestureDetector(
        child: SafeArea(
          child: Column(
            children: [
              Card(
                child: Column(
                  children: [
                    Text('Flutter', style: TextStyle(fontSize: 30, color: Colors.red),),
                    YoutubeLink(link: 'https://www.youtube.com/watch?v=ewFH0l2CLFo&t=74s'),
                    YoutubeLink(link: 'https://www.youtube.com/watch?v=TbVSO0RIQsg&t=449s'),
                    YoutubeLink(link: 'https://www.youtube.com/watch?v=odr59ZAx-IU&list=PLnFA4SZ9y0T5FA2dFdNh6NLD6Rm6GB6x7&index=1&t=231s'),
                    YoutubeLink(link: 'https://www.youtube.com/watch?v=YMx8Bbev6T4'),
                    YoutubeLink(link: 'https://www.youtube.com/watch?v=LwOACmXcNQ8&list=PLRpTFz5_57cvCYRhHUui2Bis-5Ybh78TS&index=1&t=442s'),
                  YoutubeLink(link: 'https://www.youtube.com/watch?v=fgloD9-8GNE&list=PL5EmR7zuTn_Yu_YV2pT0h0843vRGiTMtx')

                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(

                  child: Column(
                    children: [
                      Text('C++ and IoT', style: TextStyle(fontSize: 30, color: Colors.red),),
                      YoutubeLink(link: 'https://www.youtube.com/watch?v=1GcMAiIMQYU'),
                      YoutubeLink(link: 'https://www.youtube.com/watch?v=6ApIdQKU5uo&t=711s')
                    ],
                  ),
                ),
              ),

              Card(
                child: Column(
                  children: [
                    Text('LOFI', style: TextStyle(fontSize: 30, color: Colors.red),),
                    YoutubeLink(link: 'https://www.youtube.com/watch?v=HwbaNH3LKCg'),
                  YoutubeLink(link: 'https://www.youtube.com/watch?v=YLTRozsCR1M')
                  ],
                ),
              ),
            Card(
              child: Column(
                children: [
                  Text('Docker and Deploy', style: TextStyle(fontSize: 30, color: Colors.red),),
                  YoutubeLink(link: 'https://www.youtube.com/watch?v=TU3P1fYcTyc'),
                  YoutubeLink(link: 'https://www.youtube.com/watch?v=YDNSItBN15w'),
                  YoutubeLink(link: '')
                

                ],
              ),
            )
            ],
          ),
        ),
      ),
    );
  }
}
