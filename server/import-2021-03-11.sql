SPARQL DROP SILENT GRAPH <https://covid-19ds.data.dice-research.org/2021-03-11>;
SPARQL create GRAPH <https://covid-19ds.data.dice-research.org/2021-03-11>;
checkpoint;

delete from DB.DBA.load_list;

ld_dir ('/import/2021-03-11', 'bibEntries_hasPublication.nt', 'https://covid-19ds.data.dice-research.org/2021-03-11');
ld_dir ('/import/2021-03-11', 'corona_entities.ttl', 'https://covid-19ds.data.dice-research.org/2021-03-11');
ld_dir ('/import/2021-03-11', 'corona.ttl', 'https://covid-19ds.data.dice-research.org/2021-03-11');

rdf_loader_run ();
checkpoint;
