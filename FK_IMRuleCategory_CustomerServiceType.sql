DO 
$$
BEGIN
    IF EXISTS (SELECT * FROM information_schema.table_constraints WHERE CONSTRAINT_NAME = 'FK_IMRuleCategory_CustomerServiceType' AND TABLE_NAME = 'IMRuleCategory') THEN
        ALTER TABLE dbo."IMRuleCategory" DROP CONSTRAINT "FK_IMRuleCategory_CustomerServiceType";
    END IF;
END;
$$;

ALTER TABLE dbo."IMRuleCategory" ADD CONSTRAINT "FK_IMRuleCategory_CustomerServiceType" FOREIGN KEY ("CustomerServiceTypeID")
    REFERENCES dbo."CustomerServiceType" ("CustomerServiceTypeID");