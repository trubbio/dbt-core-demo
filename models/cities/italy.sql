with italy_cities as (
    SELECT 
        c.city_name as city, 
        r.region_name as region, 
        s.state_name as state 
    FROM dh_core.dbt_local.cities c
    JOIN dh_core.dbt_local.regions r ON c.region_id = r.region_id
    JOIN dh_core.dbt_local.states s ON r.state_id = s.state_id
    WHERE s.state_name = 'Italy'
)

select * from italy_cities