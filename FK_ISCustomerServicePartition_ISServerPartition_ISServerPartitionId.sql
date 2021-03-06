DO 
$$
BEGIN
    IF EXISTS (SELECT * FROM information_schema.table_constraints WHERE CONSTRAINT_NAME = 'FK_ISCustomerServicePartition_ISServerPartition_ISServerPartitionId' AND TABLE_NAME = 'ISCustomerServicePartition') THEN
        ALTER TABLE dbo."ISCustomerServicePartition" DROP CONSTRAINT "FK_ISCustomerServicePartition_ISServerPartition_ISServerPartitionId";
    END IF;
END;
$$;

ALTER TABLE dbo."IOCRemediationAlert" ADD CONSTRAINT "FK_ISCustomerServicePartition_ISServerPartition_ISServerPartitionId" FOREIGN KEY ("ServerPartitionId")
    REFERENCES dbo."ISServerPartitionId" ("ServerPartitionId");