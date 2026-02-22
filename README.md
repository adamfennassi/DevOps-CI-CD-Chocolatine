# Chocolatine - CI/CD Workflow Pipeline

##  Présentation
Ce projet consiste en la mise en place d'un pipeline d'**Intégration Continue (CI)** robuste via **GitHub Actions**. L'objectif est d'automatiser la validation du code, le contrôle qualité (Coding Style), la compilation et le déploiement (Mirroring) vers un dépôt distant.

##  Fonctionnalités du Pipeline
Le workflow est découpé en plusieurs "jobs" séquentiels :

1. **Check Coding Style** : Utilisation d'un conteneur Docker pour vérifier la conformité du code aux normes de programmation (Epitech Standard). Génération d'erreurs d'annotation automatiques sur GitHub.
2. **Check Repository** : Scan du dépôt pour détecter et bannir les fichiers inutiles ou temporaires (fichiers de backup, binaires, fichiers objets).
3. **Compilation** : Test de compilation via un `Makefile` dans un environnement Dockerisé (`epitest-docker`). Vérification de la présence des exécutables attendus.
4. **Unit Tests** : Exécution automatique des tests unitaires via `make tests_run` avec une limite de temps (timeout).
5. **Mirroring** : Si toutes les étapes précédentes réussissent, le code est automatiquement poussé vers un dépôt miroir via une clé SSH sécurisée.

##  Technologies utilisées
* **GitHub Actions** (Workflow YAML)
* **Docker** (Utilisation d'images distantes pour la reproductibilité des builds)
* **Shell Scripting** (Automatisation des vérifications)
* **Git** (Gestion des branches et mirroring)
