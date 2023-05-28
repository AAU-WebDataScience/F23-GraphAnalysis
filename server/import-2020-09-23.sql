SPARQL DROP SILENT GRAPH <https://covid-19ds.data.dice-research.org/2020-09-23>;
SPARQL create GRAPH <https://covid-19ds.data.dice-research.org/2020-09-23>;

delete from DB.DBA.load_list;

ld_dir ('/import/2020-09-23', 'bibEntries_hasPublication.nt', 'https://covid-19ds.data.dice-research.org/2020-09-23');
ld_dir ('/import/2020-09-23', 'corona_entities.ttl', 'https://covid-19ds.data.dice-research.org/2020-09-23');
ld_dir ('/import/2020-09-23', 'corona.ttl', 'https://covid-19ds.data.dice-research.org/2020-09-23');

rdf_loader_run ();
checkpoint;
