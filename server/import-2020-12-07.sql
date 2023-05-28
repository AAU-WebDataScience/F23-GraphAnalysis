SPARQL DROP SILENT GRAPH <https://covid-19ds.data.dice-research.org/2020-12-07>;
SPARQL create GRAPH <https://covid-19ds.data.dice-research.org/2020-12-07>;

delete from DB.DBA.load_list;

ld_dir ('/import/2020-12-07', 'bibEntries_hasPublication.nt', 'https://covid-19ds.data.dice-research.org/2020-12-07');
ld_dir ('/import/2020-12-07', 'corona_entities.ttl', 'https://covid-19ds.data.dice-research.org/2020-12-07');
ld_dir ('/import/2020-12-07', 'corona.ttl', 'https://covid-19ds.data.dice-research.org/2020-12-07');

rdf_loader_run ();
checkpoint;
