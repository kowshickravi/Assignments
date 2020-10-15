DO 
$$
BEGIN
    IF EXISTS (SELECT * FROM information_schema.table_constraints WHERE CONSTRAINT_NAME = 'FK_IOCRemediationSettings_AllDomains' AND TABLE_NAME = 'IOCRemediationSettings') THEN
        ALTER TABLE dbo."IOCRemediationSettings" DROP CONSTRAINT "FK_IOCRemediationSettings_AllDomains";
    END IF;
END;
$$;

ALTER TABLE dbo."IOCRemediationSettings" ADD CONSTRAINT "FK_IOCRemediationSettings_AllDomains" FOREIGN KEY ("AllDomainsId")
    REFERENCES dbo."AllDomainsId" ("AllDomainsId");