import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:use_dev/constants/app_colors.dart';

// Seção de informações com a imagem hero e textos
class InfoSectionWidget extends StatelessWidget {
  const InfoSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Image.asset(
          'assets/Banner.png',
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Image.asset(
                'assets/Imagem Hero Mobile.png',
                height: 539,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            
            Text(
              'Hora de\nabraçar',
              textAlign: TextAlign.center,
              style: GoogleFonts.orbitron(
                fontSize: 55,
                fontWeight: FontWeight.w600,
                color: AppColors.accentPink,
                height: 1.1,
              ),
            ),
            
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: GoogleFonts.orbitron(
                  fontSize: 55,
                  fontWeight: FontWeight.w600,
                  height: 1.1,
                ),
                children: [
                  const TextSpan(
                    text: 'seu ',
                    style: TextStyle(color: AppColors.accentPink),
                  ),
                  const TextSpan(
                    text: 'fogo',
                    style: TextStyle(color: AppColors.accentGreen),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 40),
          ],
        ),
      ],
    );
  }
}
