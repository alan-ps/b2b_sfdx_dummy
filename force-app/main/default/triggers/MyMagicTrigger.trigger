trigger MyMagicTrigger on ccrz__E_Product__c (before insert, before update) {
    for (ccrz__E_Product__c cc_product : Trigger.New) {
        cc_product.Reverse_Product_Name__c = cc_product.Name.reverse();
    }
}
