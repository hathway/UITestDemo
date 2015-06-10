# UITestDemo
Super basic demo project to evaluate automated UI tests in Xcode 7

## Orange, then Blue
This test visits both Orange and Blue screens:

1. Tap on "Orange"
2. Tap on back button
3. Tap on "Blue"
4. Tap on back button

# Blue, Blue, Orange
This test navigates to the Blue screen twice before visiting the Orange screen:

1. Tap on "Blue"
2. Tap on back button
3. Tap on "Blue"
4. Tap on back button
5. Tap on "Orange"
6. Tap on back button

# Failing tests
In this case, Orange and Blue buttons are referenced by their label, so the possition on screen does not affect the test. However, renaming their title will make the test fail, as expected.
