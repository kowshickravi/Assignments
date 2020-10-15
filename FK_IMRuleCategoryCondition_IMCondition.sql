DO 
$$
BEGIN
    IF EXISTS (SELECT * FROM information_schema.table_constraints WHERE CONSTRAINT_NAME = 'FK_IMRuleCategoryCondition_IMCondition' AND TABLE_NAME = 'FK_IMRuleCategoryCondition') THEN
        ALTER TABLE dbo."IMRuleCategoryCondition" DROP CONSTRAINT "FK_IMRuleCategoryCondition_IMCondition";
    END IF;
END;
$$;

ALTER TABLE dbo."IMRuleCategoryCondition" ADD CONSTRAINT "FK_IMRuleCategoryCondition_IMCondition" FOREIGN KEY ("IMConditionId")
    REFERENCES dbo."IMCondition" ("IMConditionId");