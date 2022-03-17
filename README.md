# Updated notes 
### For integrating Dylan's code. 
Simply replace all the frontend code that **doesn't** include bluetooth relevant stuff, with 
Dylan's stuff. Get the app up and running and it should be pretty apparent what needs replacing. 
That would be primarily the second_page for selection, which needs to be updated + the currently
empty match page link.



### Using laptop bluetooth serial communication
Our app can communicate via Bluetooth serial with our laptops over Putty. 

Simply connect to your laptop through the app (for now, it already has to have been paired before),
then open a putty serial terminal. Open your device manager and look for the `Ports (COM & LPT)` 
tab, expand that. You should see different ports to connect to your laptop over Bluetooth, for 
example, `Standard Serial over Bluetooth link (COM19)`. When setting up your Putty terminal,
select one of these COM ports for a serial connection, try multiple in case the first doesn't work. 
You should now be good to go once you connect to your laptop through the app:)



# fov_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
