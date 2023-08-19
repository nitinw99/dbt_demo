WITH source AS (
    SELECT * FROM {{ source('jaffle_shop','customers')}}
)
,


stagged AS (
select
    id as customer_id,
    first_name,
    last_name

from source

)

select * from stagged