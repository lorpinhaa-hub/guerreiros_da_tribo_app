import 'package:flutter/material.dart';

class AppTema {
  static const Color verdeOficial = Color(0xFF007A2E);
  static const Color verdeClaro = Color(0xFF2E8B57);
  static const Color verdeEscuro = Color(0xFF005A20);
  static const Color branco = Colors.white;
  static const Color cinzaBorda = Color(0xFF9E9E9E);
  static const Color cinzaFundo = Color(0xFFF5F5F5);

  static ThemeData temaPrincipal() {
    return ThemeData(
      primaryColor: verdeOficial,
      scaffoldBackgroundColor: verdeOficial,
      colorScheme: ColorScheme.fromSeed(
        seedColor: verdeOficial,
        primary: verdeOficial,
        secondary: verdeClaro,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: verdeEscuro,
        foregroundColor: branco,
        elevation: 0,
        centerTitle: true,
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(color: branco, fontSize: 16),
        bodyMedium: TextStyle(color: branco, fontSize: 14),
        titleLarge: TextStyle(color: branco, fontSize: 20, fontWeight: FontWeight.bold),
        titleMedium: TextStyle(color: branco, fontSize: 18, fontWeight: FontWeight.w600),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: verdeEscuro.withOpacity(0.9),
        labelStyle: const TextStyle(color: branco),
        hintStyle: TextStyle(color: branco.withOpacity(0.6)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: cinzaBorda),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: cinzaBorda),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: verdeClaro, width: 2),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: verdeClaro,
          foregroundColor: branco,
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(color: cinzaBorda),
          ),
        ),
      ),
      cardTheme: CardTheme(
        color: verdeEscuro.withOpacity(0.95),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: cinzaBorda),
        ),
        elevation: 4,
      ),
    );
  }
}
