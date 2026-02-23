import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:underworld_bay/features/shared/presentation/providers/main_nav_holder_provider.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          context.read<MainNavHolderProvider>().updateIndex(0);
        }, icon: Icon(Icons.arrow_back_ios_new_rounded)),
      ),
    );
  }
}
