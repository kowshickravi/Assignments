DO 
$$
BEGIN
    IF EXISTS (SELECT * FROM information_schema.table_constraints WHERE CONSTRAINT_NAME = 'FK_InterfaceUQSettings_ServiceUQNotifyWhen' AND TABLE_NAME = 'InterfaceUQSettings') THEN
        ALTER TABLE dbo."InterfaceUQSettings" DROP CONSTRAINT "FK_InterfaceUQSettings_ServiceUQNotifyWhen";
    END IF;
END;
$$;

ALTER TABLE dbo."InterfaceUQSettings" ADD CONSTRAINT "FK_InterfaceUQSettings_ServiceUQNotifyWhen" FOREIGN KEY ("ServiceUQNotifyID")
    REFERENCES dbo."ServiceUQNotifyWhen" ("ServiceUQNotifyID");