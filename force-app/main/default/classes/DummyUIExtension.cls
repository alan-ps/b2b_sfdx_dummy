global virtual class DummyUIExtension extends ccrz.cc_hk_UserInterface.v004 {
    global virtual override String standardIncludes() {
        String retElements = super.standardIncludes();
        retElements += '<script>console.log("B2B SFDX Dummy");</script>\n';
        return retElements;
    }
}
