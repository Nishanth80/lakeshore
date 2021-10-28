//userName = chirag_s0hAmI;
//accessKey = UKVo1z4FvdVpShc6WdyC;
//browserstackLocal = process.env.BROWSERSTACK_LOCAL
//buildName = LakeshoreProject;
//browserstackLocalIdentifier = process.env.BROWSERSTACK_LOCAL_IDENTIFIER
//app = build_qa_50_1.ipa;
var capabilities = {
    "browserstack.user" : "chirag_s0hAmI",
    "browserstack.key" : "UKVo1z4FvdVpShc6WdyC",
    "app" : "build_qa_50_1.ipa",
    "build" : "LakeshoreProject",
    "device" : "iPhone 11",
    //"browserstack.local" : browserstackLocal,
    //"browserstack.localIdentifier" : browserstackLocalIdentifier
}

var driver = webdriver.Builder().
  usingServer("https://hub-cloud.browserstack.com/wd/hub").
  withCapabilities(capabilities).
  build();
