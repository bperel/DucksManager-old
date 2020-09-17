<?php
include_once 'Database.class.php';
class Inducks {
    const OUTDUCKS_ROOT = 'https://inducks.org/hr.php?normalsize=1&image=https://outducks.org/';

    static function connexion_ok() {
        $requete='SELECT COUNT(*) As cpt FROM inducks_country';
        $resultat= self::requete($requete);
        return is_array($resultat) && count($resultat) > 0;
    }

    static function requete($requete, $parameters = []) {
        return DM_Core::$d->requete($requete, $parameters, 'db_coa');
    }

    static function is_auteur($nomAuteurAbrege) {
        $resultat_requete = self::requete('
      SELECT count(*) AS cpt
      FROM inducks_person
      WHERE personcode = ?'
    , [$nomAuteurAbrege]);
        return $resultat_requete[0]['cpt'] > 0;
    }

    static function get_vrai_magazine($pays,$magazine) {
        $resultat_get_redirection=DM_Core::$d->requete('
      SELECT NomAbrege
      FROM magazines
      WHERE PaysAbrege = ? AND RedirigeDepuis = ?'
    , [$pays, $magazine]);
      if (count($resultat_get_redirection) > 0) {
          return $resultat_get_redirection[0]['NomAbrege'];
      }
        return $magazine;
    }

    static function get_liste_numeros_from_publicationcodes($publication_codes) {
        $publication_codes = array_map(function($publication_code) {
            return "'".$publication_code."'";
        }, $publication_codes);

        $numeros = [];

        $max_publication_codes_request = 50;
        $offsetMax = count($publication_codes);
        for ($offset = 0; $offset < $offsetMax; $offset += $max_publication_codes_request) {
            $current_chunk_size = min(count($publication_codes) - $offset, $max_publication_codes_request);
            $publication_codes_chunk = array_slice($publication_codes, $offset, $current_chunk_size);
            $requete='SELECT issuenumber, publicationcode FROM inducks_issue '
                    .'WHERE publicationcode IN ('.implode(',',$publication_codes_chunk).') '
                    .'ORDER BY publicationcode';
            $resultat_requete= self::requete($requete);
            $numeros= array_merge($numeros, $resultat_requete);
        }
        $numeros= array_map('nettoyer_numero_base_sans_espace',$numeros);

        $resultat_final= [];
        foreach($numeros as $numero) {
            if (!array_key_exists($numero['publicationcode'],$resultat_final)) {
                $resultat_final[$numero['publicationcode']] = [];
            }
            $resultat_final[$numero['publicationcode']][]=$numero['issuenumber'];
        }
        return $resultat_final;
    }

    static function get_numeros($pays,$magazine,$mode="titres",$sans_espace=false) {
        $magazine_depart=$magazine;
        $magazine= self::get_vrai_magazine($pays,$magazine);
        $fonction_nettoyage=$sans_espace ? 'nettoyer_numero_sans_espace' : 'nettoyer_numero';
        $numeros= [];
        switch($mode) {
            case "urls":
                $urls= [];
                $resultat_requete= self::requete('
                  SELECT issuenumber
                  FROM inducks_issue
                  WHERE publicationcode = ?'
                , [$pays.'/'.$magazine]);
                foreach($resultat_requete as $i=>$numero) {
                    $numeros[$i] = $fonction_nettoyage($numero['issuenumber']);
                    $urls[$i]='issue.php?c='.$pays.'%2F'.$magazine_depart.str_replace(' ','+',$numero['issuenumber']);
                }
                return [$numeros,$urls];
            case "titres":
                $titres= [];
                $resultat_requete= self::requete('
                  SELECT issuenumber, title
                  FROM inducks_issue
                  WHERE publicationcode = ?'
                , [$pays.'/'.$magazine]);
                foreach($resultat_requete as $i=>$numero) {
                    $numeros[$i] = $fonction_nettoyage($numero['issuenumber']);
                    $titres[$i]=$numero['title'];
                }
                return [$numeros,$titres];
        }
        return [];
    }

    static function get_pays() {
        return (array) DmClient::get_service_results_for_dm('GET', '/coa/list/countries/'.$_SESSION['lang']);
    }

    static function get_nom_complet_magazine($pays,$magazine) {
        $resultat_requete= self::requete('
      SELECT title
      FROM inducks_publication
      WHERE publicationcode = ?'
    , [$pays.'/'.$magazine]);

        return $resultat_requete[0]['title'];
    }

    static function get_noms_complets_pays($publication_codes) {
        $liste_pays_complets= [];

        $publication_codes_chunks=array_chunk($publication_codes, 100);
        foreach($publication_codes_chunks as $publication_codes_chunk) {
            $liste_pays = array_unique(
                array_map(function($publication_code) {
                    return "'".explode('/',$publication_code)[0]."'";
                }, $publication_codes_chunk)
            );
            $requete_noms_pays='SELECT countrycode, countryname FROM inducks_countryname '
                              .'WHERE languagecode=\''.$_SESSION['lang'].'\' '
                                .'AND countrycode IN ('.implode(',',$liste_pays).')';
            $resultats_noms_pays= self::requete($requete_noms_pays);
            foreach($resultats_noms_pays as $resultat) {
                $liste_pays_complets[$resultat['countrycode']]=$resultat['countryname'];
            }
        }
        return $liste_pays_complets;
    }

    static function get_noms_complets_magazines($publication_codes) {
        if (empty($publication_codes)) {
            return [];
        }
        return (array) DmClient::get_service_results_for_dm('GET', '/coa/list/publications', [implode(',', array_values(array_unique($publication_codes)))]);
    }

    static function get_liste_magazines($pays) {
        $resultat_requete= self::requete('
      SELECT publicationcode, title
      FROM inducks_publication
      WHERE countrycode = ?'
    , [$pays]);
        $liste_magazines_courte= [];
        foreach($resultat_requete as $magazine) {
            [,$nom_magazine_abrege] =explode('/',$magazine['publicationcode']);
            $liste_magazines_courte[$nom_magazine_abrege]=$magazine['title'];
        }
        asort($liste_magazines_courte);
        return $liste_magazines_courte;
    }

    static function get_magazines($pays) {
        $liste= self::get_liste_magazines($pays);
        foreach($liste as $id=>$magazine) {
            echo '<option id="'.$id.'">'.$magazine;
        }
    }

    static function get_nb_numeros_magazines($publicationCodes) {
        $requete='
          SELECT publicationcode, Count(issuenumber) AS cpt
          FROM inducks_issue
          WHERE publicationcode IN ('. implode(',', array_fill(0, count($publicationCodes), '?')) .')
          GROUP BY publicationcode';
        $resultat_requete= self::requete($requete, $publicationCodes);
        $nb_numeros= [];
        foreach($resultat_requete as $magazine) {
            $nb_numeros[$magazine['publicationcode']]=$magazine['cpt'];
        }
        return $nb_numeros;
    }

    static function get_issues_from_storycode($story_code) {
        $requete="
            SELECT inducks_issue.publicationcode AS publicationcode, inducks_issue.issuenumber AS issuenumber
            FROM inducks_issue
            INNER JOIN inducks_entry ON inducks_issue.issuecode = inducks_entry.issuecode
            INNER JOIN inducks_storyversion ON inducks_entry.storyversioncode = inducks_storyversion.storyversioncode
            WHERE storycode = '$story_code' AND storycode != ''
            ORDER BY publicationcode, issuenumber";
        return self::requete($requete);
    }

    public static function import() {
        $step = 1;
        if (isset($_POST['inducks_collection'])) {
            if (isset($_POST['etat_defaut'])) {
                if (empty($_POST['etat_defaut'])) {
                    $erreur = IMPORTER_INDUCKS_ETAT_INVALIDE;
                }
                else {
                    $step = 3;
                }
            }

            $results = DmClient::get_service_results_for_dm('POST', '/collection/inducks/import/init', ['rawData' => $_POST['inducks_collection']]);
            if (!is_object($results)) {
                $erreur = IMPORTER_INDUCKS_TEXTE_INVALIDE;
            }
            else if (count($results->issues) === 0) {
                if ($results->existingIssuesCount > 0) {
                    $erreur = $results->existingIssuesCount . ' ' . IMPORTER_INDUCKS_NUMEROS_EXISTANTS;
                }
                else {
                    $erreur = IMPORTER_INDUCKS_AUCUN_NUMERO;
                }
            }
            else if ($step < 3) {
                $step = 2;
            }
        }
        if (isset($erreur)) {
            ?><div class="alert alert-warning"><?=$erreur?></div><?php
        }
        switch($step) {
            case 1: ?>
                <form id="import_inducks" method="post" action="">
                <div class="alert alert-info">
                    <div><?=IMPORTER_INDUCKS_INSTRUCTIONS_1?></div>
                    <?=IMPORTER_INDUCKS_INSTRUCTIONS_2?><ol>
                        <li><?=IMPORTER_INDUCKS_INSTRUCTIONS_3?></li>
                        <li><?=IMPORTER_INDUCKS_INSTRUCTIONS_4?></li>
                        <li><?=IMPORTER_INDUCKS_INSTRUCTIONS_5?></li>
                        <li><?=IMPORTER_INDUCKS_INSTRUCTIONS_6?></li>
                        <li><?=IMPORTER_INDUCKS_INSTRUCTIONS_7?></li>
                    </ol>
                </div>
                <div class="row">
                    <div class="col-sm-5">
                        <iframe src="https://inducks.org/collection.php?rawOutput=1"></iframe>
                    </div>
                    <div class="col-sm-5">
                        <div class="form-group">
                            <textarea id="inducks_collection" name="inducks_collection"><?=$_POST['inducks_collection'] ?? ''?></textarea>
                        </div>
                        <button type="submit" class="btn btn-default"><?=IMPORTER?></button>
                    </div>
                </div>
                </form><?php
                break;
            case 2: ?>
                <div class="alert alert-info">
                    <div><?=count($results->issues)?> <?=IMPORTER_INDUCKS_NUMEROS_A_IMPORTER?></div><?php
                    if ($results->existingIssuesCount > 0) { ?>
                        <div><?=$results->existingIssuesCount?> <?=IMPORTER_INDUCKS_NUMEROS_EXISTANTS?></div><?php
                    }
                    $nomsMagazines = Inducks::get_noms_complets_magazines(
                        array_unique(array_map(function($issue) {
                            return $issue->publicationcode;
                        }, $results->issues))
                    );
                    ksort($nomsMagazines);
                    ?><div class="panel-group" id="accordion"><?php
                        foreach($nomsMagazines as $publicationCode => $nomMagazine) {
                            $publicationCodeHyphen = str_replace('/', '-', $publicationCode);
                            $publicationIssues = array_filter($results->issues, function($issue) use($publicationCode) {
                                return $issue->publicationcode === $publicationCode;
                            });
                            [$countryCode,] = explode('/', $publicationCode);
                            Affichage::accordeon(
                                $publicationCodeHyphen,
                                $nomMagazine . ' x ' . count($publicationIssues),
                                implode("\n", array_map(function ($issue) {
                                    return "<div>" . ucfirst(NUMERO) . " {$issue->issuenumber}</div>";
                                }, $publicationIssues)),
                                null,
                                "images/flags/$countryCode.png"
                            );
                        }
                    ?></div>
                </div><?php

                if (count($results->nonFoundIssues) > 0) { ?>
                    <div class="alert alert-warning">
                        <div><?=count($results->nonFoundIssues)?> <?=IMPORTER_INDUCKS_NUMEROS_NON_REFERENCES?></div><?php
                            Affichage::accordeon(
                                'non-references',
                                'Numéros non référencés',
                                implode("\n", array_map(function ($issue) {
                                    return '<div>' . ucfirst(NUMERO) . ' ' . $issue . '</div>';
                                }, $results->nonFoundIssues)),
                                null,
                                null,
                                false
                        );
                    ?>
                    </div><?php
                }?>
                <form id="import_inducks" method="post" action="">
                <input type="hidden" name="inducks_collection" value="<?=$_POST['inducks_collection']?>" />
                <div class="form-group">
                    <label for="etat"><?= ETAT ?> : </label><br/>
                    <div class="btn-group">
                        <input type="hidden" id="etat_defaut" name="etat_defaut" />
                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="selected"><?=IMPORTER_INDUCKS_ETAT?></span>&nbsp;<span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" data-dropdown-name="etat_defaut">
                            <?php foreach(Database::$etats as $nomEtat => [$label,]) { ?>
                                <li>
                                <a href="javascript:void(0)" data-dropdown-option="<?=$nomEtat?>">
                                    <span class="details_numero gauche num_<?=$nomEtat?>">&nbsp;</span>
                                    <?=$label?>
                                </a>
                                </li><?php
                            } ?>
                        </ul>
                    </div>
                </div>
                <button type="submit" class="btn btn-default"><?=IMPORTER?></button>
                </form><?php
                break;
            case 3:
                $issuesCount = count($results->issues);
                $isSuccess = true;
                $chunkSize = 250;
                $importedIssuesCount = 0;
                $existingIssuesCount = 0;

                // Envoyer par paquets de 250
                for ($i=0; $i<$issuesCount; $i+=$chunkSize) {
                    $issuesChunk = array_slice($results->issues, $i, $chunkSize);
                    $resultsImport = DmClient::get_service_results_for_dm('POST', '/collection/inducks/import', ['issues' => $issuesChunk, 'defaultCondition' => $_POST['etat_defaut']]);
                    $isSuccess = is_object($resultsImport);
                    if ($isSuccess) {
                        $importedIssuesCount+=$resultsImport->importedIssuesCount;
                        $existingIssuesCount+=$resultsImport->existingIssuesCount;
                    }
                    else {
                        break;
                    }
                }
                if ($isSuccess) { ?>
                    <div class="alert alert-info">
                        <div><?=$importedIssuesCount?> <?=IMPORTER_INDUCKS_NUMEROS_IMPORTES?></div><?php
                        if ($existingIssuesCount > 0) { ?>
                            <div><?=$existingIssuesCount?> <?=IMPORTER_INDUCKS_NUMEROS_NON_IMPORTES?></div><?php
                        }?>
                        <div>
                            <a href="?action=gerer&onglet=ajout_suppr"><?=GERER_COLLECTION?></a>
                        </div>
                    </div><?php
                }
                break;
        }
    }
}

if (isset($_POST['get_pays'])) {
    $liste_pays_courte=Inducks::get_pays();

    if ($_POST['inclure_tous_pays']) {
        ?><option id="ALL"><?=TOUS_PAYS?><?php
    }
    $selected = $_POST['selected'] ?? 'fr';

    foreach($liste_pays_courte as $id=>$pays) {
        if ($selected && $id === $selected) {
            echo '<option selected="selected" id="' . $id . '">' . $pays;
        }
        else {
            echo '<option id="' . $id . '">' . $pays;
        }
    }
}
elseif (isset($_POST['get_magazines'])) {
    Inducks::get_magazines($_POST['pays']);
}
elseif (isset($_POST['get_numeros'])) {
    Inducks::get_numeros($_POST['pays'],$_POST['magazine']);
}
elseif (isset($_POST['get_cover'])) {
    $regex_num_alternatif='#([A-Z]+)([0-9]+)#';
    $numero_alternatif=preg_match($regex_num_alternatif, $_POST['numero']) === 0 ? null : preg_replace($regex_num_alternatif, '$1[ ]*$2', $_POST['numero']);
    $_POST['numero']=str_replace(' ','',$_POST['numero']);
    $_POST['magazine']=strtoupper($_POST['magazine']);
    $requete_get_extraits='
      SELECT sitecode, position, url FROM inducks_issue
      INNER JOIN inducks_entry ON inducks_issue.issuecode = inducks_entry.issuecode
      INNER JOIN inducks_entryurl ON inducks_entry.entrycode = inducks_entryurl.entrycode
      WHERE inducks_issue.publicationcode = ?
        AND (REPLACE(issuenumber,\' \',\'\') = ? '.(is_null($numero_alternatif) ? '':'OR REPLACE(issuenumber,\' \',\'\') REGEXP ?').')
      GROUP BY inducks_entry.entrycode
      ORDER BY position';
    $resultat_get_extraits=Inducks::requete($requete_get_extraits, [
        $_POST['pays'].'/'.$_POST['magazine'],
        $_POST['numero']
    ] + (is_null($numero_alternatif) ? [] : [$numero_alternatif]));

    $resultats= [];
    $i=0;
    foreach($resultat_get_extraits as $extrait) {
        switch($extrait['sitecode']) {
            case 'webusers': case 'thumbnails':
                $url=Inducks::OUTDUCKS_ROOT.'webusers/'.$extrait['url'];
            break;
            default:
                $url=Inducks::OUTDUCKS_ROOT.$extrait['sitecode'].'/'.$extrait['url'];
        }

        if (count($resultats) === 0) {
            $resultats['cover'] = $url;
        }
        else {
            $num_page=$extrait['position'];
            if (preg_match('#p.+#i', $num_page) === 0) {
                $num_page = -99 + ($i++);
            }
            else {
                $num_page = substr($num_page, 1);
            }
            $resultats[]= ['page'=>$num_page,'url'=>$url];
        }
    }
    if (count($resultat_get_extraits) === 0) {
        $resultats['cover'] = 'images/cover_not_found.png';
    }

    header('Content-Type: application/json');
    echo json_encode($resultats);
}
elseif (isset($_POST['get_magazines_histoire'])) {
    $nom_histoire=str_replace('"','\\"',$_POST['histoire']);
    $retour = [];
    $liste_numeros = [];

    if (strpos($nom_histoire, 'code=') === 0) {
        $retour['direct']=true;
        $code=substr($nom_histoire, strlen('code='));
        $l=DM_Core::$d->toList($_SESSION['id_user']);

        $resultat_requete=Inducks::get_issues_from_storycode($code);

        foreach($resultat_requete as $resultat) {
            $publicationcode = $resultat['publicationcode'];
            [$pays,$magazine] =explode('/',$publicationcode);
            $issuenumber=$resultat['issuenumber'];
            $etat_numero_possede=$l->get_etat_numero_possede($pays,$magazine, $issuenumber);
            if (!($_POST['recherche_bibliotheque'] === 'true' && is_null($etat_numero_possede))) {
                $liste_numeros[$publicationcode.' '.$issuenumber] = [
                    'pays'=>$pays,
                    'publicationcode'=>$publicationcode,
                    'magazine_numero'=>$magazine.'.'.$issuenumber,
                    'etat'=> $etat_numero_possede
                ];
            }
        }

        $noms_magazines = Inducks::get_noms_complets_magazines(
            array_unique(array_values(array_map(function($numero) {
                return $numero['publicationcode'];
            }, $liste_numeros)))
        );

        array_walk($liste_numeros, function(&$numero) use($noms_magazines) {
            $numero['titre'] = $noms_magazines[$numero['publicationcode']];
        });

        usort($liste_numeros, function($a, $b) {
            if ($a['etat'] !== $b['etat']) {
                return !is_null($a['etat']) && is_null($b['etat']) ? -1 : 1;
            }
            return $a['pays'].$a['magazine_numero'] < $b['pays'].$b['magazine_numero'] ? -1 : 1;
        });
    }
    else {
        $condition = 'MATCH(inducks_entry.title) AGAINST (\''.implode(',', explode(' ', $nom_histoire)).'\')';
        $requete="
          SELECT DISTINCT inducks_storyversion.storycode AS storycode, inducks_entry.title AS title, $condition AS score
          FROM inducks_entry
          INNER JOIN inducks_storyversion ON inducks_entry.storyversioncode = inducks_storyversion.storyversioncode
          WHERE $condition
          ORDER BY score DESC, title";
        $resultat_requete=Inducks::requete($requete);
        foreach($resultat_requete as $resultat) {
            $code=$resultat['storycode'];
            $title=$resultat['title'];
            $liste_numeros[]= [
                'code'=>$code,
                'titre'=>$title
            ];
        }

        if (count($liste_numeros) > 10) {
            $liste_numeros=array_slice($liste_numeros, 0,10);
            $retour['limite']=true;
        }
    }

    $retour['liste_numeros'] = array_values($liste_numeros);

    header('Content-Type: application/json');
    echo json_encode($retour);
}

function nettoyer_numero($numero) {
    return str_replace("\n",'',preg_replace('#[+ ]+#',' ',$numero));
}

function nettoyer_numero_sans_espace($numero) {
    return str_replace("\n",'',preg_replace('#[+ ]+#','',$numero));
}

function nettoyer_numero_base_sans_espace($ligne_resultat) {
    $ligne_resultat['issuenumber'] = nettoyer_numero_sans_espace($ligne_resultat['issuenumber']);
    return $ligne_resultat;
}
