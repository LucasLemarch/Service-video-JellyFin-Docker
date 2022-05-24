# Tutoriel : Comment lancer JellyFin ?

## Pré-requis

<p style="text-align:justify">
    Pour ce tutoriel, nous partirons du principe que vous possédez un GitHub fonctionnel ainsi que le logiciel Docker Deskop sur votre ordinateur. Si jamais ce n'etait pas le cas, nous vous conseillons les liens suivant pour les avoir : 
	<a href="https://juanluck.github.io/Introduction-GIT/">GitHub</a> / <a href="https://docs.docker.com/get-docker/">Docker</a>
</p>

## Etape 1 - Ouverture de Docker Desktop

<p style="text-align:justify">
    Ouvrez le logiciel <i>Docker Desktop</i> et réduisez-le. Il est impératif qu'il tourne en arrière plan pour le bon fonctionnement de nos manipulations.
</p>

<img style="display: block;
            margin-left: auto;
            margin-right: auto;
            width: 80%;" 
     src="./images/docker-desktop.png" alt="Docker Desktop" />

## Etape 2 - Récupération des fichiers sur GitHub

<p style="text-align:justify">
    Ouvrez un invité de commande fonctionnant avec Github et placez-vous dans le repertoire où vous souhaitez contenir les fichiers pour faire fonctionner Jellyfin.<br/> 
</p>
<p style="text-align:justify">
    Tapez la commandes suivante :<br/>
    <code>git clone git@github.com:LucasLemarch/docker-sae203.git</code>
</p>

<img style="display: block;
            margin-left: auto;
            margin-right: auto;
            width: 80%;" 
     src="./images/git-clone.png" alt="Git Clone" />

<p style="text-align:justify">
	Utilisez la commande <code>cd docker-sae203</code> pour vous placer dans le dossier venant d'être récupéré.
</p>

## Etape 3 - Création de l'image 

<p style="text-align:justify">
    Créez une image docker avec la commande :<br/>
    <code>docker build --no-cache -t [nom-image] .</code> (remplacez [nom-image] par le nom que vous voulez donner a votre image)
</p>
<p><span style="color: #FF0000"> /!\ Ne pas oublier le "." à la fin de la commande. </span></p>
<p>Nota : La création de l'image peut durer plusieurs minutes.</p>

<img style="display: block;
            margin-left: auto;
            margin-right: auto;
            width: 80%;" 
     src="./images/docker-build.png" alt="Docker Build" />

## Etape 4 - Création du conteneur

<p style="text-align:justify">
    Une fois l'étape suivante terminé, créez et lancez un conteneur et utilisant la commande :<br/>
    <code>docker run -d -v [chemin-absolu-dossier]\films:/data/films -p 8080:8096 [nom-image]</code>
</p>
<p style="text-align:justify">
	Nota : Pour savoir quoi mettre à la place de [chemin-absolu-dossier], il suffit de regarder à gauche de où vous écrivez dans votre invité de commande. (exemple : C:\dossier1\dossier2)
</p>

<img style="display: block;
            margin-left: auto;
            margin-right: auto;
            width: 80%;" 
     src="./images/docker-run-ps.png" alt="Docker Run et Docker ps" />

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
     src="./images/connection.png" alt="Connection" />

## Etape 6 - Première connection et ajouts des films

<p style="text-align:justify">
    Une fois connecté, il ne reste plus qu'à ajouter les films, pour se faire :<br/>
    Cliquez sur les trois barres horizontales :
</p>

<img style="display: block;
            margin-left: auto;
            margin-right: auto;
            width: 80%;" 
     src="./images/option.png" alt="Barres Horizontales" />

<p style="text-align:justify">
    Puis cliquez sur <i>Tableau de Bord</i>
</p>

<img style="display: block;
            margin-left: auto;
            margin-right: auto;
            width: 80%;" 
     src="./images/acces-tableau.png" alt="Acces Tableau de Bord" />

<p style="text-align:justify">
    Une fois dans le tableau de bord, il ne reste plus qu'à cliquer sur <i>Actualister toutes les médiathèques</i>
</p>

<img style="display: block;
            margin-left: auto;
            margin-right: auto;
            width: 80%;" 
     src="./images/tableau.png" alt="Actualisation" />

<p style="text-align:justify">
    Les films sont maintenant disponibles si vous retournez sur l'accueil.
</p>

<img style="display: block;
            margin-left: auto;
            margin-right: auto;
            width: 80%;" 
     src="./images/films.png" alt="Films" />