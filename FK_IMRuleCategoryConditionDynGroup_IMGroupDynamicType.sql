DO 
$$
BEGIN
    IF EXISTS (SELECT * FROM information_schema.table_constraints WHERE CONSTRAINT_NAME = 'FK_IMRuleCategoryConditionDynGroup_IMGroupDynamicType' AND TABLE_NAME = 'CustomTextContentLine') THEN
        ALTER TABLE dbo."IMRuleCategoryConditionDynGroup" DROP CONSTRAINT "FK_IMRuleCategoryConditionDynGroup_IMGroupDynamicType";
    END IF;
END;
$$;

ALTER TABLE dbo."IMRuleCategoryConditionDynGroup" ADD CONSTRAINT "FK_IMRuleCategoryConditionDynGroup_IMGroupDynamicType" FOREIGN KEY ("CustomTextContentLocaleId")
    REFERENCES dbo."IMGroupDynamicType" ("IMGroupDynamicTypeID");