json.extract! aggression_detail, :id, :user_id, :perpetrator_name, :perpetrator_age, :perpetrator_gender, :relatioship, :live_together, :aggression_date, :aggression_time, :mechanism, :scene, :proof_file, :latitude_report, :longitude_report, :created_at, :updated_at
json.url aggression_detail_url(aggression_detail, format: :json)
