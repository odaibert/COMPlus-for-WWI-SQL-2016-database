# using vNext image
FROM microsoft/mssql-server-windows
 
# create directory within SQL container for database files
RUN powershell -Command (mkdir C:\\SQLServer)
 
#copy the database files from host to container
COPY WideWorldImporters-Full.bak C:\\SQLServer
COPY restore-database.sql c:\\SQLServer

RUN sqlcmd -i c:\\sqlserver\\restore-database.sql

# set environment variables
ENV sa_password=Testing11@@
 
ENV ACCEPT_EULA=Y
 


