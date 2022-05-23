# Utiliser l'image debian officielle comme image parent
FROM debian:latest

# Installer des services et des packages
RUN apt update && \
	apt install -y curl gnupg && \
	curl -fsSL https://repo.jellyfin.org/ubuntu/jellyfin_team.gpg.key | gpg --dearmor -o /etc/apt/trusted.gpg.d/jellyfin.gpg  && \
	echo "deb [arch=$( dpkg --print-architecture )] https://repo.jellyfin.org/$( awk -F'=' '/^ID=/{ print $NF }' /etc/os-release ) $( awk -F'=' '/^VERSION_CODENAME=/{ print $NF }' /etc/os-release ) main" | tee /etc/apt/sources.list.d/jellyfin.list && \
	apt update && \ 
	apt install -y jellyfin && \
	apt install -y ffmpeg && \
	mkdir /data

# Exposer le port 8096 de jellyfin
EXPOSE 8096

# Copie du script de démarrage dans le conteneur
COPY start.sh /root/
RUN chmod +x /root/start.sh 

# Copie des données configuré de jellyfin dans le conteneur
COPY ./data/ /data/

# Lancer le service jellyfin au démarrage du conteneur à partir du script
CMD /root/start.sh
