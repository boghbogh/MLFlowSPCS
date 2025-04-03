# Requirements

- SNOW CLI https://docs.snowflake.com/en/developer-guide/snowflake-cli/installation/installation
- Docker

# Instructions 

- Run Setup.sql to setup requried objects. Step by Step. Don't run all. You need to stop somewhere half way and pusht he docker image.
- Modify mlflowspec.yaml to point to your own image registry
- Modify the basic_auth.ini to have the admin username/password
- Modify entrypoint.sh to point to correct mount points.
- use commandline.txt commands on terminal to build and push your docker image
- Go back to Setup.sql, create the service and take the service internal endpoint address. 
- Go to the notebook (mlflow.ipnb) and setup username,password and Internal MLFlow Address. You can use external endpoint to view the UI but we use inetrnal URL to log the experiements. 

# How you can break this!

- You ran Setup.sql without actually reading it and replacing the variables and etc.! Please read every sql statement, create your own db and schema and use those for rest of the script!
- MFA is on and you forgot!  I recommend turning off MFA during docker image push. It will take a while depending on your setup
- This won't work on Notebooks on Warehouse runtime. 
- This won't work with MLFlow external URL. 

