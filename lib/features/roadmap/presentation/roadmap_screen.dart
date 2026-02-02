
import 'package:flutter/material.dart';

class RoadmapPage extends StatelessWidget {
  const RoadmapPage({super.key});

  final List<Map<String, dynamic>> _semesters = const [
    {
      'title': 'المستوى الأول',
      'courses': [
        {'name': 'مقدمة في علوم الحاسب', 'code': 'CS101'},
        {'name': 'رياضيات 1', 'code': 'MATH101'},
        {'name': 'فيزياء 1', 'code': 'PHYS101'},
        {'name': 'مهارات التفكير والتعلم', 'code': 'SKL101'},
      ]
    },
    {
      'title': 'المستوى الثاني',
      'courses': [
        {'name': 'برمجة 1', 'code': 'CS102'},
        {'name': 'رياضيات 2', 'code': 'MATH102'},
        {'name': 'كتابة تقنية', 'code': 'ENGL101'},
        {'name': 'إحصاء واحتمالات', 'code': 'STAT101'},
      ]
    },
    {
      'title': 'المستوى الثالث',
      'courses': [
        {'name': 'برمجة 2', 'code': 'CS201'},
        {'name': 'تراكيب البيانات', 'code': 'CS210'},
        {'name': 'رياضيات متقطعة', 'code': 'MATH201'},
      ]
    },
    {
      'title': 'المستوى الرابع',
      'courses': [
        {'name': 'خوارزميات', 'code': 'CS220'},
        {'name': 'قواعد البيانات', 'code': 'CS310'},
        {'name': 'نظم التشغيل', 'code': 'CS330'},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('خارطة الطريق الأكاديمية'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: _semesters.length,
        itemBuilder: (context, index) {
          final semester = _semesters[index];
          return Card(
            elevation: 2,
            margin: const EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ExpansionTile(
              leading: CircleAvatar(
                backgroundColor: Theme.of(context).primaryColor,
                child: Text(
                  (index + 1).toString(),
                  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              title: Text(
                semester['title'],
                style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
              children: (semester['courses'] as List).map<Widget>((course) {
                return ListTile(
                  title: Text(course['name'], style: textTheme.titleMedium),
                  subtitle: Text(course['code'], style: textTheme.bodySmall),
                  leading: const Icon(Icons.book_outlined, color: Colors.grey),
                );
              }).toList(),
            ),
          );
        },
      ),
    );
  }
}
