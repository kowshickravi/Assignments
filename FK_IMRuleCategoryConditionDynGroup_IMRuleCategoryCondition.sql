DO 
$$
BEGIN
    IF EXISTS (SELECT * FROM information_schema.table_constraints WHERE CONSTRAINT_NAME = 'FK_IMRuleCategoryConditionDynGroup_IMRuleCategoryCondition' AND TABLE_NAME = 'CustomTextContentLine') THEN
        ALTER TABLE dbo."CustomTextContentLine" DROP CONSTRAINT "FK_IMRuleCategoryConditionDynGroup_IMRuleCategoryCondition";
    END IF;
END;
$$;

ALTER TABLE dbo."IMRuleCategoryConditionDynGroup" ADD CONSTRAINT "FK_IMRuleCategoryConditionDynGroup_IMRuleCategoryCondition" FOREIGN KEY ("IMRuleCategoryCondition")
    REFERENCES dbo."IMRuleCategoryCondition" ("IMRuleCategoryCondition");