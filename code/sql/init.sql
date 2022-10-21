SELECT
  FORMAT_TIMESTAMP('%d/%m/%Y %H:%M', TIMESTAMP_MICROS(event_timestamp)) AS date_time,
  user_pseudo_id,
  event_name,
  traffic_source.medium,
  traffic_source.source,
FROM
  `helpful-helper-516.analytics_228181372.events_20221004`