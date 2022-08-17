import 'package:thesis_s2022/entities/burger_item.dart';

/// Checks if value is in range of min and max value.
/// Returns min or max if exceeded.
double forkValue(double value, double min, double max) {
  if (value < min) {
    value = min;
  }
  if (value > max) {
    value = max;
  }
  return value;
}
