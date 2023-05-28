SPARQL DROP SILENT GRAPH <https://covid-19ds.data.dice-research.org/2021-11-14>;
SPARQL create GRAPH <https://covid-19ds.data.dice-research.org/2021-11-14>;
checkpoint;

delete from DB.DBA.load_list;

ld_dir ('/import/2021-11-14', 'bibEntries_hasPublication.nt', 'https://covid-19ds.data.dice-research.org/2021-11-14');
ld_dir ('/import/2021-11-14', 'corona_entities.ttl', 'https://covid-19ds.data.dice-research.org/2021-11-14');
ld_dir ('/import/2021-11-14', 'corona.ttl', 'https://covid-19ds.data.dice-research.org/2021-11-14');

rdf_loader_run ();
checkpoint;
