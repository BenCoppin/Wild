
# Retourne les noms, prénoms, rôle et équipe de tous les joueurs, classés dans l’ordre alphabétique par équipe, puis par rôle dans l’équipe, puis par nom de famille, puis par prénom.

SELECT team.name team, player.role, wizard.lastname, wizard.firstname FROM player
  JOIN wizard ON wizard_id = wizard.id
  JOIN team ON team_id = team.id
  ORDER BY team.name, player.role, wizard.lastname, wizard.firstname ASC ;

#Retourne uniquement les prénoms et noms des joueurs ayant le rôle de seeker (attrapeur), classés par ordre alphabétique de nom puis prénom

SELECT wizard.lastname, wizard.firstname FROM wizard
  JOIN player ON wizard.id = player.wizard_id
  WHERE player.role = 'seeker'
  ORDER BY wizard.lastname, wizard.firstname ASC;

#Retourne la liste de tous les sorciers qui ne pratiquent pas le quidditch.

SELECT wizard.lastname, wizard.firstname FROM wizard
  LEFT JOIN player ON wizard.id = player.wizard_id
  WHERE player.wizard_id IS NULL;