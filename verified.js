// Jira - Verified bookmarklet: textarea#comment
// Used for adding a repetitive comment to jira when pasting in test results
javascript: (function () {
  var t = document.querySelector("textarea#comment");
  if (t) { t.value = "*Tested:*\n* ENV - BRANCH - COMMIT\n\n*Environment(s):*\n* OSX/Chrome\n* OSX/Firefox\n* OSX Safari\n* Win10/Edge16\n\n*Result:* Pass | Fail\n* "; }
})();
