# 🎛️ DCP Console Changer (Flutter)

Projeto em **Flutter** com uma proposta simples: oferecer uma interface para **alterar/ajustar valores e configurações via console**, de forma prática e direta.

📌 Este projeto foi desenvolvido como **desafio de avaliação do Checkpoint 1** na matéria de **Desenvolvimento Cross Platform**.

---

## 🖼️ Prints do app

<p align="center">
  <img src="assets/images/screenshots/01.png" alt="Tela do app - Console 1" width="200" />
  <img src="assets/images/screenshots/02.png" alt="Tela do app - Console 2" width="200" />
  <img src="assets/images/screenshots/03.png" alt="Tela do app - Console 3" width="200" />
</p>

---

## 🧰 Tecnologias utilizadas

- 💙 **Flutter** (UI declarativa com widgets)
- 🎯 **Dart** (lógica e organização do projeto)

---

## 🧱 O que este projeto demonstra (na prática)

- 🧩 **Construção de telas e componentes** com Flutter
- 🗂️ **Organização de código** para manter o projeto legível
- 🔁 **Atualização de UI a partir de estado/ações do usuário** (fluxo simples e previsível)

---

## 🚀 Como rodar o app (passo a passo)

### 1) Pré-requisitos
- Ter o **Flutter** instalado e configurado no computador  
  (verifique com `flutter --version`)
- Ter um ambiente para executar o app:
  - **Android Studio** (emulador Android) **ou**
  - **Dispositivo Android** via USB (com depuração ativada) **ou**
  - **iPhone (iOS)** (necessita macOS + Xcode)

### 2) Clonar o repositório
```bash
git clone https://github.com/Fiszbejn/DCP_Console_Changer.git
cd DCP_Console_Changer
```

### 3) Instalar as dependências
Dentro da pasta do projeto:
```bash
flutter pub get
```

### 4) Verificar se existe um dispositivo disponível
Com emulador aberto ou celular conectado, rode:
```bash
flutter devices
```
Você deve ver pelo menos 1 dispositivo listado.

### 5) Rodar o app
```bash
flutter run
```

> Dica: se aparecer mais de um dispositivo, você pode escolher um pelo id:
```bash
flutter run -d <device_id>
```

### (Opcional) Rodar em modo release
```bash
flutter run --release
```

---

## 🛠️ Solução rápida de problemas

- Diagnóstico do ambiente:
```bash
flutter doctor
```

- Limpar e baixar dependências novamente:
```bash
flutter clean
flutter pub get
```

---
