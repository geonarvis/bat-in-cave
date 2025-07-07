CREATE TABLE bat_in_danger AS
SELECT DISTINCT ON (species_name, cave_site) *
FROM cave_merged3
WHERE LOWER(TRIM(population_status)) = 'decreasing'
 AND LOWER(TRIM(conservation_status)) = 'vulnerable'
 AND LOWER(TRIM(extinction_risk)) = 'threatened';