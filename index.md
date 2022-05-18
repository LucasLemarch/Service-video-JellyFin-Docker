## Qu'est-ce que DockerFile ?

<p style ="text-align:justify;"> Docker est une plateforme de conteneurs lancée en 2013. Il facilite la création de conteneurs et d'applications basées sur celles-ci. Il en existe d'autres, mais celui-ci est le plus utilisé. Il est également plus facile à déployer et à utiliser que la concurrence. </p>

<p style ="text-align:justify;"> C'est une solution open source, sécurisée et économique. De nombreuses personnes et entreprises ont contribué au développement de ce projet. Cette immense communauté a développé un immense écosystème de produits, services et ressources. </p>

<p style ="text-align:justify;"> Conçu à l'origine pour Linux, Docker permet également aux conteneurs de s'exécuter sur Windows ou Mac en raison de la "couche" de virtualisation Linux entre le système d'exploitation Windows/macOS et l'environnement d'exécution Docker. Par conséquent, il est possible d'exécuter des conteneurs Windows natifs dans un environnement de conteneur Windows ou Linux. </p>

## Qu'est-ce qu'un conteneur ?

<p style ="text-align:justify;"> Un conteneur est un environnement d’exécution léger, et d’une alternative aux méthodes de virtualisation traditionnelles basées sur les machines virtuelles. </p>

<p style ="text-align:justify;"> Pour exécuter les applications, il est toutefois nécessaire d’exploiter des packages, des bibliothèques et divers composants logiciels. Pour exploiter ces ressources tout en isolant une application, on utilise depuis longtemps les machines virtuelles. </p>

<p style ="text-align:justify;"> Celles-ci permettent de séparer les applications entre elles sur un même système, et de réduire les conflits entre les composants logiciels et la compétition pour les ressources. Cependant, une alternative a vu le jour : les conteneurs. </p>

<p style ="text-align:justify;"> Contrairement à une machine virtuelle de plusieurs Go, un conteneur est plus simple, il peut donc s'arrêter et démarrer plus rapidement et délivre uniquement les ressources nécessaires à une application. En effet, le conteneur partage le kernel de son OS avec d’autres conteneurs. C’est une différence avec une machine virtuelle, utilisant un hyperviseur pour distribuer les ressources hardware. </p>

<img 
    style="display: block; 
           margin-left: auto;
           margin-right: auto;
           width: 80%;"
    src="./img/Image1.PNG" 
    alt="Image" />



## Comment fonctionne DockerFile ? 

<p style ="text-align:justify;"> Chaque conteneur Docker débute avec un ”Dockerfile“. Il s’agit d’un fichier texte rédigé dans une syntaxe compréhensible, comportant les instructions de création d’une image Docker. </p>

<p style ="text-align:justify;"> Un Dockerfile précise le système d’exploitation sur lequel sera basé le conteneur, et les langages, variables environnementales, emplacements de fichiers, ports réseaux et autres composants requis. </p>

<p style ="text-align:justify;"> Pour importer d'un fichier DockerFile à un fichier DockerImage, il suffit de taper la ligne de code suivante : </p>
<code> $ docker build 'NomImage' </code> <br>

<p style ="text-align:justify;">  Cela va créer un conteneur à partir d une image. Si nous n avons pas l image localement, elle est téléchargé automatiquement </p>

<img 
    style="display: block; 
           margin-left: auto;
           margin-right: auto;
           width: 80%;"
    src="./img/Image3.png" 
    alt="Image" />

## Les images Docker

<p style ="text-align:justify;"> Une image Docker est un modèle en lecture seule, qui est utilisée pour créer des conteneurs Docker. Cette image est composée de plusieurs couches empaquetant toutes les installations/dépendances/bibliothèques/processus/code d'application qui sont necéssaires pour un environnement de conteneur pleinement opérationnel. Voici la commande necéssaire pour déployer une image vers un conteneur : </p>

<code> $ docker run 'NomImage' </code> <br> 

<img 
    style="display: block; 
           margin-left: auto;
           margin-right: auto;
           width: 80%;"
    src="./img/Image4.png" 
    alt="Image" />

## Quelques commandes utiles pour bien manipuler Docker

```shell
$ docker info
$ docker version
$ docker run <image> //Créer un conteneur à partir d une image. Si nous n avons pas l image localement, elle 			téléchargé automatiquement
$ docker run -d -p 82:80 nginx // Créer un conteneur en mode détaché accessible depuis le port 82
$ docker stop|start <id> // Arrêter|Lancer un conteneur
$ docker ps -a // Liste des conteneurs (-a affiche également les conteneurs arrêtés)
$ docker ps -q // Liste des identifiants de conteneur
$ docker stop $(docker ps -q)  // Cela arrête tous les conteneurs renvoyés par la sous-commande `docker ps -q`
$ docker rm <id> // Supprimer un conteneur s il est arrêté
$ docker rm -f <id> // Forcer la suppression d un conteneur même s il n est pas arrêté
$ docker exec -it <id> bash // Ouvrir un terminal interactive (-it) dans le conteneur
$ docker exec <id> ls // Exécute la commande ls sur le conteneur pour afficher ses fichiers
$ docker cp <id>:<fichier> . // Copie le fichier <fichier> du conteneur dans notre système de fichiers <local>
```
