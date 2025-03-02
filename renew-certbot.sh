#!/bin/bash

# Renouveler le certificat avec Certbot
echo "Renouvellement du certificat SSL..."
certbot renew --quiet

# V  rifier si le renouvellement a r  ussi
if [ $? -eq 0 ]; then
    echo "Certificat renouvel   avec succees."
    # TODO copy from letsencrypt to ssl folder
else
    echo "Erreur lors du renouvellement du certificat."
    exit 1
fi

# Recharger Nginx pour appliquer les nouveaux certificats
echo "Rechargement de Nginx..."
service nginx reload

# V  rifier si le rechargement a r  ussi
if [ $? -eq 0 ]; then
    echo "Nginx rechargee   avec sucees."
else
    echo "Erreur lors du rechargement de Nginx."
    exit 1
fi


cp /et