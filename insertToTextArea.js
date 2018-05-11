// Bookmarklet for adding text into a `textarea` tag in a page (handy for greeting messages in the Discord web view)

javascript: (function () {
    document.getElementsByTagName('textarea')[0].value = 'Welcome @USER ! Please read the #rules and set your location in #role-request if applicable.';
})();
