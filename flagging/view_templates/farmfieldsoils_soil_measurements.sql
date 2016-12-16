SELECT farmfieldsoils_soil_measurements.uuid,
    farmfieldsoils_soil_measurements.parent_uuid,
    farmfieldsoils_soil_measurements.survey_uuid,
    ffs.country AS "Country",
    country.partner_institution AS "Partner Organization",
    landscape.centerpoint_longitude AS longitude,
    landscape.centerpoint_latitude AS latitude,
    ffs.landscape_no AS "Landscape #",
    ffs.hh_refno AS "Household ID",
    farmfieldsoils_soil_measurements.field_no AS "Field #",
    farmfieldsoils_soil_measurements.b_8 AS "Slope of field",
    farmfieldsoils_soil_measurements.b_9 AS "Visible Signs of Erosion",
    farmfieldsoils_soil_measurements.b_9_a AS "Erosion Control/Water Harvesting Facility",
    farmfieldsoils_soil_measurements.b_9_b AS "Type of Erosion Control/Water Harvesting Present",
    farmfieldsoils_soil_measurements.b_9_b_1 AS "Terraces",
    farmfieldsoils_soil_measurements.b_9_b_2 AS "Erosion Control Bunds",
    farmfieldsoils_soil_measurements.b_9_b_3 AS "Gabions / Sand Bags",
    farmfieldsoils_soil_measurements.b_9_b_4 AS "Vetiver Grass",
    farmfieldsoils_soil_measurements.b_9_b_5 AS "Tree Belts",
    farmfieldsoils_soil_measurements.b_9_b_6 AS "Water Harvest Bunds",
    farmfieldsoils_soil_measurements.b_9_b_7 AS "Drainage Ditches",
    farmfieldsoils_soil_measurements.b_9_b_8 AS "Dam",
    farmfieldsoils_soil_measurements.b_10_1 AS "Rooted Plants",
    farmfieldsoils_soil_measurements.b_10_2 AS "Litter Cover",
    farmfieldsoils_soil_measurements.b_10_3 AS "Downed Wood",
    farmfieldsoils_soil_measurements.b_10_4 AS "Stone Or Gravel",
    farmfieldsoils_soil_measurements.b_10_5 AS "Dung",
    farmfieldsoils_soil_measurements.b_10_6 AS "Disturbed Soil (Generally Means Tilled)",
    farmfieldsoils_soil_measurements.b_10_7 AS "Undisturbed, Bare & Porous Soil",
    farmfieldsoils_soil_measurements.b_10_8 AS "Undisturbed, Bare But Sealed Soil",
    farmfieldsoils_soil_measurements.b_10_9 AS "Sodic Soil",
    farmfieldsoils_soil_measurements.b_10_10 AS "Microfloral Crust",
    farmfieldsoils_soil_measurements.b_10_11 AS "Termite Mound",
    farmfieldsoils_soil_measurements.barcode_id AS "Barcode Id"
   FROM (((farmfieldsoils_soil_measurements
     JOIN farmfieldsoils ffs ON (((farmfieldsoils_soil_measurements.parent_uuid)::text = (ffs.uuid)::text)))
     JOIN country ON (((country.country)::text = (ffs.country)::text)))
     JOIN landscape ON ((((landscape.country)::text = (ffs.country)::text) AND (landscape.landscape_no = ffs.landscape_no))))
