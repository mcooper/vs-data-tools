SELECT t.uuid,
    t.parent_uuid,
    t.survey_uuid,
    t.field_id AS "Field ID",
    t.season AS "Season",
    agric.country AS "Country",
    country.partner_institution AS "Partner Organization",
    landscape.centerpoint_longitude AS longitude,
    landscape.centerpoint_latitude AS latitude,
    agric.landscape_no AS "Landscape #",
    agric.hh_refno AS "Household ID",
    agric.data_entry_date AS "Data entry date",
    t.ag3a_02_1,
    t.ag3a_02_2,
    t.ag3a_02_3,
    t.ag3a_03,
    t.ag3a_03_other,
    t.ag3a_04,
    t.ag3a_07_1 AS ag3a_05,
    t.ag3a_10 AS ag3a_06,
    t.ag3a_14 AS ag3a_07,
    t.ag3a_15_1 AS ag3a_08_1,
    t.ag3a_15_2 AS ag3a_08_2,
    t.ag3a_17 AS ag3a_09,
    t.ag3a_18 AS ag3a_10,
    t.ag3a_18_other AS ag3a_10_other,
    t.ag3a_20 AS ag3a_11,
    t.ag3a_20_other AS ag3a_11_other,
    t.ag31_vs_13 AS ag3a_12,
    t.ag3a_23 AS ag3a_13,
    t.ag3a_24 AS ag3a_14,
    t.ag3a_24_other AS ag3a_14_other,
    t.ag3a_28 AS ag3a_15,
    t.ag3a_34 AS ag3a_16,
    t.ag3f_33_17,
    t.ag3a_39 AS ag3a_18,
    t.ag3a_vs_18a AS ag3a_18b,
    t.ag3a_vs_18a_other AS ag3a_18b_other,
    t.ag3a_vs_18b AS ag3a_18c,
    t.ag3a_vs_18b_other AS ag3a_18c_other,
    t.ag3a_40 AS ag3a_19,
    t.ag3a_41 AS ag3a_20,
    t.ag3a_42 AS ag3a_21,
    t.ag3a_43 AS ag3a_22,
    t.ag3a_45 AS ag3a_23,
    t.ag3a_46 AS ag3a_24,
    t.ag3a_46_other AS ag3a_24_other,
    t.ag3a_47 AS ag3a_25,
    t.ag3a_48 AS ag3a_26,
    t.ag3a_49 AS ag3a_27,
    t.ag3a_52 AS ag3a_28,
    t.ag3a_53 AS ag3a_29,
    t.ag3a_53_other AS ag3a_29_other,
    t.ag3a_54 AS ag3a_30,
    t.ag3a_55 AS ag3a_31,
    t.ag3a_56 AS ag3a_32,
    t.ag3a_58 AS ag3a_33,
    t.ag3a_59 AS ag3a_34,
    t.ag3a_59_other AS ag3a_34_other,
    t.ag3a_60_1 AS ag3a_35_1,
    t.ag3a_60_2 AS ag3a_35_2,
    t.ag3a_61,
    t.ag3a_72_1 AS ag3a_38_1,
    t.ag3a_72_2 AS ag3a_38_2,
    t.ag3a_72_21 AS ag3a_38_21,
    t.ag3a_72_3 AS ag3a_38_3,
    t.ag3a_72_4 AS ag3a_38_4,
    t.ag3a_72_5 AS ag3a_38_5,
    t.ag3a_72_51 AS ag3a_38_51,
    t.ag3a_72_6 AS ag3a_38_6,
    t.ag3a_72_62 AS ag3a_38_61,
    t.ag3a_72_61 AS ag3a_38_62,
    t.ag3a_72_63 AS ag3a_38_63,
    t.ag3a_72_64 AS ag3a_38_64,
    t.ag3a_72_7 AS ag3a_38_7,
    t.ag3a_72_8 AS ag3a_38_8,
    t.ag3a_72_81 AS ag3a_38_81,
    t.ag3a_72_9 AS ag3a_38_9,
    t.fd33_18a_1,
    t.fd33_18a_2,
    t.fd33_18a_3,
    t.fd33_18a_4,
    t.fd33_18a_5,
    t.fd33_18a_6,
    t.fd33_18a_7,
    t.fd33_18a_8,
    t.fd35_24a_dap,
    t.fd35_24a_urea,
    t.fd35_24a_tsp,
    t.fd35_24a_can,
    t.fd35_24a_sa,
    t.fd35_24a_npk,
    t.fd35_24a_mrp,
    t.fd3b3_18a_1,
    t.fd3b3_18a_2,
    t.fd3b3_18a_3,
    t.fd3b3_18a_4,
    t.fd3b3_18a_5,
    t.fd3b3_18a_6,
    t.fd3b3_18a_7,
    t.fd3b3_18a_8,
    t.fd3b5a_24a_dap,
    t.fd3b5a_24a_urea,
    t.fd3b5a_24a_tsp,
    t.fd3b5a_24a_can,
    t.fd3b5a_24a_sa,
    t.fd3b5a_24a_npk,
    t.fd3b5a_24a_mrp
   FROM (((agric_field_details t
     JOIN agric ON (((t.parent_uuid)::text = (agric.uuid)::text)))
     JOIN country ON (((country.country)::text = (agric.country)::text)))
     JOIN landscape ON ((((landscape.country)::text = (agric.country)::text) AND (landscape.landscape_no = agric.landscape_no))))
