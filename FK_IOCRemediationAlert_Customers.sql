DO 
$$
BEGIN
    IF EXISTS (SELECT * FROM information_schema.table_constraints WHERE CONSTRAINT_NAME = 'FK_IOCRemediationAlert_Customers' AND TABLE_NAME = 'IOCRemediationAlert') THEN
        ALTER TABLE dbo."IOCRemediationAlert" DROP CONSTRAINT "FK_IOCRemediationAlert_Customers";
    END IF;
END;
$$;

ALTER TABLE dbo."IOCRemediationAlert" ADD CONSTRAINT "FK_IOCRemediationAlert_Customers" FOREIGN KEY ("CustomersId")
    REFERENCES dbo."Customers" ("CustomersId");