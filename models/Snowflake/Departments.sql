-- File: models/Snowflake/Departments.sql

{{ config(
    post_hook=[
      "DELETE FROM MYDB.POSTGRES_SNOWFLAKE_DB_MYSCHEMA.DEPARTMENTS WHERE Department_ID = 1",
      "INSERT INTO MYDB.POSTGRES_SNOWFLAKE_DB_MYSCHEMA.DEPARTMENTS (Department_ID, Department_Name) VALUES (120, 'TestDept')"
    ]
) }}

-- This is the main SELECT part for your model
SELECT 
    Department_ID, 
    Department_Name
FROM MYDB.POSTGRES_SNOWFLAKE_DB_MYSCHEMA.DEPARTMENTS
