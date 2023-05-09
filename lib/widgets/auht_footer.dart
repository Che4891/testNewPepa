import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:sales_power/theme/app_colors.dart';

class AuthFooter extends StatelessWidget {
  const AuthFooter({super.key});

  _aboutCompany() async {
    final Uri _companyUrl = Uri.parse('https://www.sales_power.io/impressum');
    if (!await launchUrl(_companyUrl)) {
      throw Exception('Could not launch $_companyUrl');
    }
  }
  _terms() async {
    final Uri _termsUrl = Uri.parse('https://www.sales_power.io/agb');
    if (!await launchUrl(_termsUrl)) {
      throw Exception('Could not launch $_termsUrl');
    }
  }
  _privacy() async {
    final Uri _privacyUrl = Uri.parse('https://www.sales_power.io/datenschutz');
    if (!await launchUrl(_privacyUrl)) {
      throw Exception('Could not launch $_privacyUrl');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: _aboutCompany,
            child: Text(
              'Impressum',
              style: TextStyle(color: AppColors.whiteColor, fontSize: 12),
            ),
          ),
          const SizedBox(width: 5,),
          TextButton(
            onPressed: _terms,
            child: Text(
              'Allgemeine Geschäftsbedingungen',
              style: TextStyle(color: AppColors.whiteColor, fontSize: 12),
            ),
          ),
          const SizedBox(width: 5,),
          TextButton(
            onPressed: _privacy,
            child: Text(
              'Datenschutzerklärung',
              style: TextStyle(color: AppColors.whiteColor, fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
