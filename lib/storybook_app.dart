import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return const ScreenUtilInit(
      designSize: Size(1920, 1080),
      child: MaterialApp(
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
      ),
    );
  }
}
