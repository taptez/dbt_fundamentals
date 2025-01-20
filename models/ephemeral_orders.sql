{{ config(materialized='ephemeral') }}

select * from {{ source('jaffle_shop', 'orders') }}