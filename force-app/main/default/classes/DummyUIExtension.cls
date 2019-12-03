global virtual class DummyUIExtension extends ccrz.cc_hk_UserInterface.v004 {
    global static String DUMMY_JS = 'DUMMY_JS';

    global virtual override String standardIncludes() {
        // Add default CC assets.
        String retElements = super.standardIncludes();

        // Add own script as separate file.
        retElements += '<script type="text/javascript" src="' + resourcePath(DUMMY_JS, 'helloDummy.js') + '"></script>\n';

        // Add own script direct to head.
        retElements += '<script>console.log("Hello from internal script!");</script>\n';

        return retElements;
    }
}
