DO 
$$
BEGIN
    IF EXISTS (SELECT * FROM information_schema.table_constraints WHERE CONSTRAINT_NAME = 'FK_IMRuleCategoryAction_IMCustomerNotification' AND TABLE_NAME = 'IMRuleCategoryAction') THEN
        ALTER TABLE dbo."IMRuleCategoryActionID" DROP CONSTRAINT "FK_IMRuleCategoryAction_IMCustomerNotification";
    END IF;
END;
$$;

ALTER TABLE dbo."IMRuleCategoryActionID" ADD CONSTRAINT "FK_IMRuleCategoryAction_IMCustomerNotification" FOREIGN KEY ("IMCustomerNotificationId")
    REFERENCES dbo."IMCustomerNotification" ("IMRuleCategoryActionID");