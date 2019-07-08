------------------------Add row to flyway-schema-version-----------------

IF EXISTS(SELECT TOP 1 1 FROM flyway_schema_history where [version] = '1001.0000.0140' OR description = '19 07 08-15 02 30 Yuval2 [SQLQuery7].[manual] drop dv table-7' OR script = 'F1001_0000_0140__19_07_08-15_02_30_Yuval2_[SQLQuery7].[manual]_drop dv table-7.sql')
BEGIN
	RAISERROR('The script "F1001_0000_0140__19_07_08-15_02_30_Yuval2_[SQLQuery7].[manual]_drop dv table-7.sql" already ran on the database!',16,0)
	GOTO EndScript
END
INSERT INTO flyway_schema_history(installed_rank,version,description,type,script,checksum,installed_by,
installed_on,execution_time,success)
VALUES((SELECT ISNULL( MAX(installed_rank),0) + 1 installed_rank FROM flyway_schema_history), '1001.0000.0140', '19 07 08-15 02 30 Yuval2 [SQLQuery7].[manual] drop dv table-7', 'SQL','F1001_0000_0140__19_07_08-15_02_30_Yuval2_[SQLQuery7].[manual]_drop dv table-7.sql', NULL, (SELECT  SUSER_SNAME()), (SELECT GETDATE()), 0,1 )
-------------------------------------------------------------------------
drop table dv
-------------------------------------------------------------------------
EndScript: