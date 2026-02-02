
import 'package:flutter/material.dart';
import '../domain/question.dart';
import 'results_screen.dart'; // Import the results screen

// Dummy data for the questionnaire
const List<Question> _questions = [
  Question(
    text: 'أي من هذه المواد تستمتع بدراستها أكثر؟',
    options: ['الرياضيات والفيزياء', 'الأحياء والكيمياء', 'التاريخ والأدب', 'الفنون والرسم'],
  ),
  Question(
    text: 'في أوقات فراغك، ماذا تفضل أن تفعل؟',
    options: [
      'حل الألغاز والمسائل المنطقية',
      'القراءة والبحث عن معلومات جديدة',
      'التواصل مع الناس ومساعدتهم',
      'صناعة الأشياء وتصميمها'
    ],
  ),
  Question(
    text: 'ما نوع المشاكل الذي يثير اهتمامك لحله؟',
    options: [
      'مشاكل تقنية وتحليلية',
      'مشاكل اجتماعية وإنسانية',
      'مشاكل إبداعية وفنية',
      'مشاكل علمية وتجريبية'
    ],
  ),
  Question(
    text: 'ما بيئة العمل التي تفضلها في المستقبل؟',
    options: [
      'مكتب هادئ ومنظم',
      'مختبر أو ورشة عمل',
      'ميدان عمل متغير وتفاعلي',
      'استوديو فني أو مساحة إبداعية'
    ],
  ),
  Question(
    text: 'ما هو هدفك الأساسي من التعليم الجامعي؟',
    options: [
      'الحصول على وظيفة مرموقة وراتب جيد',
      'إحداث تأثير إيجابي في المجتمع',
      'تنمية مهاراتي ومعرفتي الشخصية',
      'التعبير عن نفسي بشكل إبداعي'
    ],
  ),
];

class QuestionnaireScreen extends StatefulWidget {
  const QuestionnaireScreen({super.key});

  @override
  State<QuestionnaireScreen> createState() => _QuestionnaireScreenState();
}

class _QuestionnaireScreenState extends State<QuestionnaireScreen> {
  int _questionIndex = 0;
  final Map<int, String> _answers = {};

  void _handleOptionSelected(String? value) {
    if (value != null) {
      setState(() {
        _answers[_questionIndex] = value;
      });
    }
  }

  void _goToNextQuestion() {
    if (_questionIndex < _questions.length - 1) {
      setState(() {
        _questionIndex++;
      });
    } else {
      _navigateToResults();
    }
  }

  void _goToPreviousQuestion() {
    if (_questionIndex > 0) {
      setState(() {
        _questionIndex--;
      });
    }
  }

  void _navigateToResults() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => ResultsScreen(answers: _answers),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final currentQuestion = _questions[_questionIndex];
    final bool isLastQuestion = _questionIndex == _questions.length - 1;
    final bool isAnswerSelected = _answers.containsKey(_questionIndex);

    return Scaffold(
      appBar: AppBar(
        title: const Text('اختبار تحديد التخصص'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: LinearProgressIndicator(
            value: (_questionIndex + 1) / _questions.length,
            backgroundColor: Colors.grey[300],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'السؤال ${ArabicNumbers.convert(_questionIndex + 1)} من ${ArabicNumbers.convert(_questions.length)}',
              style: textTheme.titleMedium?.copyWith(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
              currentQuestion.text,
              style: textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            ...currentQuestion.options.map((option) {
              return RadioListTile<String>(
                title: Text(option, style: textTheme.titleMedium),
                value: option,
                groupValue: _answers[_questionIndex],
                onChanged: _handleOptionSelected,
                activeColor: Theme.of(context).primaryColor,
              );
            }),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (_questionIndex > 0)
                  TextButton.icon(
                    onPressed: _goToPreviousQuestion,
                    icon: const Icon(Icons.arrow_back_ios),
                    label: const Text('السابق'),
                  ),
                const Spacer(),
                ElevatedButton.icon(
                  onPressed: isAnswerSelected ? _goToNextQuestion : null,
                  icon: Icon(isLastQuestion ? Icons.check_circle : Icons.arrow_forward_ios),
                  label: Text(isLastQuestion ? 'إنهاء' : 'التالي'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Helper class for converting numbers to Arabic numerals
class ArabicNumbers {
  static String convert(int number) {
    const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    const arabic = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'];
    String numStr = number.toString();
    for (int i = 0; i < english.length; i++) {
      numStr = numStr.replaceAll(english[i], arabic[i]);
    }
    return numStr;
  }
}
