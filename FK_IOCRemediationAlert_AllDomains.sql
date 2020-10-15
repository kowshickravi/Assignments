DO 
$$
BEGIN
    IF EXISTS (SELECT * FROM information_schema.table_constraints WHERE CONSTRAINT_NAME = 'FK_IOCRemediationAlert_AllDomains' AND TABLE_NAME = 'IOCRemediationAlert') THEN
        ALTER TABLE dbo."IOCRemediationAlert" DROP CONSTRAINT "FK_IOCRemediationAlert_AllDomains";
    END IF;
END;
$$;

ALTER TABLE dbo."IOCRemediationAlert" ADD CONSTRAINT "FK_IOCRemediationAlert_AllDomains" FOREIGN KEY ("AllDomainsId")
    REFERENCES dbo."AllDomains" ("AllDomainsId");