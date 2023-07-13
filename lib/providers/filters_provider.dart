import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Filter {
  glutonFree,
  lactoseFree,
  vegetarian,
  vegan
}

class FiltersNotifier extends StateNotifier<Map<Filter, bool>> {
  FiltersNotifier() : super({
    Filter.glutonFree: false,
    Filter.lactoseFree: false,
    Filter.vegetarian: false,
    Filter.vegan: false
  });

  void setFilter(Filter filter, bool isActive) {
    //state[filter] = isActive; // not allowed => mutating state
    state = {
      ...state,
      filter: isActive
    };
  }

}

final filtersProvider = StateNotifierProvider<FiltersNotifier, Map<Filter, bool>>((ref) => FiltersNotifier());