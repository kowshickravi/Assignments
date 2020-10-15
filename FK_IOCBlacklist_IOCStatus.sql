DO 
$$
BEGIN
    IF EXISTS (SELECT * FROM information_schema.table_constraints WHERE CONSTRAINT_NAME = 'FK_IOCBlacklist_IOCStatus' AND TABLE_NAME = 'IOCBlacklist') THEN
        ALTER TABLE dbo."IOCBlacklist" DROP CONSTRAINT "FK_IOCBlacklist_IOCStatus";
    END IF;
END;
$$;

ALTER TABLE dbo."IOCBlacklist" ADD CONSTRAINT"FK_IOCBlacklist_IOCStatus" FOREIGN KEY ("IOCStatusID")
    REFERENCES dbo."IOCStatus" ("IOCStatusID");