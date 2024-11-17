import 'dart:math';

class CalculatorBrain {
  // Constructor yêu cầu height và weight không null
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  late double
      _bmi; // Đánh dấu _bmi là non-nullable nhưng chưa được khởi tạo ngay

  // Tính toán BMI và trả về dưới dạng chuỗi
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1); // Chỉ lấy 1 chữ số thập phân
  }

  // Trả về kết quả BMI
  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  // Trả về lời khuyên dựa trên BMI
  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
