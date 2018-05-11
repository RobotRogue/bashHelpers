// Bookmarklet for adding text into a `textarea` tag in a page (handy for greeting messages in the Discord web view)

javascript: (function () {
    var x = document.querySelector('a[rel="noreferrer"]').textContent;
    document.getElementsByTagName('textarea')[0].value = 'Welcome @' + x + ' ! Please read the #rules and set your location in #role-request if applicable.';
})();
