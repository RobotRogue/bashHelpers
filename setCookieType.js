javascript: (function() {
    var selection = prompt("Enter a value of 1-4\n 1) Set New User\n 2) Set New Employee\n 3) Set as Invited\n 4) Set with Beneficiary"); 

    switch (selection) {
        case "1":
            document.cookie = "new_user=true";
            break;
        case "2":
            document.cookie = "employee=true";
            break;
        case "3":
            document.cookie = "group_invite=true";
            break;
        case "4":
            document.cookie = "new_user=true";
            document.cookie = "beneficiary=true";
            break;
        default:
            alert("Your input must be a number between 1 and 4");
            break;
    }
})();
