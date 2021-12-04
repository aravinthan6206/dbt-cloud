{{ config (materialized = "table") }}

SELECT CAST(date AS DATE) AS cases_date, location, new_cases, new_deaths, new_recovered, new_active_cases, province, island, special_status,
       total_regencies, total_cities, total_districts, total_urban_villages, total_rural_villages, area_km_2_ AS total_area_sq_km, population, 
       population_density, latitude, longitude, case_fatality_rate, case_recovered_rate, growth_factor_of_new_cases, growth_factor_of_new_deaths
FROM FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_ARAVINTHAN_SUBRAMANIAN
WHERE location_level = 'Province'