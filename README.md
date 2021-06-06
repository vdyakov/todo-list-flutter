# To-do list flutter

## Content

1. [Description of the project](#description)
2. [Requirements](#requirements)
3. [Development](#development)
4. Install and settings [Android Studio](#android-setup)
5. Install and settings [Xcode](#ios-setup)
6. [Useful links](#useful-links)

### Description

It's a test project using flutter.<br />
The main goal of this project is to compare [pwa](https://github.com/vdyakov/todo-list-react), [react-native](https://github.com/vdyakov/todo-list-react-native) and [flutter](https://github.com/vdyakov/todo-list-flutter) in writing a to-do application.

### Requirements

1. [Git 2.x](https://git-scm.com/).

### Development

First, install [flutter](https://flutter.dev/docs/get-started/install). Run ``flutter doctor`` to see if there are any platform dependencies you need to complete the setup.

If your system is macOS use Xcode ([tutorial](#ios-setup)) to run the project, else use Android Studio ([tutorial](#android-setup)).

**Run with console**:
1. Check that an Android device is running. If none are shown, follow the device-specific instructions on the Install page for your OS.
```
flutter devices
```
2. Run the app with the following command:
```
flutter run
```
After the app build completes, you’ll see the starter app on your device.

### Android setup

Download and install [Android Studio](https://developer.android.com/studio). <br />
Start Android Studio, and go through the "Android Studio Setup Wizard". <br />
This installs the latest Android SDK, Android SDK Command-line Tools, and Android SDK Build-Tools, which are required by Flutter when developing for Android.

**Set up the Android emulator**.<br />
To prepare to run and test your Flutter app on the Android emulator, follow these steps:
1. Enable VM acceleration on your machine.
2. Launch Android Studio, click the AVD Manager icon, and select Create Virtual Device…
   - In older versions of Android Studio, you should instead launch **Android Studio** > **Tools** > **Android** > **AVD Manager** and select **Create Virtual Device**….
   - If you do not have a project open, you can choose **Configure** > **AVD Manager** and select **Create Virtual Device**…
3. Choose a device definition and select **Next**.
4. Select one or more system images for the Android versions you want to emulate, and select **Next**.
5. Under Emulated Performance, select **Hardware - GLES 2.0** to enable hardware acceleration.
6. Verify the AVD configuration is correct, and select Finish.
7. In Android Virtual Device Manager, click Run in the toolbar. The emulator starts up and displays the default canvas for your selected OS version and device.

**Run the app**<br />
Click the run icon in the toolbar, or invoke the menu item **Run** > **Run**. <br />
![Android Studio](https://flutter.dev/assets/tools/android-studio/main-toolbar-8f8e4ce1c7a5ec70c4a288837aa3ea083fe03deef28d99567a391ef005a59c3f.png)

### iOS setup

Install the latest stable version of Xcode (using [web download](https://developer.apple.com/xcode/) or the [Mac App Store](https://itunes.apple.com/us/app/xcode/id497799835)).

**Set up the iOS simulator**.<br />
To prepare to run and test your Flutter app on the iOS simulator, follow these steps:

1. On your Mac, find the Simulator via Spotlight or by using the following command: ``open -a Simulator``
2. Make sure your simulator is using a 64-bit device (iPhone 5s or later) by checking the settings in the simulator’s **Hardware** > **Device menu**.
3. Depending on your development machine’s screen size, simulated high-screen-density iOS devices might overflow your screen.
   Grab the corner of the simulator and drag it to change the scale.
   You can also use the **Window** > **Physical Size** or **Window** > **Pixel** Accurate options if your computer’s resolution is high enough. 
   - If you are using a version of Xcode older than 9.1, you should instead set the device scale in the **Window** > **Scale** menu.

### Useful links

1. [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
2. [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)
3. [Dart guides](https://dart.dev/guides)
