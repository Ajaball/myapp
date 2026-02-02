
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdmissionPage extends StatelessWidget {
  const AdmissionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('التسجيل والقبول'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
        titleTextStyle: GoogleFonts.cairo(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            Icon(
              Icons.school_outlined,
              size: 100,
              color: Theme.of(context).primaryColor,
            ),
            const SizedBox(height: 20),
            Text(
              'مرحباً بك في بوابة القبول',
              textAlign: TextAlign.center,
              style: textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Text(
              'نحن سعداء بانضمامك إلينا. اتبع الخطوات التالية لإكمال عملية التسجيل.',
              textAlign: TextAlign.center,
              style: textTheme.titleMedium?.copyWith(color: Colors.grey[700]),
            ),
            const SizedBox(height: 40),
            _buildStepCard(
              context: context,
              icon: Icons.description_outlined,
              title: 'الخطوة 1: تعبئة النموذج',
              subtitle: 'املأ نموذج طلب الالتحاق بالمعلومات الشخصية والأكاديمية المطلوبة بدقة.',
            ),
            _buildStepCard(
              context: context,
              icon: Icons.upload_file_outlined,
              title: 'الخطوة 2: رفع المستندات',
              subtitle: 'قم برفع صور واضحة للشهادات والمستندات الرسمية اللازمة للقبول.',
            ),
            _buildStepCard(
              context: context,
              icon: Icons.payment_outlined,
              title: 'الخطوة 3: دفع الرسوم',
              subtitle: 'أكمل عملية التسجيل بدفع رسوم طلب الالتحاق عبر القنوات المتاحة.',
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () {
                // TODO: Navigate to the registration form page
              },
              icon: const Icon(Icons.arrow_forward, color: Colors.white),
              label: const Text('ابدأ التسجيل الآن'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16),
                textStyle: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStepCard({required BuildContext context, required IconData icon, required String title, required String subtitle}) {
    final textTheme = Theme.of(context).textTheme;
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(icon, size: 40, color: Theme.of(context).primaryColor),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  Text(subtitle, style: textTheme.bodyMedium),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
