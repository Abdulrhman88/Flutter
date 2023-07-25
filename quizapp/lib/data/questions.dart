import 'package:quizapp/models/quiz_question.dart';

const questions = [
  QuizQuestion("What are the main building blocks for Flutter UIs? ",
  [
    'Widgets',
    'Components',
    'Blocks',
    'Functions',
  ],),

QuizQuestion("How are Flutter UIs built ?",
[
  'By combining widgets in code ',
  'By combining widgets in Visual editor ',
  'By defining widgets in config files  ',
  'By using XCode for IOS and Android Studio for Andriod ',
],),

QuizQuestion('What the purpose of StatefulWidget ?',
[
'update UI data changes',
'update data as UI changes ',
'Ignore data changes ',
'Render UI that does not depned on data ',
]),

QuizQuestion("what happens if you change data in Statelesswidget?", 
[
  "The UI is not updated",
  "The UI is updated",
  'The Closest StatefulWidget is updated',
  'Any nested StatefulWidget are updated ',
]),

QuizQuestion("How should you update data inside of StaefulWidgets",
 [
  'By calling setState()',
  'By calling updateData()',
  'By calling updateUI()',
  'By calling updateState()',
])

  
];
