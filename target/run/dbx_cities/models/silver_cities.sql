
  
    
        create or replace table `airbyte`.`silver_cities`
      
      
    using delta
      
      
      
      
      
      
      as
      

select id, name, user_id from airbyte.bronze_cities
order by id 
limit 6
  