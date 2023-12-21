#!/bin/bash

# Exécutez la commande curl et stockez la réponse dans une variable
response=$(curl -s localhost:8765/sum?a=80\&b=20)

# Vérifiez si la réponse est vide
if [ -z "$response" ]; then
  echo "Erreur: La réponse du serveur est vide."
  exit 1
fi

# Vérifiez si la réponse est égale à 100
if [ "$response" -eq 100 ]; then
  echo "Test réussi : La somme est égale à 100."
else
  echo "Échec du test : La somme n'est pas égale à 100. Réponse reçue : $response"
  exit 2
fi

