import 'package:CCHAIN/helpers/colors.dart';
import 'package:CCHAIN/helpers/text_theme.dart';
import 'package:CCHAIN/screens/home/startScreen.dart';
import 'package:flutter/material.dart';

class ReduceEmissionScreen extends StatelessWidget {
  static const routeName = "/reduce-carbon-footprint";

  List<Widget> getWidgetTree() {
    final List reduceCarbonFootPrintmsgs = [
      {
        'icon': Icons.hot_tub,
        'title': 'Reduce emissions due to household activities',
        'options': [
          {
            'icon': Icons.do_not_disturb_alt,
            'message': 'Do not forget to switch off the lights or unplug your electronic devices when they are not in use',
          },
          {
            'icon': Icons.done_outline,
            'message': 'Lower the amount of energy used to pump,treat and heat water by washing your car less often, using climate-appropriate plants in garden',
          },
          {
            'icon': Icons.do_not_disturb_alt,
            'message': "Don't set thermostat too high or low. Install a programmable model to turn off the heat or air conditioning when you're not at home",
          },
        ],
      },
      {
        'icon': Icons.card_travel,
        'title': 'Reduce emissions due to your commutes',
        'options': [
          {
            'icon': Icons.do_not_disturb_alt,
            'message': 'Do not unnecessarily speed up or accelerate,it increases the mileage upto 33%, waste gas, money and increases carbon emission',
          },
          {
            'icon': Icons.done_outline,
            'message': 'When possible,walk or ride your bike in order to avoid carbon emission completely',
          },
          {
            'icon': Icons.do_not_disturb_alt,
            'message': "Don't buy a minivan or SUV if you don't need 4WD and/or will ocassionally need extra space",
          },
        ],
      },
      {
        'icon': Icons.fastfood,
        'title': 'Reduce emissions due to food activities',
        'options': [
          {
            'icon': Icons.do_not_disturb_alt,
            'message': 'Stop wasting food!',
          },
          {
            'icon': Icons.done_outline,
            'message': 'Eat low on the food chain',
          },
          {
            'icon': Icons.do_not_disturb_alt,
            'message': "Don't eat excess calories!",
          },
        ],
      },
    ];

    final List<Widget> parentWidgetTree = [];

    for (final reduceEmissionData in reduceCarbonFootPrintmsgs) {
      List<Widget> widgetTree = [];

      widgetTree.add(
        const SizedBox(
          height: 15,
        ),
      );

      final Widget cardHeader = ListTile(
        leading: Icon(
          reduceEmissionData['icon'],
          color: ColorPallete.color3,
        ),
        title: CoolText(
          reduceEmissionData['title'],
          fontSize: 17, letterSpacing: 0,
        ),
      );

      widgetTree.add(cardHeader);

      final List<Widget> sectionDivider = [
        const SizedBox(
          height: 8,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Divider(
            thickness: 1,
            color: ColorPallete.color6,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
      ];

      widgetTree = [...widgetTree, ...sectionDivider];

      for (final option in reduceEmissionData['options']) {
        final Widget optionWidget = ListTile(
          leading: Icon(
            option['icon'],
            color: ColorPallete.color3,
          ),
          title: Text(
            option['message'],
            style: const TextStyle(
              color: ColorPallete.color3,
            ),
          ),
        );

        widgetTree.add(optionWidget);
      }

      widgetTree.add(
        const SizedBox(
          height: 10,
        ),
      );

      final Widget parentWidget = Container(
        padding: const EdgeInsets.all(8),
        width: double.infinity,
        child: Card(
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: ColorPallete.cardBackground,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgetTree,
            ),
          ),
        ),
      );

      parentWidgetTree.add(parentWidget);
    }

    return parentWidgetTree;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallete.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container(
            //   color: ColorPallete.cardBackground,
            //   child: SizedBox(
            //     height: MediaQuery.of(context).size.height / 6,
            //     width: double.infinity,
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         Padding(
            //           padding: const EdgeInsets.all(10),
            //           child: CoolText(
            //             "Reduce your carbon footprint",
            //             fontSize: 18,
            //             letterSpacing: 1.1,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            const SizedBox(
              height: 30,
            ),
            ...getWidgetTree(),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox( // Wrapped with SizedBox to limit width
            width: MediaQuery.of(context).size.width / 4, // Adjust width as needed
            child: FloatingActionButton.extended(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              backgroundColor: ColorPallete.cardBackground.withBlue(150),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  StartScreen.routeName,
                );
              },
              label: const Text(
                "Home",
                style: TextStyle(
                  color: ColorPallete.color3,
                ),
              ),
              icon: const Icon(
                Icons.home,
                color: ColorPallete.color3,
              ),
            ),
          ),
          SizedBox( // Wrapped with SizedBox to limit width
            width: MediaQuery.of(context).size.width / 4, // Adjust width as needed
            child: FloatingActionButton.extended(
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              backgroundColor: ColorPallete.cardBackground.withBlue(150),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  StartScreen.routeName,
                );
              },
              label: const Text(
                "Sink",
                style: TextStyle(
                  color: ColorPallete.color3,
                ),
              ),
              icon: const Icon(
                Icons.energy_savings_leaf,
                color: ColorPallete.color3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
