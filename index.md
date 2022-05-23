## Qu'est-ce que DockerFile ?

<p style ="text-align:justify;"> Docker est une plateforme de conteneurs lancée en 2013. C'est une solution open source, sécurisée et économique. Conçu à l'origine pour Linux, Docker permet également aux conteneurs de s'exécuter sur Windows ou MAC en raison de la "couche" de virtualisation Linux entre les deux systèmes d'exploitation et l'environnement d'exécution Docker. Par conséquent, il est possible d'exécuter des conteneurs Windows natifs dans un environnement de conteneur Linux ou MAC. </p>

## Qu'est-ce qu'un conteneur ?

<p style ="text-align:justify;"> Un conteneur est un environnement d’exécution léger, et d’une alternative aux méthodes de virtualisation traditionnelles basées sur les machines virtuelles. </p>

<p style ="text-align:justify;"> Pour exécuter les applications, il est nécessaire d’exploiter des packages, des bibliothèques et divers composants logiciels. Pour exploiter ces ressources tout en isolant une application, on utilise initialement les machines virtuelles. 
</p>

<p style ="text-align:justify;"> Celles-ci permettent de séparer les applications entre elles sur un même système, et de réduire les conflits entre les composants logiciels et la compétition pour les ressources. Cependant, une alternative a vu le jour : les conteneurs. </p>

<p style ="text-align:justify;"> Contrairement à une machine virtuelle de plusieurs Go, un conteneur est plus simple et plus rapide. Il délivre uniquement les ressources nécessaires à une application. En effet, le conteneur partage le kernel de son OS avec d’autres conteneurs. C’est une différence avec une machine virtuelle. </p>

<img 
    style="display: block; 
           margin-left: auto;
           margin-right: auto;
           width: 80%;"
    src="./img/Image1.PNG" 
    alt="Image" />



## Comment fonctionne DockerFile pour Docker ? 

<p style ="text-align:justify;"> Chaque conteneur Docker débute avec un ”Dockerfile“. Il s’agit d’un fichier texte rédigé dans une syntaxe compréhensible, comportant les instructions de création d’une image Docker. Un Dockerfile précise le système d’exploitation sur lequel sera basé le conteneur, ainsi que des langages, variables environnementales et des emplacements de fichiers. </p>

<p style ="text-align:justify;"> Pour importer d'un fichier DockerFile à un fichier DockerImage, il suffit de taper la ligne de code suivante : </p>
<code> $ docker build 'NomImage' </code> <br>

<p style ="text-align:justify;">  Cela va créer un conteneur à partir d'une image. Si nous n'avons pas l'image localement, elle est téléchargée automatiquement. </p>

<img 
    style="display: block; 
           margin-left: auto;
           margin-right: auto;
           width: 80%;"
    src="./img/Image3.png" 
    alt="Image" />

## Les images Docker

<p style ="text-align:justify;"> Une image Docker est un modèle en lecture seule, qui est utilisée pour créer des conteneurs Docker. Cette image est composée de plusieurs couches empaquetant toutes les installations/ dépendances /bibliothèques / processus / code d'application qui sont necéssaires pour un environnement de conteneur pleinement opérationnel. Voici la commande necéssaire pour déployer une image vers un conteneur : </p>

<code> $ docker run 'NomImage' </code> <br> 

<img 
    style="display: block; 
           margin-left: auto;
           margin-right: auto;
           width: 80%;"
    src="./img/Image4.png" 
    alt="Image" />

## Qu'avons-nous produit dans cette SAE ? 

<p style ="text-align:justify;"> L'objectif de cette SAE était d'installer un service réseau à l'aide de Docker et du logiciel Git Hub. Nous avons opté pour un service de vidéo en ligne via JellyFin car c'était le résultat était le meilleur selon nous, mais aussi car c'était l'un des plus dur à réaliser.  </p>

### Jellyfin, Qu'est-ce que c'est ?

<p style ="text-align:justify;"> Jellyfin est une application serveur et multimédia installée sur une machine exécutant Windows, MAC OS, Linux ou dans un conteneur Docker conçues pour organiser, gérer et partager des fichiers multimédias numériques sur des appareils en réseau. Il s'agit d'un fork logiciel gratuit et open source d'Emby. </p>	

### La partie DockerFile

<p style ="text-align:justify;"> Pour installer notre service de vidéo en ligne, nous avons dû utiliser l'image du Debian officiel comme image parent de notre DockerFile car c'est une demande obligatoire du professeur responsable de la SAE. Cela se traduit par cette ligne sur notre fichier : </p> 

<code> FROM debian:latest </code>

<p style ="text-align:justify;"> Une fois notre image parent mise en place, nous devons implanter des services et des paquets permettant le fonctionnement de notre dockerfile mais aussi de JellyFin : </p>

<img 
    style="display: block; 
           margin-left: auto;
           margin-right: auto;
           width: 80%;"
    src="./img/Commande1.png" 
    alt="Image" />

<p style ="text-align:justify;"> Ces lignes de commandes nous permettent l'installation de l'application Jellyfin mais aussi d'un paquet permettant de lire des extensions ".mp4". La dernière ligne permet de créer un dossier data. Celui-ci contiendra les données configurés de Jellyfin. Par ailleurs, nous avons crée un autre répertoire appelé "films" au même niveau que le data, dans lequel sera stocké nos volumes reliés au conteneur </p>

<p style ="text-align:justify;"> Afin de pouvoir lancer notre service réseau, nous avons dû passer par un port de la machine, la commande <code> EXPOSE 8096 </code> permet donc d'exposer le port 8096 de JellyFin. </p> 

<p style = "text-align:justify;"> Par la suite, nous avons dû copier le script de démarrage nommé "start.sh" dans le conteneur grâce à la commande <code> COPY start.sh /root/ </code>. Cependant, il est aussi necéssaire de copier les données configurée de JellyFin dans le conteneur Docker grâce au répertoire "data" crée précédemment. </p> 

<p style = "text-align:justify;"> Pour finaliser l'écriture de ce DockerFile, nous devions lancer le service Jellyfin au démarrage du conteneur à partir du script de démarrage nommé "start.sh". Cette action se traduit par deux lignes de commande, la première pour exécuter, et la seconde pour le transmettre dans un terminal "CMD" : </p>
<code> RUN chmod +x /root/start.sh </code> et <code> /root/start.sh </code>

### La partie start.sh

<p style ="text-align:justify;"> Le fichier start.sh nous sert comme dit ci-dessus comme un script de démarrage, sans ce fichier, nous ne pourrions pas lancer Jellyfin. Celui-ci est composé d'une seule ligne qui va se servir de notre dossier data ainsi que notre dossier films, mais aussi du dockerfile pour l'afficher sur une page internet. </p>

<img 
    style="display: block; 
           margin-left: auto;
           margin-right: auto;
           width: 80%;"
    src="./img/Commande2.png" 
    alt="Image" />


