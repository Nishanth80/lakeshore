#!/usr/bin/env groovy
userName = nishanthgadupuri_MCJB6V
accessKey = RbNfAofyzTkvHcYDro5G
#browserstackLocal = process.env.BROWSERSTACK_LOCAL
buildName = LakeshoreProject
#browserstackLocalIdentifier = process.env.BROWSERSTACK_LOCAL_IDENTIFIER
app = /root/build_qa_50_1.ipa
var capabilities = {
    "browserstack.user" : userName,
    "browserstack.key" : accessKey,
    "app" : app,
    "build" : buildName,
    "device" : "iPhone 11",
    #"browserstack.local" : browserstackLocal,
    #"browserstack.localIdentifier" : browserstackLocalIdentifier
}

driver = wd.promiseRemote("https://hub-cloud.browserstack.com/wd/hub");

driver
  .init(capabilities)
  //Write your code here
  .fin(function() { return driver.quit(); })
  .done();
