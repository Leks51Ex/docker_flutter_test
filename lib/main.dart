import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _buildTheme(),
      debugShowCheckedModeBanner: false,
      home: ExpenseHomePage()
    );
  }
}


ThemeData _buildTheme(){
  const backgroundColor = Color(0xFF181B20);
  const accentColor = Color(0xFF6D9FC0);
  const surfaceColor = Color(0xFF22262D);

  
  
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: backgroundColor,
    colorScheme: ColorScheme.dark(
      primary: accentColor,
      surface: surfaceColor,
      onSurface: Color(0xFFE3E6EA),
      onPrimary: Color(0xFF101820),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: backgroundColor,
      foregroundColor: Color(0xFFE3E6EA),
      elevation: 0,
    ),
    dividerColor: Color(0xFF343441),
    cardTheme: CardThemeData(
      color: surfaceColor,
      elevation: 0,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        side: BorderSide(
          color: Color(0xFF343941),
        )
      )
    )
  );
}



class ExpenseHomePage extends StatelessWidget {
  const ExpenseHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(padding: EdgeInsets.all(32),
      child: Center(
        child: ConstrainedBox(constraints: BoxConstraints(
            maxWidth: 1200
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Expense tracker', style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.w600
            ),), 
            const SizedBox(height: 8,),
            Text('Личные финансы без лишнего шума', style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: Colors.white60
            ),),
            const SizedBox(height: 32,),
            Card(
              child: Padding(padding: EdgeInsets.all(24),
              child: SizedBox(
                width: double.infinity,
                child: Text('Здесь появится твоя финансовый обзор'),
              ),),
            )
          ],
        ),
        ),
      ),
      )),
    );
  }
}
