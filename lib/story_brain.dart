import 'story.dart';
import 'main.dart';

class StoryBrain {
  Destini destini = Destini();

  List<Story> _storyData = [
    Story(
        storyTitle:
            'Seu carro furou um pneu em uma estrada sinuosa no meio do nada, sem sinal de celular. Você decide pedir carona. Uma caminhonete enferrujada ronca até parar perto de você. Um homem com um chapéu de abas largas e olhos sem alma abre a porta do passageiro e pergunta: "Precisa de uma carona, garoto?".',
        choice1: 'Eu vou entrar. Obrigado pela ajuda!',
        choice2: 'Melhor perguntar se ele é um assassino primeiro.'),
    Story(
        storyTitle: 'Ele balança a cabeça devagar, concordando com pergunta.',
        choice1: 'Pelo menos ele é honesto. Eu vou subir',
        choice2: 'Espere, eu sei como trocar um pneu.'),
    Story(
        storyTitle:
            'Quando você começa a dirigir, o estranho começa a falar sobre seu relacionamento com sua mãe. Ele fica mais irritado e irritado a cada minuto. Ele pede para você abrir o porta-luvas. Dentro dele você encontra uma faca ensanguentada, dois dedos decepados e uma fita cassete de Elton John. Ele alcança o porta-luvas.',
        choice1: 'Eu amo o Elton John! Entregua-lhe a fita cassete.',
        choice2: 'É ele ou eu! Você pega a faca e apunhala-o.'),
    Story(
        storyTitle:
            'O que? Tal policial fora! Você sabe que os acidentes de trânsito são a segunda principal causa de morte acidental para a maioria dos adultos.',
        choice1: 'Reiniciar',
        choice2: ''),
    Story(
        storyTitle:
            'Enquanto você atravessa o guard-rail e se inclina para as pedras irregulares abaixo, você reflete sobre a sabedoria de esfaquear alguém enquanto ele está dirigindo um carro em que você está..',
        choice1: 'Reiniciar',
        choice2: ''),
    Story(
        storyTitle:
            'Você se une ao assassino enquanto canta versos de "Você pode sentir o amor esta noite". Ele deixa você na próxima cidade. Antes de ir, ele pergunta se você conhece algum lugar bom para despejar corpos. Você responde: "Tente o píer".',
        choice1: 'Reiniciar',
        choice2: '')
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  int _storyNumber = 0;

  void nextStory(int choiceNumber) {
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      this.restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}
