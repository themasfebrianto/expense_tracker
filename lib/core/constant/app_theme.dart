import 'package:flutter/material.dart';

class AppTheme {
  static final ColorScheme _lightColorScheme = const ColorScheme(
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

  static final ColorScheme _darkColorScheme = const ColorScheme(
    brightness: Brightness.dark,
    // Primary (Soft Blue - lebih gelap)
    primary: Color(0xFFA8C7F0),
    onPrimary: Color(0xFF0F1C2E),
    primaryContainer: Color(0xFF2A4668),
    onPrimaryContainer: Color(0xFFD4E3F8),
    // Secondary (Soft Purple - lebih gelap)
    secondary: Color(0xFFD8CAF5),
    onSecondary: Color(0xFF251C35),
    secondaryContainer: Color(0xFF3B3254),
    onSecondaryContainer: Color(0xFFE8DEF8),
    // Tertiary (Pastel Peach - lebih gelap)
    tertiary: Color(0xFFF8D4B8),
    onTertiary: Color(0xFF2E1A0D),
    tertiaryContainer: Color(0xFF4A3525),
    onTertiaryContainer: Color(0xFFFCE6D6),
    // Surface palette
    surface: Color(0xFF121212),
    onSurface: Color(0xFFE1E1E1),
    onSurfaceVariant: Color(0xFFC2C5CA),
    surfaceContainerHighest: Color(0xFF2D2F33),
    // Borders
    outline: Color(0xFF5D6167),
    outlineVariant: Color(0xFF404348),
    // Error
    error: Color(0xFFF2A6A6),
    onError: Color(0xFF601410),
    errorContainer: Color(0xFF8C1D18),
    onErrorContainer: Color(0xFFF9DEDC),
    // Misc
    inverseSurface: Color(0xFFE1E1E1),
    onInverseSurface: Color(0xFF1F1F1F),
    inversePrimary: Color(0xFF4A658A),
    surfaceTint: Color(0xFFA8C7F0),
    scrim: Color(0xFF000000),
  );

  static ColorScheme get lightColors => _lightColorScheme;
  static ColorScheme get darkColors => _darkColorScheme;

  static ThemeData get light {
    return ThemeData(
      colorScheme: lightColors,

      // -------------------------
      // AppBar
      // -------------------------
      appBarTheme: AppBarTheme(
        backgroundColor: lightColors.surface,
        foregroundColor: lightColors.onSurface,
        elevation: 1,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,
          color: lightColors.onSurface,
        ),
        iconTheme: IconThemeData(color: lightColors.primary),
      ),

      // -------------------------
      // NavigationBar (Bottom Nav)
      // -------------------------
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: lightColors.surface,
        indicatorColor: lightColors.primaryContainer,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        elevation: 2,
        iconTheme: WidgetStateProperty.all(
          IconThemeData(color: lightColors.onSurfaceVariant),
        ),
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return TextStyle(color: lightColors.onPrimaryContainer);
          }
          return TextStyle(color: lightColors.onSurfaceVariant);
        }),
      ),

      // -------------------------
      // FAB
      // -------------------------
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: lightColors.primary,
        foregroundColor: lightColors.onPrimary,
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),

      // -------------------------
      // Buttons
      // -------------------------
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: lightColors.primary,
          foregroundColor: lightColors.onPrimary,
          textStyle: const TextStyle(fontWeight: FontWeight.w600),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        ),
      ),

      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: lightColors.primary,
          foregroundColor: lightColors.onPrimary,
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: lightColors.primary,
          side: BorderSide(color: lightColors.primary),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: lightColors.primary,
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        ),
      ),

      // -------------------------
      // Card
      // -------------------------
      cardTheme: CardThemeData(
        elevation: 1,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        color: lightColors.surface,
        surfaceTintColor: lightColors.surfaceTint,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),

      // -------------------------
      // TextField
      // -------------------------
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: lightColors.surfaceContainerHighest,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: lightColors.outline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: lightColors.outline),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: lightColors.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: lightColors.error),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: lightColors.error, width: 2),
        ),
        labelStyle: TextStyle(color: lightColors.onSurfaceVariant),
        hintStyle: TextStyle(color: lightColors.onSurfaceVariant),
      ),

      // -------------------------
      // ListTile
      // -------------------------
      listTileTheme: ListTileThemeData(
        tileColor: lightColors.surface,
        iconColor: lightColors.primary,
        textColor: lightColors.onSurface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),

      // -------------------------
      // Divider
      // -------------------------
      dividerTheme: DividerThemeData(
        color: lightColors.outlineVariant,
        space: 24,
        thickness: 1,
      ),

      // -------------------------
      // Chips
      // -------------------------
      chipTheme: ChipThemeData(
        backgroundColor: lightColors.surfaceContainerHighest,
        selectedColor: lightColors.primaryContainer,
        disabledColor: lightColors.surfaceContainerHighest,
        labelStyle: TextStyle(color: lightColors.onSurface),
        secondaryLabelStyle: TextStyle(color: lightColors.onPrimaryContainer),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        brightness: Brightness.light,
        side: BorderSide.none,
      ),

      // -------------------------
      // Dialogs
      // -------------------------
      dialogTheme: DialogThemeData(
        backgroundColor: lightColors.surface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        titleTextStyle: TextStyle(
          color: lightColors.onSurface,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        contentTextStyle: TextStyle(color: lightColors.onSurface),
      ),

      // -------------------------
      // BottomSheet
      // -------------------------
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: lightColors.surface,
        elevation: 3,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
      ),

      // -------------------------
      // SnackBar
      // -------------------------
      snackBarTheme: SnackBarThemeData(
        backgroundColor: lightColors.inverseSurface,
        contentTextStyle: TextStyle(color: lightColors.onInverseSurface),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        actionTextColor: lightColors.primaryContainer,
      ),

      // -------------------------
      // Icon Theme
      // -------------------------
      iconTheme: IconThemeData(color: lightColors.primary, size: 22),

      // -------------------------
      // Dropdown Theme
      // -------------------------
      dropdownMenuTheme: DropdownMenuThemeData(
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: lightColors.surfaceContainerHighest,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(color: lightColors.outline),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(color: lightColors.outline),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(color: lightColors.primary, width: 2),
          ),
        ),
        textStyle: TextStyle(color: lightColors.onSurface, fontSize: 16),
        menuStyle: MenuStyle(
          backgroundColor: WidgetStatePropertyAll(lightColors.surface),
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
        color: lightColors.primary,
        linearTrackColor: lightColors.primaryContainer,
        circularTrackColor: lightColors.primaryContainer,
      ),
    );
  }

  static ThemeData get dark {
    final colors = darkColors;

    return ThemeData(
      colorScheme: colors,
      brightness: Brightness.dark,
      useMaterial3: true,

      // -------------------------
      // AppBar
      // -------------------------
      appBarTheme: AppBarTheme(
        backgroundColor: colors.surface,
        foregroundColor: colors.onSurface,
        elevation: 1,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,
          color: colors.onSurface,
        ),
        iconTheme: IconThemeData(color: colors.primary),
      ),

      // -------------------------
      // NavigationBar
      // -------------------------
      navigationBarTheme: NavigationBarThemeData(
        backgroundColor: colors.surface,
        indicatorColor: colors.primaryContainer,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
        elevation: 2,
        iconTheme: WidgetStateProperty.all(
          IconThemeData(color: colors.onSurfaceVariant),
        ),
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return TextStyle(color: colors.onPrimaryContainer);
          }
          return TextStyle(color: colors.onSurfaceVariant);
        }),
      ),

      // -------------------------
      // FAB
      // -------------------------
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colors.primary,
        foregroundColor: colors.onPrimary,
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),

      // -------------------------
      // Buttons
      // -------------------------
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colors.primary,
          foregroundColor: colors.onPrimary,
          textStyle: const TextStyle(fontWeight: FontWeight.w600),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        ),
      ),

      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: colors.primary,
          foregroundColor: colors.onPrimary,
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: colors.primary,
          side: BorderSide(color: colors.primary),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        ),
      ),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: colors.primary,
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        ),
      ),

      // -------------------------
      // Card
      // -------------------------
      cardTheme: CardThemeData(
        elevation: 1,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        color: colors.surface,
        surfaceTintColor: colors.surfaceTint,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),

      // -------------------------
      // TextField
      // -------------------------
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: colors.surfaceContainerHighest,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: colors.outline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: colors.outline),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: colors.primary, width: 2),
        ),
        labelStyle: TextStyle(color: colors.onSurfaceVariant),
        hintStyle: TextStyle(color: colors.onSurfaceVariant),
      ),

      // -------------------------
      // Others (ListTile, Divider, Chip, Dialog, etc)
      // -------------------------
      listTileTheme: ListTileThemeData(
        tileColor: colors.surface,
        iconColor: colors.primary,
        textColor: colors.onSurface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),

      dividerTheme: DividerThemeData(
        color: colors.outlineVariant,
        thickness: 1,
        space: 24,
      ),

      chipTheme: ChipThemeData(
        backgroundColor: colors.surfaceContainerHighest,
        selectedColor: colors.primaryContainer,
        disabledColor: colors.surfaceContainerHighest,
        labelStyle: TextStyle(color: colors.onSurface),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        brightness: Brightness.dark,
        side: BorderSide.none,
      ),

      dialogTheme: DialogThemeData(
        backgroundColor: colors.surface,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        titleTextStyle: TextStyle(
          color: colors.onSurface,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        contentTextStyle: TextStyle(color: colors.onSurface),
      ),

      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: colors.surface,
        elevation: 3,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
      ),

      snackBarTheme: SnackBarThemeData(
        backgroundColor: colors.inverseSurface,
        contentTextStyle: TextStyle(color: colors.onInverseSurface),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        actionTextColor: colors.primaryContainer,
      ),

      iconTheme: IconThemeData(color: colors.primary, size: 22),

      dropdownMenuTheme: DropdownMenuThemeData(
        textStyle: TextStyle(color: colors.onSurface, fontSize: 16),
        menuStyle: MenuStyle(
          backgroundColor: WidgetStatePropertyAll(colors.surface),
          elevation: WidgetStatePropertyAll(3),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),

      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: colors.primary,
        circularTrackColor: colors.primaryContainer,
        linearTrackColor: colors.primaryContainer,
      ),
    );
  }
}
