DO 
$$
BEGIN
    IF EXISTS (SELECT * FROM information_schema.table_constraints WHERE CONSTRAINT_NAME = 'FK_IMRuleCategoryAction_IMRuleCategory' AND TABLE_NAME = 'IMRuleCategoryAction') THEN
        ALTER TABLE dbo."IMRuleCategoryAction" DROP CONSTRAINT "FK_IMRuleCategoryAction_IMRuleCategory";
    END IF;
END;
$$;

ALTER TABLE dbo."IMRuleCategoryAction" ADD CONSTRAINT "FK_IMRuleCategoryAction_IMRuleCategory" FOREIGN KEY ("RuleCategoryId")
    REFERENCES dbo."IMRuleCategory" ("RuleCategoryId");