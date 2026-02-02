
import 'dart:math';
import 'package:flutter/material.dart';

class RestPage extends StatefulWidget {
  const RestPage({super.key});

  @override
  State<RestPage> createState() => _RestPageState();
}

class _RestPageState extends State<RestPage> {
  final List<String> _quotes = [
    "النجاح ليس نهائيًا، والفشل ليس قاتلًا: إنما الشجاعة لمواصلة الطريق هي التي تهم.",
    "لا تخف من التخلي عن الجيد للحصول على الأفضل.",
    "الفرص لا تحدث، بل أنت من يصنعها.",
    "الطريق إلى النجاح دائمًا قيد الإنشاء.",
    "آمن بنفسك، فأنت أشجع مما تعتقد، وأكثر موهبة مما تتخيل، وقادر على أكثر مما تتصور.",
    "ابدأ من حيث أنت. استخدم ما لديك. افعل ما تستطيع."
  ];

  late String _currentQuote;

  @override
  void initState() {
    super.initState();
    _currentQuote = _quotes[Random().nextInt(_quotes.length)];
  }

  void _generateQuote() {
    setState(() {
      _currentQuote = _quotes[Random().nextInt(_quotes.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('استراحة محارب'),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Theme.of(context).primaryColor.withOpacity(0.8),
              Colors.teal.withOpacity(0.6),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(24.0),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.white.withOpacity(0.2)),
                  ),
                  child: Column(
                    children: [
                      const Icon(Icons.format_quote, size: 40, color: Colors.white),
                      const SizedBox(height: 16),
                      Text(
                        _currentQuote,
                        textAlign: TextAlign.center,
                        style: textTheme.headlineSmall?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                ElevatedButton.icon(
                  onPressed: _generateQuote,
                  icon: const Icon(Icons.refresh),
                  label: const Text('اقتباس جديد'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Theme.of(context).primaryColor,
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    textStyle: textTheme.titleLarge,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
