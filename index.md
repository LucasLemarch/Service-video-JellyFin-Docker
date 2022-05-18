## Qu'est-ce que DockerFile ?

Docker est une plateforme de conteneurs lancée en 2013. Il facilite la création de conteneurs et d'applications basées sur celles-ci. Il en existe d'autres, mais celui-ci est le plus utilisé. Il est également plus facile à déployer et à utiliser que la concurrence. 

C'est une solution open source, sécurisée et économique. De nombreuses personnes et entreprises ont contribué au développement de ce projet. Cette immense communauté a développé un immense écosystème de produits, services et ressources. 

Conçu à l'origine pour Linux, Docker permet également aux conteneurs de s'exécuter sur Windows ou Mac en raison de la "couche" de virtualisation Linux entre le système d'exploitation Windows/macOS et l'environnement d'exécution Docker. Par conséquent, il est possible d'exécuter des conteneurs Windows natifs dans un environnement de conteneur Windows ou Linux.

## Qu'est-ce qu'un conteneur ?

Un conteneur est un environnement d’exécution léger, et d’une alternative aux méthodes de virtualisation traditionnelles basées sur les machines virtuelles.

Pour exécuter les applications, il est toutefois nécessaire d’exploiter des packages, des bibliothèques et divers composants logiciels. Pour exploiter ces ressources tout en isolant une application, on utilise depuis longtemps les machines virtuelles.

Celles-ci permettent de séparer les applications entre elles sur un même système, et de réduire les conflits entre les composants logiciels et la compétition pour les ressources. Cependant, une alternative a vu le jour : les conteneurs.

Contrairement à une machine virtuelle de plusieurs Go, un conteneur est plus simple, il peut donc s'arrêter et démarrer plus rapidement et délivre uniquement les ressources nécessaires à une application. En effet, le conteneur partage le kernel de son OS avec d’autres conteneurs. C’est une différence avec une machine virtuelle, utilisant un hyperviseur pour distribuer les ressources hardware.

<img 
    style="display: block; 
           margin-left: auto;
           margin-right: auto;
           width: 80%;"
    src="./img/Image1.PNG" 
    alt="Image" />



## Comment fonctionne DockerFile ? 

Chaque conteneur Docker débute avec un ”Dockerfile“. Il s’agit d’un fichier texte rédigé dans une syntaxe compréhensible, comportant les instructions de création d’une image Docker.

Un Dockerfile précise le système d’exploitation sur lequel sera basé le conteneur, et les langages, variables environnementales, emplacements de fichiers, ports réseaux et autres composants requis.

Pour importer d'un fichier DockerFile à un fichier DockerImage, il suffit de taper la ligne de code suivante : <br>
<code> $ docker build <img> </code> <br>
Cela va créer un conteneur à partir d une image. Si nous n avons pas l image localement, elle est téléchargé automatiquement  

<img 
    style="display: block; 
           margin-left: auto;
           margin-right: auto;
           width: 80%;"
    src="./img/Image3.png" 
    alt="Image" />

## Les images Docker

Une image Docker est un modèle en lecture seule, qui est utilisée pour créer des
conteneurs Docker (vu ci-dessus). Cette image est composée de plusieurs couches empaquetant
toutes les installations/dépendances/bibliothèques/processus/code d'application qui sont
nécéssaires pour un environnement de conteneur pleinement opérationnel.

### Quelques commandes pour 
