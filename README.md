# bash_helpers
My little BASH tweaks that help me type less

## branches.sh

This file shows you a quick and simple output of your backend and frontend branches with an abbreviated commit hash. Useful for when you need to copy-paste to slack when people ask where you're testing, etc.

## Browser Notepad

This is a bookmarklet that when clicked, opens a blank browser page that acts like a notepad! Caveat - it has no save feature. Refresh the page or close the tab and your note is gone!

## buildProject.sh

Just a series of commands I used to have to execute to spin up a local dev environment for test. Might be useful for others.

## Clear Browser Cookies

Does what it says on the tin. Doesn't seem super reliable these days though.

## docompass.sh

Used to have to run a series of commands to spin up compass, I made this because I was lazy.

## Insert Text To Area

This bookmarklet will add a text string to the new message field in a Discord chat.

## New Bug Bookmarklet

This bookmarklet is for Jira, when you are adding a new bug ticket, click this, and it will populate some fields for you with handy info.

## New Feature Bookmarklet

This bookmarklet is for Jira, when adding a new feature ticket, click this, and it will populate a template of usefull things for you.

## New Jira Bug Verification Comment

This bookmarklet is for Jira, when verifying a bug I used to have to add a comment of some specific info, this bookmarklet let me automate adding that info + stubbed data.

## Set Cookie Type

This bookmarklet was used to set cookies to trigger a specific state on a page during manual testing. Made things easier.

## smoketestLight.sh

This was a Proof Of Concept file that would in theory let me run specific tests for a smoketest. Never got it to work correctly.

## Terminal Aliases

Mostly keeping this around for when I need to set up my known aliases on a new machine.

## Terminal Shortcuts

Just a few handy unix keyboard shortcuts to use in Terminal

## USPS Bookmarklet

This little bookmarklet prompts the user for a USPS Tracking Number, then takes them directly to the tracking page. Faster than using the main UI for the most part.

### Note:
For the .sh files, you have to  make them executable first using: chmod +x yourscript.sh

## GIT CORE EDITOR CHANGE
When you want to change the default editor that Git uses in the command line, run this command: git config --global core.editor "nano"
