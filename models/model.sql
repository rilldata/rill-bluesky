-- @materialize: true
-- Model SQL
-- Reference documentation: https://docs.rilldata.com/reference/project-files/models

{{if dev}} 
  SELECT * FROM 'gs://medriscoll-rill/rill-bluesky-jetstream/year=2024/month=11/day=18/hour=*/1731896872.parquet'
{{else}}
  SELECT * FROM 'gs://medriscoll-rill/rill-bluesky-jetstream/year=2024/month=11/day=18/hour=*/*.parquet'
{{end}}