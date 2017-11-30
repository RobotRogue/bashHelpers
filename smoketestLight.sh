#!/bin/bash

# Please run using ./smoketestLight [environment]
# IE: ./smoketestLight fe-local_windows_10_chrome

# Caution: test names that contain $ need to be escaped with \$
# Caution: test names that contain - need to be escaped with --
# If you get an error, its likely a syntax issue

cd $HOME/git/chimp-web-client

if [ $# -eq 0 ]; then
    echo "No arguments provided! Specify your test environment!"
    echo "Example: smoketest fe-local_windows_10_chrome"
    exit 1
fi

startTime=$(date +"%T")

echo "------------------------------------------------------------"
echo "Running Light Smoketest"
echo "Test Environment: $1"
echo "------------------------------------------------------------"
echo " "

echo "-- Test 1 --"; node nightwatch run --env "$1" --test nightwatch/tests/allocations/oneTimeDonation.js --testcase "Verify that One Time Donor can give \$5 or more to a Group" 
echo "-- Test 2 --"; node nightwatch run --env "$1" --test nightwatch/tests/allocations/oneTimeDonation.js --testcase "Verify that One Time Donor can give \$5 or more to a Campaign"
echo "-- Test 3 --"; node nightwatch run --env "$1" --test nightwatch/tests/allocations/oneTimeDonation.js --testcase "Verify that One Time Donor can give \$5 or more to a Charity"
echo "-- Test 4 --"; node nightwatch run --env "$1" --test nightwatch/tests/allocations/oneTimeDonation.js --testcase "Verify One Time Donor can give to Group"

echo "-- Test 5 --"; node nightwatch run --env "$1" --test nightwatch/tests/allocations/sendP2P.js --testcase "Verify user can send a p2p to a single, unregistered recipient"

echo "-- Test 6 --"; node nightwatch run --env "$1" --test nightwatch/tests/allocations/sendRecurringGroup.js --testcase "Verify user can set up a personal recurring Transfer to a group"

echo "-- Test 7 --"; node nightwatch run --env "$1" --test nightwatch/tests/allocations/sendToCharity.js --testcase "Verify user can allocate 5.00 to a charity from their personal fund"
echo "-- Test 8 --"; node nightwatch run --env "$1" --test nightwatch/tests/allocations/sendToCharity.js --testcase "Verify user can allocate to a charity using a new credit card"

echo "-- Test 9 --"; node nightwatch run --env "$1" --test nightwatch/tests/authentication/login.js --testcase "Verify login page elements present"
echo "-- Test 10 --"; node nightwatch run --env "$1" --test nightwatch/tests/authentication/login.js --testcase "Verify user can log in with valid credentials"

echo "-- Test 11 --"; node nightwatch run --env "$1" --test nightwatch/tests/authentication/signUp.js --testcase "Verify sign up page elements present"
echo "-- Test 12 --"; node nightwatch run --env "$1" --test nightwatch/tests/authentication/signUp.js --testcase "Verify user can successfully create an account"

echo "-- Test 13 --"; node nightwatch run --env "$1" --test nightwatch/tests/campaigns/campaignLanding.js --testcase "Campaign: Verify Chimp phone number is visible in sidebar when logged out"

echo "-- Test 14 --"; node nightwatch run --env "$1" --test nightwatch/tests/charities/charitiesLanding.js --testcase "Charity: Verify Chimp phone number is visible in sidebar when logged in"

echo "-- Test 15 --"; node nightwatch run --env "$1" --test nightwatch/tests/communities/communityAdmin.js --testcase "Community Info: verify elements present"
echo "-- Test 16 --"; node nightwatch run --env "$1" --test nightwatch/tests/communities/communityAdmin.js --testcase "Community Info: verify community admin can save valid changes"

echo "-- Test 17 --"; node nightwatch run --env "$1" --test nightwatch/tests/communities/communityEditLandingPage.js --testcase "Community Edit Landing Page: verify elements present"

echo "-- Test 18 --"; node nightwatch run --env "$1" --test nightwatch/tests/communities/communityJoin.js --testcase "Community Join: verify elements present"
echo "-- Test 19 --"; #node nightwatch run --env "$1" --test nightwatch/tests/communities/communityJoin.js --testcase "Join Community -- Sign Up: verify new user can sign up with valid information"

echo "-- Test 20 --"; node nightwatch run --env "$1" --test nightwatch/tests/communities/communityMatchRequests.js --testcase "Community Match Request: Company admin can approve multiple match requests"

echo "-- Test 21 --"; node nightwatch run --env "$1" --test nightwatch/tests/communities/communityTaxRecipient.js --testcase "Community Tax Receipt profile can be updated"

echo "-- Test 22 --"; node nightwatch run --env "$1" --test nightwatch/tests/dashboard/userAccountInfo.js --testcase "Verify Account Settings sidebar navigation is present"
echo "-- Test 23 --"; node nightwatch run --env "$1" --test nightwatch/tests/dashboard/userAccountInfo.js --testcase "Verify Change Password module elements are present"

echo "-- Test 24 --"; node nightwatch run --env "$1" --test nightwatch/tests/dashboard/userTaxRecipient.js --testcase "User Tax Receipt profile can be updated"

echo "-- Test 25 --"; node nightwatch run --env "$1" --test nightwatch/tests/donations/communityAddMoney.js --testcase "Verify form elements are present"
echo "-- Test 26 --"; node nightwatch run --env "$1" --test nightwatch/tests/donations/communityAddMoney.js --testcase "Verify community is able to complete their donation"

echo "-- Test 27 --"; node nightwatch run --env "$1" --test nightwatch/tests/donations/userAddMoney.js --testcase "Verify form elements are present"
echo "-- Test 28 --"; node nightwatch run --env "$1" --test nightwatch/tests/donations/userAddMoney.js --testcase "Verify User is able to complete their donation"

echo "-- Test 29 --"; #node nightwatch run --env "$1" --test nightwatch/tests/groups/groupsLanding.js --testcase "Groups: Verify Page Elements -- Logged Out"
echo "-- Test 30 --"; #node nightwatch run --env "$1" --test nightwatch/tests/groups/groupsLanding.js --testcase "Groups: Verify Page Elements -- Logged In - Member"

echo "-- Test 31 --"; node nightwatch run --env "$1" --test nightwatch/tests/landing/contact.js --testcase "Verify page elements present"

echo "-- Test 32 --"; node nightwatch run --env "$1" --test nightwatch/tests/landing/error.js --testcase "Verify page elements present"

echo "-- Test 33 --"; node nightwatch run --env "$1" --test nightwatch/tests/landing/home.js --testcase "Verify page elements present"
echo "-- Test 34 --"; node nightwatch run --env "$1" --test nightwatch/tests/landing/home.js --testcase "Verify search displays results"

echo "-- Test 35 --"; #node nightwatch run --env "$1" --test nightwatch/tests/navigation/appFooter.js --testcase "Verify footer elements present -- dashboard"
echo "-- Test 36 --"; #node nightwatch run --env "$1" --test nightwatch/tests/navigation/appFooter.js --testcase "Verify sub footer elements present -- dashboard"

echo "-- Test 37 --"; node nightwatch run --env "$1" --test nightwatch/tests/navigation/authHeader.js --testcase "Verify auth header elements present"
echo "-- Test 38 --"; node nightwatch run --env "$1" --test nightwatch/tests/navigation/authHeader.js --testcase "Verify Account Menu navigation"

echo "-- Test 39 --"; node nightwatch run --env "$1" --test nightwatch/tests/navigation/header.js --testcase "Verify header top level navigation"
echo "-- Test 40 --"; node nightwatch run --env "$1" --test nightwatch/tests/navigation/header.js --testcase "Verify login button navigates to Log In page"
echo "-- Test 41 --"; node nightwatch run --env "$1" --test nightwatch/tests/navigation/header.js --testcase "Verify sign up button navigates to sign up page"

echo "-- Test 42 --"; node nightwatch run --env "$1" --test nightwatch/tests/onboarding/modals.js --testcase "Verify onboarding panel elements present"
echo "-- Test 43 --"; node nightwatch run --env "$1" --test nightwatch/tests/onboarding/modals.js --testcase "Verify onboarding panel flow can be completed"

endTime=$(date +"%T")

echo "------------------------------------------------------------"
echo "Well that was a lot. Testing is complete."
echo "Testing started at: $startTime"
echo "Testing ended at: $endTime"
