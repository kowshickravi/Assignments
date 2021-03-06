DO 
$$
BEGIN
    IF EXISTS (SELECT * FROM information_schema.table_constraints WHERE CONSTRAINT_NAME = 'FK_IMRuleCategoryAction_IMAction' AND TABLE_NAME = 'IMRuleCategoryAction') THEN
        ALTER TABLE dbo."IMRuleCategoryAction" DROP CONSTRAINT "FK_IMRuleCategoryAction_IMAction";
    END IF;
END;
$$;

ALTER TABLE dbo."IMRuleCategoryAction" ADD CONSTRAINT "FK_IMRuleCategoryAction_IMAction" FOREIGN KEY ("RuleCategoryAction")
    REFERENCES dbo."IMAction" ("RuleCategoryAction");