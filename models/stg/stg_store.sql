{{ config(materialized='table') }}

select * from {{ source('mysql_sakila','store') }}
where _FIVETRAN_DELETED = FALSE

