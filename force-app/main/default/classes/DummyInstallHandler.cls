global class DummyInstallHandler implements InstallHandler {
    global void onInstall(InstallContext context) {
        if (context.previousVersion() == null) {
            // Create new Configuration Module.
            ccrz__E_ConfigurationModule__c dummyConfigModule = new ccrz__E_ConfigurationModule__c(
                Name = 'Dummy',
                ccrz__APIName__c = 'dummy'
            );
            insert dummyConfigModule;

            // Create new Configuration Meta.
            ccrz__E_ConfigurationMeta__c dummyJSMeta = new ccrz__E_ConfigurationMeta__c(
                Name = 'Dummy JS',
                ccrz__APIName__c = 'dummyjs',
                ccrz__ConfigurationModule__c = dummyConfigModule.Id,
                ccrz__Description__c = 'Add dummy JS to a page.'
            );
            insert dummyJSMeta;

            // Create new Configuration.
            ccrz__E_Configuration__c dummyJS = new ccrz__E_Configuration__c(
                ccrz__ConfigurationMeta__c = dummyJSMeta.Id,
                ccrz__PageName__c = 'all',
                ccrz__SequencePriority__c = 2.0,
                ccrz__Storefront__c = 'DefaultStore',
                ccrz__TextValue__c = 'TRUE',
                Name  = 'DefaultStore.all.pmt_wp.pay'
            );
            insert dummyJS;
        }
    }
}
