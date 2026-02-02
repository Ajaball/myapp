
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'features/major_selection/presentation/major_selection_screen.dart';
import 'features/exams/presentation/exam_list_screen.dart';
import 'features/housing/presentation/housing_screen.dart';
import 'features/roadmap/presentation/roadmap_screen.dart';
import 'features/rest/presentation/rest_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'features/admission/presentation/admission_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const StudentCompassApp(),
    ),
  );
}

class ThemeProvider with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  void toggleTheme() {
    _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class StudentCompassApp extends StatelessWidget {
  const StudentCompassApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = GoogleFonts.cairoTextTheme(Theme.of(context).textTheme);

    final lightTheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: const Color(0xFF00A79D),
      scaffoldBackgroundColor: const Color(0xFFF7F8FA),
      textTheme: textTheme,
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF00A79D),
        brightness: Brightness.light,
      ),
      useMaterial3: true,
    );

    final darkTheme = ThemeData(
      brightness: Brightness.dark,
      primaryColor: const Color(0xFF00A79D),
      scaffoldBackgroundColor: const Color(0xFF1A202C),
      textTheme: textTheme.apply(bodyColor: Colors.white, displayColor: Colors.white),
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF00A79D),
        brightness: Brightness.dark,
      ),
      useMaterial3: true,
    );

    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'بوصلة الطالب',
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: themeProvider.themeMode,
          home: const HomePage(),
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('ar', ''),
          ],
          locale: const Locale('ar'),
        );
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    MajorSelectionScreen(),
    AdmissionPage(),
    ExamsPage(),
    HousingPage(),
    RoadmapPage(),
    RestPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'اختر تخصصك',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.app_registration),
            label: 'التسجيل',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'نماذج',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'السكن',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'خارطة الطريق',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_cafe),
            label: 'استراحة',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        showUnselectedLabels: true,
      ),
    );
  }
}

class ExamsPage extends StatelessWidget {
  const ExamsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> examTypes = [
      {'name': 'اختبار القدرات العامة (قياس)', 'icon': Icons.lightbulb_outline},
      {'name': 'الاختبار التحصيلي', 'icon': Icons.school_outlined},
      {'name': 'اختبار STEP للغة الإنجليزية', 'icon': Icons.language},
      {'name': 'اختبارات القبول الجامعي', 'icon': Icons.account_balance},
    ];

    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('نماذج اختبارات القبول'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'اختر نوع الاختبار',
              style: textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: examTypes.length,
                itemBuilder: (context, index) {
                  final examType = examTypes[index];
                  return Card(
                    elevation: 2,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      leading: Icon(examType['icon'], size: 40, color: Theme.of(context).primaryColor),
                      title: Text(examType['name'], style: textTheme.titleLarge),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      onTap: () {
                         Navigator.push(
                           context,
                           MaterialPageRoute(
                             builder: (context) => ExamListScreen(examTypeName: examType['name']),
                           ),
                         );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
