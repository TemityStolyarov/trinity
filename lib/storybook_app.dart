import 'package:flutter/material.dart';
import 'package:trinity/storybook/storybook.dart';
import 'package:trinity/ui/widgets/card/hand.dart';
import 'package:trinity/ui/widgets/card/trinity_card.dart';
import 'package:flutter_screen_scaling/flutter_screen_scaling.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const StorybookApp());
}

class StorybookApp extends StatelessWidget {
  const StorybookApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenScaleProperties(
      width: 1920,
      height: 1080,
      allowFontScaling: true,
      allowSubpixel: true,
    );

    return const MaterialApp(
      home: Scaffold(
        body: Storybook(
          widgets: [
            TrinityCard(
              title: 'Дракон',
              subtitle: '3B',
              description:
                  'Сбрось две карты Град со Двора врага на выбор; возьми одну карту Люд и одну карту Скот из Помойной ямы',
              value: 3,
              suitType: CardSuitType.beast,
              levelType: CardLevelType.third,
            ),
            TrinityCard(
              title: 'Грифон',
              subtitle: '2B',
              description:
                  'Один раз защищает любую карту от сброса; когда на свой Двор выкладывается Люд, возьми карту из Истока',
              value: 2,
              suitType: CardSuitType.beast,
              levelType: CardLevelType.third,
            ),
            Hand(
              cardList: [
                TrinityCard(
                  title: 'Дракон',
                  subtitle: '3B',
                  description:
                      'Сбрось две карты Град со Двора врага на выбор; возьми одну карту Люд и одну карту Скот из Помойной ямы',
                  value: 3,
                  suitType: CardSuitType.beast,
                  levelType: CardLevelType.third,
                ),
                TrinityCard(
                  title: 'Грифон',
                  subtitle: '2B',
                  description:
                      'Один раз защищает любую карту от сброса; когда на свой Двор выкладывается Люд, возьми карту из Истока',
                  value: 2,
                  suitType: CardSuitType.beast,
                  levelType: CardLevelType.third,
                ),
                TrinityCard(
                  title: 'Дракон',
                  subtitle: '3B',
                  description:
                      'Сбрось две карты Град со Двора врага на выбор; возьми одну карту Люд и одну карту Скот из Помойной ямы',
                  value: 3,
                  suitType: CardSuitType.beast,
                  levelType: CardLevelType.third,
                ),
                TrinityCard(
                  title: 'Грифон',
                  subtitle: '2B',
                  description:
                      'Один раз защищает любую карту от сброса; когда на свой Двор выкладывается Люд, возьми карту из Истока',
                  value: 2,
                  suitType: CardSuitType.beast,
                  levelType: CardLevelType.third,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
