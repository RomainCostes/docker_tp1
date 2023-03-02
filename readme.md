TP1

5. Exécuter un serveur web (apache, nginx, …) dans un conteneur docker
   a. Récupérer l’image sur le Docker Hub
<code>docker pull nginx</code>
b. Vérifier que cette image est présente en local
<code>docker images -a</code>
c. Créer un fichier index.html simple
-> touch index.html
d. Démarrer un conteneur et servir la page html créée précédemment à l’aide
d’un volume (option -v de docker run)
-> docker run -d -p 80:80 -v C:/Users/romai/Documents/Ynov/MASTER2/DOCKER:/usr/share/nginx/html nginx
e. Supprimer le conteneur précédent et arriver au même résultat que
précédemment à l’aide de la commande docker cp
-> docker stop ID_docker
-> docker run -d -p 80:80 --name mon_conteneur nginx
-> docker cp ./index.html mon_conteneur:/usr/share/nginx/html/

1. Builder une image
a. A l’aide d’un Dockerfile, créer une image (commande docker build)
>
b. Exécuter cette nouvelle image de manière à servir la page html (commande
docker run)
c. Quelles différences observez-vous entre les procédures 5. et 6. ? Avantages
et inconvénients de l’une et de l’autre méthode ? (Mettre en relation ce qui est
observé avec ce qui a été présenté pendant le cours)

1. Utiliser une base de données dans un conteneur docker
a. Récupérer les images mysql:5.7 et phpmyadmin/phpmyadmin depuis le
Docker Hub
b. Exécuter deux conteneurs à partir des images et ajouter une table ainsi que
quelques enregistrements dans la base de données à l’aide de phpmyadmin

1. Faire la même chose que précédemment en utilisant un fichier
docker-compose.yml
a. Qu’apporte le fichier docker-compose par rapport aux commandes docker run
? Pourquoi est-il intéressant ? (cf. ce qui a été présenté pendant le cours)
b. Quel moyen permet de configurer (premier utilisateur, première base de
données, mot de passe root, …) facilement le conteneur mysql au lancement ?

1. Observation de l’isolation réseau entre 3 conteneurs
a. A l’aide de docker-compose et de l’image praqma/network-multitool
disponible sur le Docker Hub créer 3 services (web, app et db) et 2 réseaux
(frontend et backend).
Les services web et db ne devront pas pouvoir effectuer de ping de l’un vers
l’autre
b. Quelles lignes du résultat de la commande docker inspect justifient ce
comportement ?
c. Dans quelle situation réelles (avec quelles images) pourrait-on avoir cette
configuration réseau ? Dans quel but ?


Le compte rendu du TP doit être déposé sur moodle par chacun des membres du
groupe au format GIT le 9 mars 2023 au plus tard.