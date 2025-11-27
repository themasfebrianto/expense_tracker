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
      // -------------------------
      // Typography (Full M3)
      // -------------------------
      textTheme: TextTheme(
        // Display styles
        displayLarge: TextStyle(
          fontSize: 57,
          fontWeight: FontWeight.w400,
          height: 1.12,
          letterSpacing: -0.25,
          color: _colorScheme.onSurface,
        ),
        displayMedium: TextStyle(
          fontSize: 45,
          fontWeight: FontWeight.w400,
          height: 1.15,
          color: _colorScheme.onSurface,
        ),
        displaySmall: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w400,
          height: 1.22,
          color: _colorScheme.onSurface,
        ),

        // Headline styles
        headlineLarge: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w600,
          height: 1.25,
          color: _colorScheme.onSurface,
        ),
        headlineMedium: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w600,
          height: 1.28,
          color: _colorScheme.onSurface,
        ),
        headlineSmall: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          height: 1.33,
          color: _colorScheme.onSurface,
        ),

        // Title styles
        titleLarge: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600,
          height: 1.27,
          color: _colorScheme.onSurface,
        ),
        titleMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          height: 1.5,
          letterSpacing: 0.15,
          color: _colorScheme.onSurface,
        ),
        titleSmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          height: 1.43,
          letterSpacing: 0.1,
          color: _colorScheme.onSurface,
        ),

        // Body styles
        bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          height: 1.5,
          letterSpacing: 0.5,
          color: _colorScheme.onSurface,
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          height: 1.43,
          letterSpacing: 0.25,
          color: _colorScheme.onSurface,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          height: 1.33,
          letterSpacing: 0.4,
          color: _colorScheme.onSurfaceVariant,
        ),

        // Label styles
        labelLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          height: 1.43,
          letterSpacing: 0.1,
          color: _colorScheme.onSurface,
        ),
        labelMedium: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          height: 1.33,
          letterSpacing: 0.5,
          color: _colorScheme.onSurface,
        ),
        labelSmall: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w600,
          height: 1.45,
          letterSpacing: 0.5,
          color: _colorScheme.onSurfaceVariant,
        ),
      ),

      // -------------------------
      // AppBar
      // -------------------------
      appBarTheme: AppBarTheme(
        backgroundColor: _colorScheme.surface,
        foregroundColor: _colorScheme.onSurface,
        elevation: 1,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,
          color: _colorScheme.onSurface,
        ),
        iconTheme: IconThemeData(color: _colorScheme.primary),
      ),

      // -------------------------
      // NavigationBar (Bottom Nav)
      // -------------------------
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: _colorScheme.surface,
        indicatorColor: _colorScheme.primaryContainer,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        elevation: 2,
        iconTheme: WidgetStateProperty.all(
          IconThemeData(color: _colorScheme.onSurfaceVariant),
        ),
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return TextStyle(color: _colorScheme.onPrimaryContainer);
          }
          return TextStyle(color: _colorScheme.onSurfaceVariant);
        }),
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
          backgroundColor: _colorScheme.primary,
          foregroundColor: _colorScheme.onPrimary,
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: _colorScheme.primary,
          side: BorderSide(color: _colorScheme.primary),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: _colorScheme.primary,
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        ),
      ),

      // -------------------------
      // Card
      // -------------------------
      cardTheme: CardThemeData(
        elevation: 1,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        color: _colorScheme.surface,
        surfaceTintColor: _colorScheme.surfaceTint,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),

      // -------------------------
      // TextField
      // -------------------------
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: _colorScheme.surfaceContainerHighest,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: _colorScheme.outline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: _colorScheme.outline),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: _colorScheme.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: _colorScheme.error),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: _colorScheme.error, width: 2),
        ),
        labelStyle: TextStyle(color: _colorScheme.onSurfaceVariant),
        hintStyle: TextStyle(color: _colorScheme.onSurfaceVariant),
      ),

      // -------------------------
      // ListTile
      // -------------------------
      listTileTheme: ListTileThemeData(
        tileColor: _colorScheme.surface,
        iconColor: _colorScheme.primary,
        textColor: _colorScheme.onSurface,
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
        backgroundColor: _colorScheme.surfaceContainerHighest,
        selectedColor: _colorScheme.primaryContainer,
        disabledColor: _colorScheme.surfaceContainerHighest,
        labelStyle: TextStyle(color: _colorScheme.onSurface),
        secondaryLabelStyle: TextStyle(color: _colorScheme.onPrimaryContainer),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        brightness: Brightness.light,
        side: BorderSide.none,
      ),

      // -------------------------
      // Dialogs
      // -------------------------
      dialogTheme: DialogThemeData(
        backgroundColor: _colorScheme.surface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        titleTextStyle: TextStyle(
          color: _colorScheme.onSurface,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        contentTextStyle: TextStyle(color: _colorScheme.onSurface),
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
        backgroundColor: _colorScheme.inverseSurface,
        contentTextStyle: TextStyle(color: _colorScheme.onInverseSurface),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        actionTextColor: _colorScheme.primaryContainer,
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
            borderSide: BorderSide(color: _colorScheme.outline),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(color: _colorScheme.outline),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(color: _colorScheme.primary, width: 2),
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

      // -------------------------
      // Progress Indicator
      // -------------------------
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: _colorScheme.primary,
        linearTrackColor: _colorScheme.primaryContainer,
        circularTrackColor: _colorScheme.primaryContainer,
      ),
    );
  }
}
