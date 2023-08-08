# Install Beekeeper Studio on Ubuntu
# Install Microsoft SQL Server Management Studio on Windows

# Azure Data Studio && MS SQL Server:
https://learn.microsoft.com/en-us/sql/azure-data-studio/download-azure-data-studio?view=sql-server-ver16&tabs=redhat-install%2Credhat-uninstall
https://www.microsoft.com/en-us/sql-server/sql-server-downloads

# AdventureWorks Database backup:
https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure?view=sql-server-ver16&tabs=ssms


# For the Docker method we will follow the steps below:
# Install Docker:
# MacOS: https://docs.docker.com/desktop/install/mac-install/
# Linux: https://docs.docker.com/desktop/install/linux-install/

# Create and Run a container for the Image:
docker run -e "ACCEPT_EULA=1" -e "MSSQL_USER=SA" -e "MSSQL_SA_PASSWORD=SQLConnect1" -e "MSSQL_PID=Developer" -p 1433:1433 -d --name=sql_connect mcr.microsoft.com/azure-sql-edge

# Check if the container is running
docker container ls -a

# Stop and Start Container
docker stop sql_connect
docker start sql_connect

