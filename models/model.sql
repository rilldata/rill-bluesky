-- @materialize: true
-- Model SQL
-- Reference documentation: https://docs.rilldata.com/reference/project-files/models

{{if dev}} 
  SELECT * FROM '/Users/michaeldriscoll/skeetstream/data/year=2024/month=11/day=18/hour=[7|8|9|10]/*.parquet' 
{{else}}
  SELECT * FROM 'https://hive.buz.dev/bluesky/jetstream/latest.parquet'
{{end}}