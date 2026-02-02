
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  final Map<int, String> answers;

  const ResultsScreen({super.key, required this.answers});

  // In a real app, this is where the analysis logic would go.
  // For now, we'll just display the selected answers.
  List<String> _getRecommendedMajors() {
    // Dummy logic: just return a fixed list for now.
    return ['الهندسة الميكانيكية', 'علوم الحاسب', 'إدارة الأعمال'];
  }

  @override
  Widget build(BuildContext context) {
    final recommendedMajors = _getRecommendedMajors();
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('النتائج والتوصيات'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'شكرًا لك على إكمال الاختبار!',
              style: textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
              'بناءً على إجاباتك، هذه هي التخصصات التي نوصي بها:',
              style: textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            Expanded(
              child: ListView.builder(
                itemCount: recommendedMajors.length,
                itemBuilder: (context, index) {
                  final major = recommendedMajors[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      leading: Icon(Icons.school_outlined, color: Theme.of(context).primaryColor),
                      title: Text(major, style: textTheme.titleLarge),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        // TODO: Navigate to major details screen
                      },
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              child: const Text('إعادة الاختبار'),
            ),
          ],
        ),
      ),
    );
  }
}
