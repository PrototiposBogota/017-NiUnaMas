json.extract! aggression_detail, :id, :victim_id, :aggression_date, :aggression_time, :mechanism, :scene, :proof_file, :latitude_report, :longitude_report, :created_at, :updated_at
json.url aggression_detail_url(aggression_detail, format: :json)
