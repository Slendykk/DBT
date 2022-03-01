{{ config(materialized='table') }}

select * from {{ source('mysql_sakila','address') }}
where _FIVETRAN_DELETED = FALSE

