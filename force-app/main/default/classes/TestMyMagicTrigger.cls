@isTest
private class TestMyMagicTrigger {

    @isTest
    static void testReverseFeature() {
        Test.startTest();

        ccrz__E_Product__c cc_product = new ccrz__E_Product__c(
            Name='test me please',
            ccrz__SKU__c='sku100'
        );
        Database.SaveResult result = Database.insert(cc_product);

        Test.stopTest();

        // The product has been saved without any errors.
        System.assert(result.isSuccess());
        System.assert(result.getErrors().size() == 0);

        // The product name has been reversed and saved to
        // a necessary field.
        ID productID = result.getId();
        ccrz__E_Product__c newProduct = [
            SELECT Reverse_Product_Name__c
            FROM ccrz__E_Product__c
            WHERE ID = :productID
        ];

        System.assertEquals(cc_product.Name.reverse(), newProduct.Reverse_Product_Name__c);
    }
}
