## Qu'est-ce que DockerFile ?

Docker est une plateforme de conteneurs lancée en 2013. Il facilite la création de conteneurs et d'applications basées sur celles-ci. Il en existe d'autres, mais celui-ci est le plus utilisé. Il est également plus facile à déployer et à utiliser que la concurrence. 

C'est une solution open source, sécurisée et économique. De nombreuses personnes et entreprises ont contribué au développement de ce projet. Cette immense communauté a développé un immense écosystème de produits, services et ressources. 

Conçu à l'origine pour Linux, Docker permet également aux conteneurs de s'exécuter sur Windows ou Mac en raison de la "couche" de virtualisation Linux entre le système d'exploitation Windows/macOS et l'environnement d'exécution Docker. Par conséquent, il est possible d'exécuter des conteneurs Windows natifs dans un environnement de conteneur Windows ou Linux.

## Qu'est-ce qu'un conteneur ?

Avant de découvrir Docker, vous devez comprendre ce qu’est un conteneur. Il s’agit d’un environnement d’exécution léger, et d’une alternative aux méthodes de virtualisation traditionnelles basées sur les machines virtuelles.

L’une des pratiques clés du développement de logiciel moderne est d’isoler les applications déployées sur un même hôte ou sur un même cluster. Ceci permet d’éviter qu’elles interfèrent.

Pour exécuter les applications, il est toutefois nécessaire d’exploiter des packages, des bibliothèques et divers composants logiciels. Pour exploiter ces ressources tout en isolant une application, on utilise depuis longtemps les machines virtuelles.

Celles-ci permettent de séparer les applications entre elles sur un même système, et de réduire les conflits entre les composants logiciels et la compétition pour les ressources. Cependant, une alternative a vu le jour : les conteneurs.

Une machine virtuelle s’apparente à un système d’exploitation complet, d’une taille de plusieurs gigaoctets, permettant le partitionnement des ressources d’une infrastructure. Un conteneur délivre uniquement les ressources nécessaires à une application.

En effet, le conteneur partage le kernel de son OS avec d’autres conteneurs. C’est une différence avec une machine virtuelle, utilisant un hyperviseur pour distribuer les ressources hardware.

Cette méthode permet de réduire l’empreinte des applications sur l’infrastructure. Le conteneur regroupe tous les composants système nécessaires à l’exécution du code, sans pour autant peser aussi lourd d’un OS complet.

De même, un conteneur est plus léger et plus simple qu’une machine virtuelle et peut donc démarrer et s’arrêter plus rapidement. Il est donc plus réactif, et adaptable aux besoins fluctuants liés au ” scaling ” d’une application.

Dernier point fort : contrairement à un hyperviseur, un moteur de conteneur n’a pas besoin d’émuler un système d’exploitation complet. Le conteneur offre donc de meilleures performances qu’un déploiement sur machine virtuelle traditionnelle.


Markdown is a lightweight and easy-to-use syntax for styling your writing. It includes conventions for

```markdown
Syntax highlighted code block

# Header 1
## Header 2
### Header 3

- Bulleted
- List

1. Numbered
2. List

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)
```

For more details see [Basic writing and formatting syntax](https://docs.github.com/en/github/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax).

### Jekyll Themes

Your Pages site will use the layout and styles from the Jekyll theme you have selected in your [repository settings](https://github.com/LucasLemarch/docker-sae203/settings/pages). The name of this theme is saved in the Jekyll `_config.yml` configuration file.

### Support or Contact

Having trouble with Pages? Check out our [documentation](https://docs.github.com/categories/github-pages-basics/) or [contact support](https://support.github.com/contact) and we’ll help you sort it out.
