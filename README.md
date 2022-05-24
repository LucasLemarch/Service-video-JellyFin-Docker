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
<p><span style="color: #FF0000"> /!\ Ne pas oublier le "." à la fin de la commande </span></p>
<p>Nota : La création de l'image peut durer plusieurs minutes.</p>

<img style="display: block;
            margin-left: auto;
            margin-right: auto;
            width: 80%;" 
     src="./images/docker-build.png" alt="Docker Build" />

## Etape 4 - Création du conteneur

<p style="text-align:justify">
    Une fois l'étape suivante terminée, créez et lancez un conteneur et utilisant la commande :<br/>
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

## Etape 5 - Connexion à Jellyfin

<p style="text-align:justify">
    Maintenant que notre conteneur est en route, lancez votre navigateur internet et écrivez-y ceci : <br/>
    <code>localhost:8080</code>
</p>
<p>Connectez-vous avec l'identifiant : <i>admin</i> et le mot de passe : <i>admin</i> .

<img style="display: block;
            margin-left: auto;
            margin-right: auto;
            width: 80%;" 
     src="./images/connection.png" alt="Connection" />

## Etape 6 - Utilisation de Jellyfin

<p style="text-align:justify">
    Maintenant que vous êtes connecté, si vous-souhaitez ajouter des films il suffit de les placer dans le dossier "films" du répertoire que nous avons importé lors de l'étape 2.
</p>

<p style="text-align:justify">
	Pour actualiser les films, cliquez sur les trois barres présentes en haut à gauche de votre écran.
</p>

<img style="display: block;
            margin-left: auto;
            margin-right: auto;
            width: 80%;" 
     src="./images/option.png" alt="Barres Horizontales" />

<p style="text-align:justify">
    Puis cliquez sur <i>Tableau de Bord</i>.
</p>

<img style="display: block;
            margin-left: auto;
            margin-right: auto;
            width: 80%;" 
     src="./images/acces-tableau.png" alt="Acces Tableau de Bord" />

<p style="text-align:justify">
    Pour finir, cliquez sur <i>Actualister toutes les médiathèques</i>.
</p>

<img style="display: block;
            margin-left: auto;
            margin-right: auto;
            width: 80%;" 
     src="./images/tableau.png" alt="Actualisation" />

<p style="text-align:justify">
    Vous pouvez maintenant revenir à l'accueil.
</p>

<img style="display: block;
            margin-left: auto;
            margin-right: auto;
            width: 80%;" 
     src="./images/films.png" alt="Films" />

<p style="text-align:justify">
	Félicitation vous savez désormais comment installer et utiliser Jellyfin !!!
<p>