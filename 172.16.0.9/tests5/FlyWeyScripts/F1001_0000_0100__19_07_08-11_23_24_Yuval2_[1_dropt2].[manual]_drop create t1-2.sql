------------------------Add row to flyway-schema-version-----------------

IF EXISTS(SELECT TOP 1 1 FROM flyway_schema_history where [version] = '1001.0000.0100' OR description = '19 07 08-11 23 24 Yuval2 [1 dropt2].[manual] drop create t1-2' OR script = 'F1001_0000_0100__19_07_08-11_23_24_Yuval2_[1_dropt2].[manual]_drop create t1-2.sql')
BEGIN
	RAISERROR('The script "F1001_0000_0100__19_07_08-11_23_24_Yuval2_[1_dropt2].[manual]_drop create t1-2.sql" already ran on the database!',16,0)
	GOTO EndScript
END

INSERT INTO flyway_schema_history(installed_rank,version,description,type,script,checksum,installed_by,
installed_on,execution_time,success)
VALUES((SELECT ISNULL( MAX(installed_rank),0) + 1 installed_rank FROM flyway_schema_history), '1001.0000.0100', '19 07 08-11 23 24 Yuval2 [1 dropt2].[manual] drop create t1-2', 'SQL','F1001_0000_0100__19_07_08-11_23_24_Yuval2_[1_dropt2].[manual]_drop create t1-2.sql', NULL, (SELECT  SUSER_SNAME()), (SELECT GETDATE()), 0,1 )
-------------------------------------------------------------------------
drop table t2
-------------------------------------------------------------------------
EndScript: