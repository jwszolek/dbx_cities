{{ config(materialized='table') }}

select snow.id as snow_id, 
       snow.name as snow_name,
       dbx.id as dbx_id,
       dbx.name as dbx_name,
       dbx.user_id as dbx_user_id
from hive_metastore.default.snowflake_silver_users snow
join airbyte.silver_cities dbx on snow.id == dbx.user_id;