# Calculadora de IMC

Este projeto é uma calculadora de Índice de Massa Corporal (IMC) desenvolvida em Flutter, permitindo que os usuários insiram sua altura e peso para calcular e classificar seu IMC.

## Objetivo

A calculadora de IMC tem como objetivo ajudar os usuários a monitorarem seu IMC, classificando os resultados em diferentes faixas de peso, como abaixo do peso, peso normal, sobrepeso, obesidade grau 1, 2 e 3.

## Estrutura do Projeto

```
/lib
  ├── main.dart
  ├── models
  │   ├── imc_calculator.dart
  │   └── imc_classification.dart
  ├── screens
  │   └── home_screen.dart
  ├── utils
  │   └── imc_utils.dart
  ├── widgets
  │   ├── imc_button.dart
  │   ├── imc_form.dart
  │   ├── imc_input_fields.dart
  │   └── imc_result.dart
```

### Arquivos Principais

- **main.dart**: Ponto de entrada do aplicativo Flutter.
- **models/imc_calculator.dart**: Contém a lógica para calcular o IMC.
- **models/imc_classification.dart**: Classifica o resultado do IMC.
- **screens/home_screen.dart**: Tela principal da calculadora, onde o formulário é exibido.
- **utils/imc_utils.dart**: Utilitários e constantes para formatação e exibição.
- **widgets/imc_form.dart**: Formulário onde o usuário insere seus dados.
- **widgets/imc_result.dart**: Exibe o resultado e a classificação do IMC.

## Funcionalidades

- Cálculo do IMC com base em altura e peso.
- Classificação do IMC de acordo com faixas como "Abaixo do Peso", "Peso Normal", "Sobrepeso", etc.
- Interface simples e responsiva.

## Como Executar

1. Clone o repositório:
   ```
   git clone https://github.com/seu-usuario/calculadora-imc.git
   ```
2. Navegue até o diretório do projeto:
   ```
   cd calculadora-imc
   ```
3. Execute o comando para obter as dependências:
   ```
   flutter pub get
   ```
4. Rode o projeto no emulador ou dispositivo conectado:
   ```
   flutter run
   ```

## Tecnologias Utilizadas

- **Flutter**: Framework para desenvolvimento de interfaces multiplataforma.
- **Dart**: Linguagem de programação usada no Flutter.

## Contribuição

Sinta-se à vontade para abrir issues ou enviar pull requests. Toda contribuição é bem-vinda!
