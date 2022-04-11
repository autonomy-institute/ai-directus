FROM directus/directus:latest

USER node
WORKDIR /directus

RUN npm install directus-extension-linkmeta directus-extension-group-modal-interface directus-extension-wpslug-interface directus-extension-display-link


EXPOSE 8055
CMD npx directus bootstrap && npx directus start

