import 'package:flutter/material.dart';

class AppTheme {
  static final ColorScheme _colorScheme = const ColorScheme(
    brightness: Brightness.light,

    // Primary (Soft Blue)
    primary: Color(0xFF7DA7D9),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFDBE7F6),
    onPrimaryContainer: Color(0xFF203047),

    // Secondary (Soft Purple)
    secondary: Color(0xFFC7B7E5),
    onSecondary: Color(0xFF33294A),
    secondaryContainer: Color(0xFFEDE6F7),
    onSecondaryContainer: Color(0xFF2C2240),

    // Tertiary (Pastel Peach)
    tertiary: Color(0xFFF3C5A1),
    onTertiary: Color(0xFF4A2C20),
    tertiaryContainer: Color(0xFFFFE8D9),
    onTertiaryContainer: Color(0xFF3A2015),

    // Surface palette
    surface: Color(0xFFFAFAFA),
    onSurface: Color(0xFF1F1F1F),
    onSurfaceVariant: Color(0xFF46494E),
    surfaceContainerHighest: Color(0xFFE7E9ED),

    // Borders
    outline: Color(0xFFB8BCC2),
    outlineVariant: Color(0xFFDFE1E5),

    // Error
    error: Color(0xFFE28B8B),
    onError: Color(0xFFFFFFFF),
    errorContainer: Color(0xFFF8DADA),
    onErrorContainer: Color(0xFF5E1F1F),

    // Misc
    inverseSurface: Color(0xFF303030),
    onInverseSurface: Color(0xFFF0F0F0),
    inversePrimary: Color(0xFFB3C9EB),
    surfaceTint: Color(0xFF7DA7D9),
    scrim: Color(0xFF000000),
  );

  static ColorScheme get colors => _colorScheme;

  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      colorScheme: _colorScheme,

      // -------------------------
      // Typography (Full M3)
      // -------------------------
      textTheme: const TextTheme(
        headlineLarge: TextStyle(fontWeight: FontWeight.w600, fontSize: 32),
        headlineMedium: TextStyle(fontWeight: FontWeight.w600, fontSize: 28),
        headlineSmall: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
        bodyLarge: TextStyle(fontSize: 16, height: 1.4),
        bodyMedium: TextStyle(fontSize: 14, height: 1.4),
        bodySmall: TextStyle(fontSize: 12, height: 1.4),
        labelLarge: TextStyle(fontWeight: FontWeight.w600),
      ),

      // -------------------------
      // AppBar
      // -------------------------
      appBarTheme: AppBarTheme(
        backgroundColor: _colorScheme.primaryContainer,
        foregroundColor: _colorScheme.onPrimaryContainer,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),

      // -------------------------
      // NavigationBar (Bottom Nav)
      // -------------------------
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: _colorScheme.surface,
        indicatorColor: _colorScheme.primaryContainer,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        elevation: 3,
      ),

      // -------------------------
      // FAB
      // -------------------------
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: _colorScheme.primary,
        foregroundColor: _colorScheme.onPrimary,
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),

      // -------------------------
      // Buttons
      // -------------------------
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: _colorScheme.primary,
          foregroundColor: _colorScheme.onPrimary,
          textStyle: const TextStyle(fontWeight: FontWeight.w600),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        ),
      ),

      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: _colorScheme.primary,
          side: BorderSide(color: _colorScheme.outline),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: _colorScheme.primary),
      ),

      // -------------------------
      // Card
      // -------------------------
      cardTheme: CardThemeData(
        elevation: 1,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        color: _colorScheme.tertiaryContainer,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),

      // -------------------------
      // TextField
      // -------------------------
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: _colorScheme.surfaceContainerHighest,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
      ),

      // -------------------------
      // ListTile
      // -------------------------
      listTileTheme: ListTileThemeData(
        tileColor: _colorScheme.surface,
        iconColor: _colorScheme.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),

      // -------------------------
      // Divider
      // -------------------------
      dividerTheme: DividerThemeData(
        color: _colorScheme.outlineVariant,
        space: 24,
        thickness: 1,
      ),

      // -------------------------
      // Chips
      // -------------------------
      chipTheme: ChipThemeData(
        backgroundColor: _colorScheme.secondaryContainer,
        selectedColor: _colorScheme.primaryContainer,
        disabledColor: _colorScheme.surfaceContainerHighest,
        labelStyle: TextStyle(color: _colorScheme.onSecondaryContainer),
        secondaryLabelStyle: TextStyle(color: _colorScheme.onPrimaryContainer),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        brightness: Brightness.light,
      ),

      // -------------------------
      // Dialogs
      // -------------------------
      dialogTheme: DialogThemeData(
        backgroundColor: _colorScheme.surface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),

      // -------------------------
      // BottomSheet
      // -------------------------
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: _colorScheme.surface,
        elevation: 3,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
      ),

      // -------------------------
      // SnackBar
      // -------------------------
      snackBarTheme: SnackBarThemeData(
        backgroundColor: _colorScheme.primary,
        contentTextStyle: TextStyle(color: _colorScheme.onPrimary),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),

      // -------------------------
      // Icon Theme
      // -------------------------
      iconTheme: IconThemeData(color: _colorScheme.primary, size: 22),

      // -------------------------
      // Dropdown Theme
      // -------------------------
      dropdownMenuTheme: DropdownMenuThemeData(
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: _colorScheme.surfaceContainerHighest,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(color: _colorScheme.outline),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(color: _colorScheme.primary),
          ),
        ),
        textStyle: TextStyle(color: _colorScheme.onSurface, fontSize: 16),
        menuStyle: MenuStyle(
          backgroundColor: WidgetStatePropertyAll(_colorScheme.surface),
          elevation: WidgetStatePropertyAll(3),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}
