DO 
$$
BEGIN
    IF EXISTS (SELECT * FROM information_schema.table_constraints WHERE CONSTRAINT_NAME = 'FK_InterfaceUQSettings_ServiceUQOwnerType' AND TABLE_NAME = 'InterfaceUQSettings') THEN
        ALTER TABLE dbo."InterfaceUQSettings" DROP CONSTRAINT "FK_InterfaceUQSettings_ServiceUQOwnerType";
    END IF;
END;
$$;

ALTER TABLE dbo."InterfaceUQSettings" ADD CONSTRAINT "FK_InterfaceUQSettings_ServiceUQOwnerType" FOREIGN KEY ("ServiceUQOwnerTypeID")
    REFERENCES dbo."ServiceUQOwnerType" ("ServiceUQOwnerTypeID");