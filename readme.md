 # Rendu devoir XML

## Encodage XML d’un forum Incel italien
 Le rendu PDF de l'experience peut être visionné <a href='https://nbviewer.org/github/savaij/devoir_XML/blob/main/report/main/report.pdf' target='_blank'>en cliquant ici</a>.
<br><br>
### Contenu:

- `fdb_scraped_pulito.csv` : données sources, _scraped_ d'un forum Incel italien

- `fdb_to_xml.ipynb`: code python utilisé pour encoder les données source en XML

- `fdb_xml.xml`: tous les post du forum encodés en XML

- `transform_files`: les feuilles de transformation XSLT utilisées:
    - `to_csv_v1.xsl`: feuille de transformation compatible avec XSLT v1.0

    - `to_csv_gpt.xsl`: feuille de transormation compatible avec XSLT v1.0, rendue plus efficace par ChatGPT

    - `to_csv_v2.xsl`: feuille de transformation compatible avec XSLT v2.0

    - `results`: csv crées. Ils sont tous égaux

- `schema.rng`: schéma créé à partir du fichier encodé

- `images` et `report` contiennent les fichiers utilisés pour la création du PDF en Latex.

