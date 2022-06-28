// Задание №20
// Постройте частотный словарь букв русского (или английского) алфавита.
// Опустим проблему выбора и анализа корпуса языка, достаточно будет взять текст небольшой длины).

import 'package:ft_md_101_dart/steps/tasks/Task20/VolueAndFrequency.dart';
import 'package:ft_md_101_dart/steps/tasks/TaskInterface.dart';

class Task20 extends TaskInterface {
  @override
  void run() {
    // Текст который будем проверять
    String string = "Частотность русского алфавита - как часто встречается данная буква в массиве случайного русского текста."
            .replaceAll(".", "")
            .replaceAll(" ", "")
            .replaceAll("-", "");

    // Список объектов [{буква, кол-во повторений в тексте}]
    List<LetterAndVolue> lav = [];


    for (var let in string.split("")){ // Парсим текст по буквам
      if (!ChackDuplicate(lav, let)){ // Проверяем не встречалась ли буква ранее
        int val = 0;
        for (var letdub in string.split("")){ // считаем повторения буквы
          if (let == letdub)
            val++;
        }
        lav.add(LetterAndVolue(let, val)); // Записываем букву и кол-во повторений
      }
    }

    // Выводим список
    lav.forEach((element) {
      print("${element.letter} - ${(element.volue/string.length*100).round()}%");
    });
    }

  bool ChackDuplicate(List<LetterAndVolue> lav, String letter){
    for (var vol in lav){
      if (vol.letter == letter){
        return true;
      }
    }
    return false;
  }
}

// Ч - 1%
// а - 15%
// с - 15%
// т - 10%
// о - 10%
// н - 4%
// ь - 1%
// р - 3%
// у - 4%
// к - 7%
// г - 3%
// л - 2%
// ф - 1%
// в - 6%
// и - 2%
// ч - 3%
// е - 4%
// я - 2%
// д - 1%
// б - 1%
// м - 1%
// й - 1%