{{ config (materialized = "table") }}

SELECT CAST(date AS DATE) AS cases_date, new_cases, new_deaths, new_recovered, new_active_cases, case_fatality_rate, case_recovered_rate, 
       growth_factor_of_new_cases, growth_factor_of_new_deaths, location, location_level
FROM FIVETRAN_INTERVIEW_DB.GOOGLE_SHEETS.COVID_19_INDONESIA_ARAVINTHAN_SUBRAMANIAN
