DO 
$$
BEGIN
    IF EXISTS (SELECT * FROM information_schema.table_constraints WHERE CONSTRAINT_NAME = 'FK_ISRetentionDefinition_ISTableClass_ISTableClassId' AND TABLE_NAME = 'ISRetentionDefinition') THEN
        ALTER TABLE dbo."ISRetentionDefinition" DROP CONSTRAINT "FK_ISRetentionDefinition_ISTableClass_ISTableClassId";
    END IF;
END;
$$;

ALTER TABLE dbo."ISRetentionDefinition" ADD CONSTRAINT "FK_ISRetentionDefinition_ISTableClass_ISTableClassId" FOREIGN KEY ("TableClassId")
    REFERENCES dbo."ISTableClassId" ("TableClassId");