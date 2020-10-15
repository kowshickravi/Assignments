DO 
$$
BEGIN
    IF EXISTS (SELECT * FROM information_schema.table_constraints WHERE CONSTRAINT_NAME = 'FK_ISServerDataCentre_ISServerLocation_ISServerLocationId' AND TABLE_NAME = 'ISServerDataCentre') THEN
        ALTER TABLE dbo."ISServerDataCentre" DROP CONSTRAINT "FK_ISServerDataCentre_ISServerLocation_ISServerLocationId";
    END IF;
END;
$$;

ALTER TABLE dbo."ISServerDataCentre" ADD CONSTRAINT "FK_ISServerDataCentre_ISServerLocation_ISServerLocationId" FOREIGN KEY ("ServerLocationId")
    REFERENCES dbo."ISServerLocationId" ("ServerLocationId");