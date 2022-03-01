{{ config(materialized='table') }}

select * from {{ source('MYSQL_RDS_NEW_SAKILA', 'store') }}
where _fivetran_deleted = FALSE