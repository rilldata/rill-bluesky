-- @materialize: true

SELECT * FROM read_parquet('https://hive.buz.dev/bluesky/jetstream/latest.parquet')