import 'package:app_dev/routes/app_routes.dart';
import 'package:app_dev/shared/widgets/custom_app_bar.dart';
import 'package:app_dev/shared/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: CustomAppBar(titleAppBar: ''),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          spacing: 15.0,
          children: [
            CustomButton(
              titleButton: 'Contador',
              onAction: () =>
                  Navigator.pushNamed(context, AppRoutes.counterOriginal),
              customBackgroundColor: theme.primaryColor,
            ),
            CustomButton(
              titleButton: 'Contador de la clase',
              onAction: () =>
                  Navigator.pushNamed(context, AppRoutes.counterClass),
              customBackgroundColor: Colors.lightBlue,
            ),

            CustomButton(
              titleButton: 'Tienda en linea',
              onAction: () => Navigator.pushNamed(context, AppRoutes.sales),
              customBackgroundColor: theme.primaryColorDark,
            ),
            CustomButton(
              titleButton: 'API REST',
              onAction: () => Navigator.pushNamed(context, AppRoutes.apiRest),
              customBackgroundColor: Colors.teal,
            ),
          ],
        ),
      ),
    );
  }
}
