class IMCCalculator {
  final double height;
  final double weight;

  IMCCalculator({required this.height, required this.weight});

  double calculate() {
    if (height == 0) return 0;
    return weight / (height * height);
  }
}
