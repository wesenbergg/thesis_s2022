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
