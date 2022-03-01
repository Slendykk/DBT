{{ config(materialized='table') }}

select * from {{ source('MYSQL_RDS_NEW_SAKILA', 'staff') }}
where _fivetran_deleted = FALSE