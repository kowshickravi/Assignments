DO 
$$
BEGIN
    IF EXISTS (SELECT * FROM information_schema.table_constraints WHERE CONSTRAINT_NAME = 'FK_IMRuleCategoryCondition_IMRuleCategory' AND TABLE_NAME = 'IMRuleCategoryCondition') THEN
        ALTER TABLE dbo."IMRuleCategoryCondition" DROP CONSTRAINT "FK_IMRuleCategoryCondition_IMRuleCategory";
    END IF;
END;
$$;

ALTER TABLE dbo."IMRuleCategoryCondition" ADD CONSTRAINT "FK_IMRuleCategoryCondition_IMRuleCategory" FOREIGN KEY ("IMRuleCategoryID")
    REFERENCES dbo."IMRuleCategory" ("IMRuleCategoryID");