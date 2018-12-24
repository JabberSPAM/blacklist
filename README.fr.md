## Liste noire de serveurs

Ce dépôt contient une liste noire de domaines XMPP (`blacklist.txt`) qui sont
utilisés par des spammeurs et qui ne répondent pas aux plaintes d’abus. Ces
serveurs sont ajoutés et retirés en suivant les règles listées ci-dessous. Les
changements apportés à cette liste sont documentés dans chaque _git commit_.

### Ajouter un serveur à la liste noire

Un serveur est ajouté à la liste noire après avoir suivi les étapes ci-dessous,
si aucune n’a abouti à réduire le trafic de spam du serveur :

1. Contacter l’opérateur du serveur directement (via les informations publiées
par la XEP-0157, ou sur le site web du serveur), et attendre 7 jours pour une
réponse. *Ignorer cette règle si aucune information de contact ne peut être
trouvée.*

2. Si l’opérateur du serveur ne répond pas, ou ne stoppe pas le spam : contacter
le service d'abus du FAI de l’hébergeur (via whois ou via des informations de
contact publiées sur le site de l’hébergeur), et attendre 15 jours pour une
réponse.

3. Si le fournisseur d’accès ne répond pas, ou ne stoppe pas le spam : ajouter
le serveur à la liste noire en documentant chaque étape qui a été prise.

### Retirer un serveur de la liste noire

Un opérateur peut demander la suppression de son serveur de cette liste noire
en ouvrant une issue ou une _pull request_ sur ce dépôt. Les conditions
suivantes sont nécessaires pour être dé-listé :

* Le serveur doit déployer [XEP-0157: Contact Addresses for XMPP Services][XEP-0157].
* L’opérateur doit répondre dans des délais appropriés.
* La quantité de spam provenant de ce serveur doit être négligeable pendant
  une période d'observation de 14 jours.

Si les conditions sont respectées, le serveur sera retiré de la liste noire
après la période d'observation. Si le serveur ne respecte pas ces conditions,
il ne sera pas retiré de la liste. Si le serveur ne maintient pas ces
conditions après avoir été supprimé de la liste, il se peut qu’il soit
ré-ajouté immédiatement.

[XEP-0157]: https://xmpp.org/extensions/xep-0157.html
