#!/usr/bin/env ruby

require 'rgeo/geo_json'
require 'json'

str1 = '{"type": "Point", "coordinates": [1,2]}'
geom = RGeo::GeoJSON.decode(str1, json_parser: :json)
p geom.as_text if geom # => "POINT(1.0 2.0)"

str2 = '{"type":"Feature","geometry":{"type":"Point","coordinates":[2.5,4.0]},"properties":{"color":"red"}}'
feature = RGeo::GeoJSON.decode(str2, json_parser: :json)
p feature['color']          # => 'red'
p feature.geometry.as_text  # => "POINT(2.5 4.0)"

str3 = '{"type": "FeatureCollection", "features": [{"type": "Feature", "geometry": {"type": "polygon", "coordinates""": []}, "properties": {"feature_id": 1, "name": "六本木ヒルズ"}, "id": 1}, {"type": "Feature", "geometry": {"type": "", "coordinates""": []}, "properties": {"feature_id": 2, "name": "渋温泉"}, "id": 2}], "properties": {"name": "summary"}}'
feature = RGeo::GeoJSON.decode(str3, json_parser: :json)
p feature
