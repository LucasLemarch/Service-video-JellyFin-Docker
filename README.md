# Tutoriel : Comment lancer JellyFin ?

## Pré-requis

<p style="text-align:justify">
    Pour ce tutoriel, nous partirons du principe que vous possédez un GitHub fonctionnel ainsi que le logiciel Docker Deskop sur votre ordinateur.
</p>

## Etape 1 - Ouverture de Docker Desktop

<p style="text-align:justify">
    Pour commencer, ouvrir le logiciel <i>Docker Desktop</i> et le laisser en fond.
    Nous n'en aurons pas directement besoin mais il sera utile pour la réalisation de certaines commandes docker...
</p>

<img style="display: block;
            margin-left: auto;
            margin-right: auto;
            width: 80%;" 
     src="./img/docker-desktop.png" alt="Docker Desktop" />

## Etape 2 - Récupération des fichiers sur GitHub

<p style="text-align:justify">
    Pour récupérer les fichiers sur GitHub, il faudra dans un premier temps ouvrir le cmd dans lequel vous pouvez utiliser les commandes git, et placer vous dans le fichier où vous souhaitez cloner le GitHub. <br/> 
    Tapez ensuite la commandes suivantes :<br/>
    <i>git clone git@github.com:LucasLemarch/docker-sae203.git</i><br/>
    Utiliser ensuite la commande _cd docker-sae203_ pour rentrer dans le fichier venant d'être créer.
</p>

<img style="display: block;
            margin-left: auto;
            margin-right: auto;
            width: 80%;" 
     src="./img/git-clone.png" alt="Git Clone" />

## Etape 3 - Création de l'image 

<p style="text-align:justify">
    Pour créer l'image, toujours en étant de le dossier créer précedement (docker-sae203) tapez la commande :<br/>
    <i>docker build --no-cache -t <span style="color: #FF0000">jellyfin-docker_sae .</span></i><br/>
    Où <i><span style="color: #FF0000">jellefin-docker_sae</span></i> est le nom de l'image.<br/>
    Ne pas oublier le "." à la fin de la commande.<br/>
    La création de l'image peut durer plusieurs minutes.
</p>

<img style="display: block;
            margin-left: auto;
            margin-right: auto;
            width: 80%;" 
     src="./img/docker-build.png" alt="Docker Build" />

## Etape 4 - Lancement de l'image

<p style="text-align:justify">
    Une fois la création terminer, il faut maintenant lancer l'image, pour se faire, utiliser la commande :<br/>
    <i>docker run -d -v <span style="color: #207145">C:\iut\TP...</span>:/data/films -p 8080:8096 <span style="color: #FF0000">jellyfin-docker_sae</span></i><br/>
    Après cela, pour vérifier que l'image est correctement lancé, utiliser la commande :<br/>
    <i>docker ps</i>
</p>

<img style="display: block;
            margin-left: auto;
            margin-right: auto;
            width: 80%;" 
     src="./img/docker-run-ps.png" alt="Docker Run et Docker ps" />

<p style="text-align:justify">
    Vous devriez normalement voir le nom de l'image ainsi que son statut etc...
</p>

## Etape 5 - Le site

<p style="text-align:justify">
    Une fois que l'image est correctement lancé, lancer un navigateur est entrez l'url :<br/>
    <i>localhost:8080</i><br/>
    Se connecter avec les identifiants <i>admin</i>;<i>admin</i>
</p>

<img style="display: block;
            margin-left: auto;
            margin-right: auto;
            width: 80%;" 
     src="./img/connection.png" alt="Connection" />

## Etape 6 - Première connection et ajouts des films

<p style="text-align:justify">
    Une fois connecté, il ne reste plus qu'à ajouter les films, pour se faire :<br/>
    Cliquez sur les trois barres horizontales :
</p>

<img style="display: block;
            margin-left: auto;
            margin-right: auto;
            width: 80%;" 
     src="./img/option.png" alt="Barres Horizontales" />

<p style="text-align:justify">
    Puis cliquez sur <i>Tableau de Bord</i>
</p>

<img style="display: block;
            margin-left: auto;
            margin-right: auto;
            width: 80%;" 
     src="./img/acces-tableau.png" alt="Acces Tableau de Bord" />

<p style="text-align:justify">
    Une fois dans le tableau de bord, il ne reste plus qu'à cliquer sur <i>Actualister toutes les médiathèques</i>
</p>

<img style="display: block;
            margin-left: auto;
            margin-right: auto;
            width: 80%;" 
     src="./img/tableau.png" alt="Actualisation" />

<p style="text-align:justify">
    Les films sont maintenant disponibles si vous retournez sur l'accueil.
</p>

<img style="display: block;
            margin-left: auto;
            margin-right: auto;
            width: 80%;" 
     src="./img/films.png" alt="Films" />