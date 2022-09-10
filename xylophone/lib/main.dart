import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
//import 'package:audioplayers/audioplayers.dart';

void main(){
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: MyApp(),
      ),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void audioplayer(int musicNum){
    final player = AudioPlayer();                   // Create a player
    player.setAsset('assets/note$musicNum.wav');
    player.play();
  }

  Expanded BuildKey ({Color? color, required int musicNum}){
    return Expanded(
                child: TextButton(
                  onPressed: (){
                    audioplayer(musicNum);},
                  child: Container(
                    height: 100.0,
                    width: double.infinity,
                    color: color,
                       ),
                )   );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
            mainAxisSize: MainAxisSize.max,
            children:<Widget> [
              BuildKey(color:Colors.blue, musicNum: 1),
              
              BuildKey(color: Colors.red, musicNum: 2),
              
              BuildKey(color: Colors.green, musicNum: 3),
              
              BuildKey(color: Colors.green.shade900, musicNum: 4),
              
              BuildKey(color: Colors.yellow, musicNum: 5),

              BuildKey(color: Colors.pink, musicNum: 6),
              
              BuildKey(color: Colors.black, musicNum: 7),
    
          ]),
    );
  }
}







//     return SafeArea(
      
//       child: Column(
//             mainAxisSize: MainAxisSize.max,
//             children:<Widget> [
//               BuildKey(color:Colors.blue, musicNum: 1),
              
//               BuildKey(color: Colors.red, musicNum: 2),
              
//               BuildKey(color: Colors.green, musicNum: 3),
              
//               BuildKey(color: Colors.green.shade900, musicNum: 4),
              
//               BuildKey(color: Colors.yellow, musicNum: 5),

//               BuildKey(color: Colors.pink, musicNum: 6),
              
//               BuildKey(color: Colors.black, musicNum: 7),
    
//           ]),
//     );
//   }
// }
