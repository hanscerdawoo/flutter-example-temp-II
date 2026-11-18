import 'package:app_dev/presentation/api_demo/core/api.dart';
import 'package:app_dev/presentation/api_demo/models/info_characters.dart';
import 'package:app_dev/shared/widgets/custom_app_bar.dart';
import 'package:app_dev/shared/widgets/custom_button.dart';
import 'package:app_dev/shared/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

class ApiDemo extends StatefulWidget {
  const ApiDemo({super.key});

  @override
  State<ApiDemo> createState() => _ApiDemoState();
}

class _ApiDemoState extends State<ApiDemo> {
  List<InfoCharacters> arrayCharacters = [];
  @override
  void initState() {
    cargarPersonajes();
    super.initState();
  }

  Future cargarPersonajes() async {
    Api api = Api();
    arrayCharacters = await api.getCharacters();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Scaffold(
      appBar: CustomAppBar(titleAppBar: 'API Demo'),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10.0,
          children: [
            CustomButton(
              titleButton: 'Ejecutar API',
              onAction: () {
                cargarPersonajes();
                setState(() {});
              },
              customBackgroundColor: theme.primaryColor,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: arrayCharacters.length,
                itemBuilder: (context, index) {
                  var item = arrayCharacters[index];
                  return CustomListTile(
                    title: '${item.fullName} - ${item.title}',
                    subTitle: item.family,
                    customLeading: CircleAvatar(
                      child: Image.network(
                        item.imageUrl,
                        errorBuilder: (context, error, stackTrace) =>
                            Icon(Icons.photo),
                      ),
                    ),
                    action: () {},
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
