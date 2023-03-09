<h1>TP1</h1>

<h2>5. Exécuter un serveur web (apache, nginx, …) dans un conteneur docker</h2>
   <h3>a. Récupérer l’image sur le Docker Hub</h3>
        <code>docker pull nginx</code>
    <h3>b. Vérifier que cette image est présente en local</h3>
        <code>docker images -a</code>
    <h3>c. Créer un fichier index.html simple</h3>
        <code>touch index.html</code>
    <h3>d. Démarrer un conteneur et servir la page html créée précédemment à l’aide d’un volume (option -v de docker run)</h3>
        <code>docker run -d -p 80:80 -v C:/Users/romai/Documents/Ynov/MASTER2/DOCKER/docker_tp1:/usr/share/nginx/html nginx</code>
    <h3>e. Supprimer le conteneur précédent et arriver au même résultat que
précédemment à l’aide de la commande docker cp</h3>
        <code>docker stop [ID_docker]</code><br>
        <code>docker run -d -p 80:80 --name mon_conteneur nginx</code><br>
        <code>docker cp ./index.html mon_conteneur:/usr/share/nginx/html/</code>

<h2>6. Builder une image</h2>
    <h3>a. A l’aide d’un Dockerfile, créer une image (commande docker build)</h3>
        <code>docker build -t mon_image .</code>
    <h3>b. Exécuter cette nouvelle image de manière à servir la page html (commande docker run)</h3>
        <code>docker run -d -p 80:80 --name mon_container mon_image</code>
    <h3>c. Quelles différences observez-vous entre les procédures 5. et 6. ? Avantages et inconvénients de l’une et de l’autre méthode ?</h3> (Mettre en relation ce qui est observé avec ce qui a été présenté pendant le cours)
        <code>La procédure 5 permet de modifier le contenu du fichier index.html sans reconstruire l'image, la procédure 6 donne accès à plus de configuration (version de l'image, environnement..)</code>

<h2>7. Utiliser une base de données dans un conteneur docker</h2>
    <h3>a. Récupérer les images mysql:5.7 et phpmyadmin/phpmyadmin depuis le
Docker Hub</h3>
        <code>docker pull mysql:5.7</code><br>
        <code>docker pull phpmyadmin/phpmyadmin</code>
    <h3>b. Exécuter deux conteneurs à partir des images et ajouter une table ainsi que quelques enregistrements dans la base de données à l’aide de phpmyadmin</h3>
    Démarrer un conteneur MySQL avec la commande suivante :
        <code>docker run --name my-mysql -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:5.7</code><br>
        Démarrer un conteneur phpMyAdmin qui se connecte au conteneur MySQL précédemment créé avec la commande suivante :
        <code>docker run --name my-phpmyadmin -d --link my-mysql:db -p 8080:80 phpmyadmin/phpmyadmin</code>

<h2>8. Faire la même chose que précédemment en utilisant un fichier
docker-compose.yml </h2>
    <h3>a. Qu’apporte le fichier docker-compose par rapport aux commandes docker run
? Pourquoi est-il intéressant ? (cf. ce qui a été présenté pendant le cours)</h3>
        <code>docker compose permet d'executer (et de parametrer) toutes les commandes Docker d'un coup</code>
    <h3>b. Quel moyen permet de configurer (premier utilisateur, première base de
données, mot de passe root, …) facilement le conteneur mysql au lancement ?</h3>
        <code>Dans un service db on défini les variables d'environnements qui seront utilisées avec la commande docker-comppose up</code>

<h2>9. Observation de l’isolation réseau entre 3 conteneurs</h2>
    <h3>a. A l’aide de docker-compose et de l’image praqma/network-multitool
disponible sur le Docker Hub créer 3 services (web, app et db) et 2 réseaux
(frontend et backend).
Les services web et db ne devront pas pouvoir effectuer de ping de l’un vers
l’autre</h3>
        <code></code>
    <h3>b. Quelles lignes du résultat de la commande docker inspect justifient ce
comportement ?</h3>
        <code></code>
    <h3>c. Dans quelle situation réelles (avec quelles images) pourrait-on avoir cette configuration réseau ? Dans quel but ?</h3>
        <code></code>


<strong>
Le compte rendu du TP doit être déposé sur moodle par chacun des membres du
groupe au format GIT le 9 mars 2023 au plus tard.
</strong>