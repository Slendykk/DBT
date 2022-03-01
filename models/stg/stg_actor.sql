{{ config(materialized='table') }}

select * from {{ source('MYSQL_RDS_NEW_SAKILA', 'actor') }}
where _fivetran_deleted = FALSE