{{ config(materialized='table') }}

select * from {{ source('mysql_sakila','actor') }}
where _FIVETRAN_DELETED = FALSE

