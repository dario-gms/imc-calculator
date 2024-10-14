class IMCUtils {
  static const String imcLabel = 'Seu IMC é: ';
  static const String classificationLabel = 'Classificação: ';
  static const String imcButtonLabel = 'Calcular IMC';
  static const String heightLabel = 'Altura (cm)';
  static const String heightValidationMessage = 'Por favor, insira sua altura';
  static const String weightLabel = 'Peso (kg)';
  static const String weightValidationMessage = 'Por favor, insira seu peso';

  static String formatIMC(double imc) {
    return imc.toStringAsFixed(2);
  }
}
