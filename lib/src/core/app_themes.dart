import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:harry_potter_app/src/core/app_colors.dart';

class AppThemes {
  static ThemeData defaultTheme(BuildContext context) =>
      ThemeData.dark().copyWith(
        primaryColor: AppColors.primary,
        canvasColor: AppColors.primary,
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme.of(context).copyWith(
          backgroundColor: AppColors.primary,
          elevation: 0.0,
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: AppColors.primary,
          ),
        ),
        cardTheme: Theme.of(context).cardTheme.copyWith(
              color: Colors.grey.shade600,
            ),
        floatingActionButtonTheme:
            Theme.of(context).floatingActionButtonTheme.copyWith(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
          ),
        ),
        iconTheme: IconTheme.of(context).copyWith(
          color: AppColors.primary,
        ),
        primaryIconTheme: IconTheme.of(context).copyWith(
          color: AppColors.primary,
        ),
        buttonTheme: ButtonTheme.of(context).copyWith(
          buttonColor: AppColors.primary,
        ),
        textTheme: GoogleFonts.robotoMonoTextTheme(
          Theme.of(context).textTheme.apply(
                bodyColor: AppColors.fontColor,
                displayColor: AppColors.fontColor,
              ),
        ),
      );
}
