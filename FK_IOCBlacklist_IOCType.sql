DO 
$$
BEGIN
    IF EXISTS (SELECT * FROM information_schema.table_constraints WHERE CONSTRAINT_NAME = 'FK_IOCBlacklist_IOCType' AND TABLE_NAME = 'IOCBlacklist') THEN
        ALTER TABLE dbo."IOCBlacklist" DROP CONSTRAINT "FK_IOCBlacklist_IOCType";
    END IF;
END;
$$;

ALTER TABLE dbo."IOCBlacklist" ADD CONSTRAINT"FK_IOCBlacklist_IOCType" FOREIGN KEY ("IOCTypeID")
    REFERENCES dbo."IOCType" ("IOCTypeID");