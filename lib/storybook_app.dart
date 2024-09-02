import 'package:flutter/material.dart';
import 'package:trinity/core/deck.dart';
import 'package:trinity/storybook/storybook.dart';
import 'package:trinity/ui/widgets/card/hand.dart';
import 'package:trinity/ui/widgets/card/trinity_card.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const StorybookApp());
}

class StorybookApp extends StatelessWidget {
  const StorybookApp({super.key});

  @override
  Widget build(BuildContext context) {
    const miniWidth = 100.0;
    const miniHeigth = 180.0;
    const miniTitleFontSize = 10.0;
    const miniDescriptionFontSize = 6.0;
    const miniIconSize = 10.0;
    const miniValueFontSize = 10.0;

    return const MaterialApp(
      home: Scaffold(
        body: Storybook(
          widgets: [
            TrinityCard(
              card: Deck.dragon,
              width: 180,
              heigth: 320,
              titleFontSize: 16,
              descriptionFontSize: 12,
              iconSize: 16,
              valueFontSize: 22,
            ),
            TrinityCard(
              card: Deck.grifon,
              width: 180,
              heigth: 320,
              titleFontSize: 16,
              descriptionFontSize: 12,
              iconSize: 16,
              valueFontSize: 22,
            ),
            Hand(
              cardList: [
                TrinityCard(
                  card: Deck.dragon,
                  width: miniWidth,
                  heigth: miniHeigth,
                  titleFontSize: miniTitleFontSize,
                  descriptionFontSize: miniDescriptionFontSize,
                  iconSize: miniIconSize,
                  valueFontSize: miniValueFontSize,
                ),
                TrinityCard(
                  card: Deck.volk,
                  width: miniWidth,
                  heigth: miniHeigth,
                  titleFontSize: miniTitleFontSize,
                  descriptionFontSize: miniDescriptionFontSize,
                  iconSize: miniIconSize,
                  valueFontSize: miniValueFontSize,
                ),
                TrinityCard(
                  card: Deck.edinorog,
                  width: miniWidth,
                  heigth: miniHeigth,
                  titleFontSize: miniTitleFontSize,
                  descriptionFontSize: miniDescriptionFontSize,
                  iconSize: miniIconSize,
                  valueFontSize: miniValueFontSize,
                ),
                TrinityCard(
                  card: Deck.grifon,
                  width: miniWidth,
                  heigth: miniHeigth,
                  titleFontSize: miniTitleFontSize,
                  descriptionFontSize: miniDescriptionFontSize,
                  iconSize: miniIconSize,
                  valueFontSize: miniValueFontSize,
                ),
                TrinityCard(
                  card: Deck.dragon,
                  width: miniWidth,
                  heigth: miniHeigth,
                  titleFontSize: miniTitleFontSize,
                  descriptionFontSize: miniDescriptionFontSize,
                  iconSize: miniIconSize,
                  valueFontSize: miniValueFontSize,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
