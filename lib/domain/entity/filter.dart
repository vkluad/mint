import 'package:flutter/material.dart';

class Filter {
  Filter({
    required this.priceRange,
    required this.specialties,
    required this.experienceRange,
  });
  RangeValues priceRange;
  List<String> specialties;
  List<RangeValues> experienceRange;
}
