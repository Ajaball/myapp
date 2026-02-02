
import 'package:flutter/material.dart';

class ExamListScreen extends StatelessWidget {
  final String examTypeName;
  const ExamListScreen({super.key, required this.examTypeName});

  @override
  Widget build(BuildContext context) {
    // In a real app, you would fetch the exams for the given type
    final List<String> exams = [
      'نموذج اختبار تجريبي 1',
      'نموذج اختبار تجريبي 2',
      'نموذج اختبار 1445 هـ',
      'نموذج اختبار 1444 هـ',
    ];

    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(examTypeName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: exams.length,
          itemBuilder: (context, index) {
            final examName = exams[index];
            return Card(
              elevation: 2,
              margin: const EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: const Icon(Icons.assignment_outlined, size: 30),
                title: Text(examName, style: textTheme.titleMedium),
                trailing: const Icon(Icons.download_for_offline_outlined),
                onTap: () {
                  // TODO: Implement exam download/view functionality
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

