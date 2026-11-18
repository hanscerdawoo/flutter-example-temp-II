import 'package:app_dev/global/constants.dart';
import 'package:app_dev/presentation/api_demo/models/info_characters.dart';
import 'package:app_dev/presentation/api_demo/providers/api_demo_provider.dart';
import 'package:app_dev/shared/widgets/custom_app_bar.dart';
import 'package:app_dev/shared/widgets/custom_button.dart';
import 'package:app_dev/shared/widgets/custom_card_characters.dart';
import 'package:app_dev/shared/widgets/custom_list_tile.dart';
import 'package:app_dev/shared/widgets/custom_loading.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ApiDemo2 extends StatelessWidget {
  const ApiDemo2({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<ApiDemoProvider>();
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
                provider.loadCharacters();
              },
              customBackgroundColor: theme.primaryColor,
            ),
            Expanded(
              child: provider.isLoading
                  ? CustomLoading()
                  : LayoutBuilder(
                      builder: (context, constraints) {
                        var size = constraints.maxWidth;
                        if (size >= Constants.breakPointDesktop) {
                          return _DesktopViewWidget();
                        }
                        if (size >= Constants.breakPointTablet) {
                          return _TabletViewWidget(
                            characters: provider.characters,
                          );
                        } else {
                          return _MobileViewWidget(
                            characters: provider.characters,
                          );
                        }
                      },
                    ),
            ),
            // _MobileViewWidget(provider: provider),
          ],
        ),
      ),
    );
  }
}

class _MobileViewWidget extends StatelessWidget {
  final List<InfoCharacters> characters;

  const _MobileViewWidget({required this.characters});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: characters.length,
      itemBuilder: (context, index) {
        var item = characters[index];
        return CustomListTile(
          title: '${item.fullName} - ${item.title}',
          subTitle: item.family,
          customLeading: CircleAvatar(
            child: Image.network(
              item.imageUrl,
              errorBuilder: (context, error, stackTrace) => Icon(Icons.photo),
            ),
          ),
          action: () {},
        );
      },
    );
  }
}

class _TabletViewWidget extends StatelessWidget {
  final List<InfoCharacters> characters;
  const _TabletViewWidget({required this.characters});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: characters.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisExtent: 350,
        mainAxisSpacing: 15,
      ),
      itemBuilder: (context, index) {
        var item = characters[index];

        return CustomCardCharacters(
          imageUrl: item.imageUrl,
          name: '${item.fullName} -> ${item.title}',
          description: item.family,
        );
      },
    );
  }
}

class _DesktopViewWidget extends StatelessWidget {
  const _DesktopViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
