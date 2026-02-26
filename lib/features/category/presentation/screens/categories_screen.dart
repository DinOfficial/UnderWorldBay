import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:underworld_bay/features/shared/presentation/widgets/categories_list_card.dart';

import '../../../shared/presentation/providers/main_nav_holder_provider.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (_, _) {
        _onTapBackButton();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: context.read<MainNavHolderProvider>().backToHome,
            icon: Icon(Icons.arrow_back_ios_new_rounded),
          ),
          title: Text('Categories'),
        ),
        body: GridView.builder(
          itemCount: 40,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            mainAxisSpacing: 12,
          ),
          itemBuilder: (context, index) {
            return FittedBox(child: CategoriesCard());
          },
        ),
      ),
    );
  }

  void _onTapBackButton() {
    context.read<MainNavHolderProvider>().backToHome();
  }
}
