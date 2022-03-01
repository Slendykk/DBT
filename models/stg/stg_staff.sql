{{ config(materialized='table') }}

select * from {{ source('mysql_sakila','staff') }}
where _FIVETRAN_DELETED = FALSE

