import 'package:flutter/material.dart';
// import 'package:meals/screens/main_drawer.dart';
// import 'package:meals/screens/tabs.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FiltersScreenState();
  }
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _glutonFreeFilterSet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      // drawer: MainDrawer(onSelectScreen: (identifier) {
      //   Navigator.of(context).pop();
      //   if(identifier == 'meals') {
      //     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx) => const TabsScreen(),),);
      //   }
      // }),
      body: Column(
        children: [
          SwitchListTile(
            value: _glutonFreeFilterSet, 
            onChanged: (isChecked) {
              setState(() {
                _glutonFreeFilterSet = isChecked;
              });
            },
            title: Text(
              'Gluton free',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground
              ),
            ),
            subtitle: Text(
              'Only include gluton-free meal',
               style: Theme.of(context).textTheme.labelMedium!.copyWith(
                color: Theme.of(context).colorScheme.onBackground
              ),
            ),
            activeColor: Theme.of(context).colorScheme.tertiary,
            contentPadding: const EdgeInsets.only(left: 34, right: 22),
          ),
        ],
      ),
    );
  }
}