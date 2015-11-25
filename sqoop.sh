sqoop import -connect jdbc:sqlserver://<servername>:<port>
             -username=<username>
             -password=<password>
             --query "SELECT id, col_1, col_2 FROM test WHERE 1=1 and \$CONDITIONS"
             -m 1
             --as-sequencefile
             --target-dir=/user/sagar/sqldata
             --package-name com.sqoop
             --bindir /home/sagar/generated
