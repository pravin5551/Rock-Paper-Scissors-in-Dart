import 'dart:io';
import 'dart:math';

enum Move {rock, paper, scissors}


  void main(){
  final rng = Random();
    while(true){
    stdout.write('Rock, paper or scissors? (r/p/s)');
    final input = stdin.readLineSync();

    var inputPlayer;

    if(input =='r'|| input =='s' || input =='p'){
      if(input =='r'){
        inputPlayer = Move.rock;
      }else if(input  == 'p'){
        inputPlayer = Move.paper;
      }else{

        inputPlayer = Move.scissors;
      }
      final random = rng.nextInt(3);
      final aiMove = Move.values[random];

      print('AI Move  : $aiMove');
      print('Player Move  : $inputPlayer');

      if(inputPlayer == aiMove){
        print('Game Draw');
      }else if(aiMove ==Move.scissors && inputPlayer == Move.rock ||
      inputPlayer == Move.paper && aiMove == Move.rock ||
      inputPlayer == Move.scissors && aiMove == Move.paper){
        print('You win ........BRAWOO!!');
      }else {
        print('Oh No... You Lose');
      }



    }else if(input == 'q'){
      print('Thanks for playing a Rock | page | Scissor');
      break;
    }else{
      print('Invalid input :(');
    }
  }
}
