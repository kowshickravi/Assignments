DO 
$$
BEGIN
    IF EXISTS (SELECT * FROM information_schema.table_constraints WHERE CONSTRAINT_NAME = 'FK_ISRetentionDefinition_ISPartitionUnit_ISPartitionUnitId' AND TABLE_NAME = 'ISRetentionDefinition') THEN
        ALTER TABLE dbo."ISRetentionDefinition" DROP CONSTRAINT "FK_ISRetentionDefinition_ISPartitionUnit_ISPartitionUnitId";
    END IF;
END;
$$;

ALTER TABLE dbo."ISRetentionDefinition" ADD CONSTRAINT "FK_ISRetentionDefinition_ISPartitionUnit_ISPartitionUnitId" FOREIGN KEY ("PartitionUnitId")
    REFERENCES dbo."ISPartitionUnitId" ("PartitionUnitId");