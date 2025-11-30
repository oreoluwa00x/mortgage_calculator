import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';

class homeview extends StatelessWidget {
  const homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Color(0xFF1A1A1A),
        systemNavigationBarColor: Color(0xFF1E1E1E),
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        backgroundColor: Color(0xFF1A1A1A),
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF2A2A2A),
                  border: Border.all(color: Color(0xFF3A3A3A), width: 1),
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/user/.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                children: const [
                  Icon(Iconsax.notification, color: Colors.white, size: 24),
                  SizedBox(width: 16),
                  Icon(Iconsax.notification, color: Colors.white, size: 24),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
