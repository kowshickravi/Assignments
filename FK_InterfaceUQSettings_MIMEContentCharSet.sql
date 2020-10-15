DO 
$$
BEGIN
    IF EXISTS (SELECT * FROM information_schema.table_constraints WHERE CONSTRAINT_NAME = 'FK_InterfaceUQSettings_MIMEContentCharSet' AND TABLE_NAME = 'InterfaceUQSettings') THEN
        ALTER TABLE dbo."InterfaceUQSettings" DROP CONSTRAINT "FK_InterfaceUQSettings_MIMEContentCharSet";
    END IF;
END;
$$;

ALTER TABLE dbo."InterfaceUQSettings" ADD CONSTRAINT "FK_InterfaceUQSettings_MIMEContentCharSet" FOREIGN KEY ("MIMEContentCharSetID")
    REFERENCES dbo."MIMEContentCharSet" ("CustomerServiceTypeID");