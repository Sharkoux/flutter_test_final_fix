# Test-final-fix

## 📱 Description
Application Flutter personnalisée

## 🚀 Installation et Lancement

### Prérequis
- Flutter SDK 3.3.0+
- Dart 3.0.0+
- Android Studio / VS Code
- Git

### Installation
```bash
# Cloner le projet
git clone https://github.com/sharkoux/flutter_test-final-fix.git
cd flutter_test-final-fix

# Installer les dépendances
flutter pub get

# Générer le code (si nécessaire)
flutter pub run build_runner build

# Lancer l'application
flutter run
```

### Build pour production
```bash
# Web
flutter build web --release

# Android
flutter build apk --release

# iOS (sur macOS)
flutter build ios --release
```

## 🏗️ Architecture

Ce projet utilise une **Clean Architecture** avec le pattern **BLoC** :

```
lib/
├── core/           # Configuration, constantes, utils
├── features/       # Fonctionnalités métier
│   ├── auth/       # Authentification
│   ├── home/       # Écran principal
│   └── ...
├── shared/         # Composants partagés
└── main.dart       # Point d'entrée
```

## 🧪 Tests

```bash
# Lancer tous les tests
flutter test

# Tests avec couverture
flutter test --coverage

# Voir le rapport de couverture
genhtml coverage/lcov.info -o coverage/html
open coverage/html/index.html
```

## 📊 CI/CD

Le projet inclut un pipeline GitHub Actions qui :
- ✅ Valide la qualité du code
- ✅ Lance les tests automatiquement
- ✅ Build pour toutes les plateformes
- ✅ Génère des rapports de qualité

## 🤖 Généré par Flutter Agency AI

Cette application a été générée automatiquement par Flutter Agency AI avec :
- Architecture production-ready
- Tests automatisés
- CI/CD configuré
- Documentation complète

---

💡 **Besoin d'aide ?** Consultez la [documentation Flutter](https://docs.flutter.dev/)
