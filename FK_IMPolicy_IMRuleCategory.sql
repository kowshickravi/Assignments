DO 
$$
BEGIN
    IF EXISTS (SELECT * FROM information_schema.table_constraints WHERE CONSTRAINT_NAME = 'FK_IMPolicy_IMRuleCategory' AND TABLE_NAME = 'IMPolicy') THEN
        ALTER TABLE dbo."IMPolicy" DROP CONSTRAINT "FK_IMPolicy_IMRuleCategory";
    END IF;
END;
$$;

ALTER TABLE dbo."IMPolicy" ADD CONSTRAINT "FK_IMPolicy_IMRuleCategory" FOREIGN KEY ("RuleCategoryId")
    REFERENCES dbo."IMRuleCategory" ("RuleCategoryId");