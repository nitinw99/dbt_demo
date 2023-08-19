WITH source AS (
    SELECT * FROM {{ source('jaffle_shop','orders') }}
)
,

stagged AS (
select
    id as order_id,
    user_id as customer_id,
    order_date,
    status

from source
)

select * from stagged