DO 
$$
BEGIN
    IF EXISTS (SELECT * FROM information_schema.table_constraints WHERE CONSTRAINT_NAME = 'FK_IMProvider_IMProviderType' AND TABLE_NAME = 'IMProvide') THEN
        ALTER TABLE dbo."IMProvider" DROP CONSTRAINT "FK_IMProvider_IMProviderType";
    END IF;
END;
$$;

ALTER TABLE dbo."IMProvider" ADD CONSTRAINT "FK_IMProvider_IMProviderType" FOREIGN KEY ("ProviderTypeId")
    REFERENCES dbo."IMProvider" ("ProviderId");