import 'package:flutter/material.dart';
import 'package:provider_go_router_flutter_localizations_inherited_widget/src/core/style/colors.dart';

class ScanFoodPage extends StatelessWidget {
  const ScanFoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Text("Scan Food",style: TextStyle(fontSize: 32,color: AppColors.black),),
      ),
    );
  }
}
