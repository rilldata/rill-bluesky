-- Model SQL
-- Reference documentation: https://docs.rilldata.com/reference/project-files/models

SELECT map_from_entries(ARRAY_AGG(struct_pack(alpha2, english_name))) FROM (
    SELECT
    alpha3_bibliographic,
    alpha3_terminologic,
    alpha2,
    english_name,
    french_name
FROM 
   read_csv('https://www.loc.gov/standards/iso639-2/ISO-639-2_utf-8.txt', 
        delim='|', 
        columns={
            'alpha3_bibliographic': 'TEXT',
            'alpha3_terminologic': 'TEXT',
            'alpha2': 'VARCHAR',
            'english_name': 'VARCHAR',
            'french_name': 'TEXT'
        },
        header=False
    ))
WHERE alpha2 is not null 