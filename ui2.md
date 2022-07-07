# uiautomator2 [![Python application](https://github.com/openatx/uiautomator2/actions/workflows/pythonapp.yml/badge.svg)](https://github.com/openatx/uiautomator2/actions/workflows/pythonapp.yml) [![Build Status](https://travis-ci.org/openatx/uiautomator2.svg?branch=master)](https://travis-ci.org/openatx/uiautomator2) [![PyPI](https://img.shields.io/pypi/v/uiautomator2.svg)](https://pypi.python.org/pypi/uiautomator2) ![PyPI](https://img.shields.io/pypi/pyversions/uiautomator2.svg) [![Windows Build](https://ci.appveyor.com/api/projects/status/github/openatx/uiautomator2)](https://ci.appveyor.com/project/openatx/uiautomator2)

Version numbers of various libraries

- [![PyPI](https://img.shields.io/pypi/v/uiautomator2.svg?label=uiautomator2)](https://pypi.python.org/pypi/uiautomator2)
- [![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/openatx/atx-agent.svg?label=atx-agent)](https://github.com/openatx/atx-agent)
- [![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/openatx/android-uiautomator-server.svg?label=android-uiautomator-server)](https://github.com/openatx/android-uiautomator-server)
- [![PyPI](https://img.shields.io/pypi/v/adbutils.svg?label=adbutils)](https://github.com/openatx/adbutils)
- ![PyPI](https://img.shields.io/pypi/v/requests.svg?label=requests)
- ![PyPI](https://img.shields.io/pypi/v/lxml.svg?label=lxml)

**The project is under calm development** QQ group number: *499563266*

<p align="left"><img src="docs/img/qqgroup.png" /></div>

[UiAutomator](https://developer.android.com/training/testing/ui-automator.html) is a Java library provided by Google for Android automation testing, based on the Accessibility service. The function is very strong. It can test third-party apps, obtain any control property of any app on the screen, and perform arbitrary operations on it, but there are two disadvantages: 1. The test script can only use the Java language; 2. The test script It needs to be packaged into a jar or apk package and uploaded to the device to run.

We want the test logic to be written in Python and to be able to control the phone while it is running on the computer. I would like to thank Xiaocong He ([@xiaocong][]), he realized this idea (see [xiaocong/uiautomator](https://github.com/xiaocong/uiautomator)), the principle is to run on mobile phones Created an http rpc service, opened up the functions in uiautomator, and then encapsulated these http interfaces into Python libraries.
Because the library `xiaocong/uiautomator` has not been updated for a long time. So we forked a version directly. In order to facilitate the distinction, we added a 2 [openatx/uiautomator2](https://github.com/openatx/uiautomator2)

In addition to fixing bugs in the original library, many new features have been added. There are mainly the following parts:

* The device and development machine can be disconnected from the data cable and connected via WiFi (based on [atx-agent](https://github.com/openatx/atx-agent))
* Integrate [openstf/minicap](https://github.com/openstf/minicap) to achieve real-time screen casting and real-time screenshots
* Integrate [openstf/minitouch](https://github.com/openstf/minitouch) to achieve precise real-time control of the device
* Fixed the problem that [xiaocong/uiautomator](https://github.com/xiaocong/uiautomator) frequently quits
* The code has been refactored and simplified for easy maintenance
* Implemented a device management platform (also supports iOS) [atxserver2](https://github.com/openatx/atxserver2)
* Expanded toast acquisition and display functions

>Let me explain here first, because many people often ask that openatx/uiautomator2 does not support iOS testing and needs iOS automated testing. You can go to this library [openatx/facebook-wda](https://github.com/openatx/ facebook-wda).

> PS: This library~~<https://github.com/NeteaseGame/ATX>~~ is no longer maintained, please replace it as soon as possible.

Here is a quick reference for those who have already started [QUICK REFERENCE GUIDE](QUICK_REFERENCE.md). Comments are welcome.

## Requirements
- Android version 4.4+
- Python 3.6+ (community feedback 3.8.0 does not support, but 3.8.2 supports)

>If installed with pip of python2, the old version 0.2.3 of this library will be installed; if installed with pip of python3.5, the old version of 0.3.3 of this library will be installed; both will no longer be maintained; on PYPI The most recent version is this: https://pypi.org/project/uiautomator2/

## QUICK START
First prepare one (not two) Android phone with `developer options` turned on, connect it to the computer, and make sure to execute `adb devices` to see the connected devices.

Run `pip3 install -U uiautomator2` to install uiautomator2

Run `python3 -m uiautomator2 init` to install the apk containing the httprpc service to the phone + `atx-agent, minicap, minitouch` (In the past version, this step was mandatory, but since version 1.3.0, when These files are automatically pushed when running the python code `u2.connect()`)

Run `python` from the command line to open the python interactive window. Then enter the following command into the window.

```python
import uiautomator2 as u2

d = u2.connect() # connect to device
print(d.info)
```

At this time, when you see an output similar to the following, you can officially start using our library. Because this library has too many functions, there is still a lot of content in the back, you need to look at it slowly....

```
{'currentPackageName': 'net.oneplus.launcher', 'displayHeight': 1920, 'displayRotation': 0, 'displaySizeDpX': 411, 'displaySizeDpY': 731, 'displayWidth': 1080, 'productName': 'OnePlus5', '
screenOn': True, 'sdkInt': 27, 'naturalOrientation': True}
```

In general, it will be successful, but there may be surprises. You can add QQ group feedback, there are many big guys in the group who can help you solve the problem.

## Sponsors
Thank you to all our sponsors! вњЁрџЌ°вњЁ

### Gold Sponsor
![logo Hogwarts Testing Institute](https://ceshiren.com/uploads/default/original/3X/7/0/70299922296e93e2dcab223153a928c4bfb27df9.jpeg)

[Hogwarts Testing and Development Society](http://qrcode.testing-studio.com/f?from=atx&url=https://ceshiren.com) is an industry-leading high-end education brand of testing development technology, affiliated with [Testing (Beijing) Technology Co., Ltd.](http://qrcode.testing-studio.com/f?from=atx&url=https://www.testing-studio.com) . The college courses are developed by the test managers of the first-line manufacturers and senior test development experts, and are driven by actual combat. The courses cover web/app automation testing, interface testing, performance testing, security testing, continuous integration/continuous delivery/DevOps, test shift left & right, precise testing, test platform development, test management, etc., to help test engineers achieve test development Technology transformation. Through the excellent academy and society system (scholarships, internal tuition rebates, industry competitions, etc.), we will achieve a win-win situation among students, academies and employers.

[Enter the test development technical ability assessment!](http://qrcode.testing-studio.com/f?from=atx&url=https://ceshiren.com/t/topic/14941)

## Related Items
- Device management platform, [atxserver2](https://github.com/openatx/atxserver2) will be used when there are more devices
- A library dedicated to interacting with adb [adbutils](https://github.com/openatx/adbutils)
- [atx-agent](https://github.com/openatx/atx-agent) daemon running on the device, developed by go, used to keep the related services on the device alive
- [weditor](https://github.com/openatx/weditor) Similar to uiautomatorviewer, an auxiliary editor specially developed for this project

**[Installation](#installation)**

**[Connect to a device](#connect-to-a-device)**

**[Command line](#command-line)**

**[Global settings](#global-settings)**
  - **[Debug HTTP requests](#debug-http-requests)**
  - **[Implicit wait](#implicit-wait)**

**[App management](#app-management)**
  - **[Install an app](#install-an-app)**
  - **[Launch an app](#launch-an-app)**
  - **[Stop an app](#stop-an-app)**
  - **[Stop all running apps](#stop-all-running-apps)**
  - **[Push and pull files](#push-and-pull-files)**
  - **[Auto click permission dialogs](#auto-click-permission-dialogs)**
  - **[Open Scheme](#open-scheme)**

**[UI automation](#basic-api-usages)**
  - **[Shell commands](#shell-commands)**
  - **[Session](#session)**
  - **[Retrieve the device info](#retrieve-the-device-info)**
  - **[Key Events](#key-events)**
  - **[Gesture interaction with the device](#gesture-interaction-with-the-device)**
  - **[Screen-related](#screen-related)**
  - **[Selector](#selector)**
  - **[Watcher](#watcher)**
  - **[Global settings](#global-settings)**
  - **[Input method](#input-method)**
  - **[Toast](#toast)**
  - **[XPath](#xpath)**
  - **[Screenrecord](#screenrecord)**
  - **[Image match](#image-match)**

**[Related articles recommended](#article-recommended)**

**common problem**
  - **[Stop UiAutomator daemon service, release AccessibilityService](#stop-uiautomator)**
  - **[502 error](https://github.com/openatx/uiautomator2/wiki/Common-issues)**
  - **[Connection Error, Deep Sleep, Click Bias, etc](https://github.com/openatx/uiautomator2/wiki/Common-issues)**
  

**[Experimental feature](https://github.com/openatx/uiautomator2/wiki/Common-issues#%E5%AE%9E%E9%AA%8C%E6%80%A7%E5%8A%9F %E8%83%BD)**
  - **Remote projection**
  - **htmlreport**
  - **diagnosing uiautomator2 method**
  - **Plugin**
  - **Hooks**
  - **A prompt box will pop up when it fails**

**[Project History](#Project History)**

**[Contributors](#contributors)**

**[LICENSE](#license)**


# Installation
1. Install uiautomator2

    ```bash
    # Since uiautomator2 is still under development, you have to add --pre to install the development version
    pip install --upgrade --pre uiautomator2

    # Or you can install directly from github source
    git clone https://github.com/openatx/uiautomator2
    pip install -e uiautomator2
    ```
    
    Test if the installation is successful `uiautomator2 --help`
    
2. Install weditor (UI Inspector)

    Because uiautomator is an exclusive resource, uiautomatorviewer cannot be used when atx is running. In order to reduce the frequent start and stop of atx, we have developed a browser-based weditor UI viewer. <https://github.com/openatx/weditor>

    Installation method (Note: the latest stable version is 0.1.0)

    ```bash
    pip install -U weditor
    ```
    
    After installation, you can run `weditor --help` on the command line to confirm whether the installation was successful.

    > Windows systems can create a shortcut on the desktop using the command `weditor --shortcut`

    Entering `weditor` directly on the command line will automatically open the browser, enter the ip or serial number of the device, and click Connect.

    Specific reference articles: [On the automated testing tool python-uiautomator2](https://testerhome.com/topics/11357)
    
3. Install daemons to a device (Optional)

    Connect a mobile phone or multiple mobile phones to the computer, make sure that adb has been added to the environment variable, and execute the following command to automatically install the device-side programs required by this library: [uiautomator-server](https://github.com/openatx /android-uiautomator-server/releases), [atx-agent](https://github.com/openatx/atx-agent), [openstf/minicap](https://github.com/openstf/minicap), [openstf/minitouch](https://github.com/openstf/minitouch)

    ```bash
    # init all devices connected to the computer
    python -m uiautomator2 init

    # Advanced usage
    # init and set atx-agent listen in all address
    python -m uiautomator2 init --addr :7912
    ```

    Sometimes init also makes mistakes, please refer to [Manual Init Guide](https://github.com/openatx/uiautomator2/wiki/Manual-Init)

    Installation prompt `success`

4. [Optional] AppetizerIO WYSIWYG script editor

    [AppetizerIO](https://www.appetizer.io) provides deep integration with uiautomator2, can graphically manage ATX devices, and a WYSIWYG script editor
    * Go to the website to download and open it directly, the first time you use it, you need to register an account
    * In the `Device Management` interface, you can check whether the device is init normally, start and stop atx-agent, and grab the atx-agent.log file
    * `Test script` calls out the script assistant, synchronizes the real-time interface, clicks the interface to directly insert various codes, and supports both uiautomator and Appium
    * **[Click here for the video tutorial](https://github.com/openatx/uiautomator2/wiki/Appetizer%E6%89%80%E8%A7%81%E5%8D%B3%E6%89%80 %E5%BE%97u2%E8%84%9A%E6%9C%AC%E7%BC%96%E8%BE%91%E5%99%A8)** [additional documentation here](http:// doc.appetizer.io)
    
# Connect to a device
There are two ways to connect to the device. 

1. **Through WiFi**

Suppose device IP is `10.0.0.1` and your PC is in the same network.

```python
import uiautomator2 as u2

d = u2.connect('10.0.0.1') # alias for u2.connect_wifi('10.0.0.1')
print(d.info)
```

2. **Through USB**

Suppose the device serial is `123456f` (seen from `adb devices`)

```python
import uiautomator2 as u2

d = u2.connect('123456f') # alias for u2.connect_usb('123456f')
print(d.info)
```

3. **Through ADB WiFi**

```python
import uiautomator2 as u2

d = u2.connect_adb_wifi("10.0.0.1:5555")

# Equals to 
# + Shell: adb connect 10.0.0.1:5555
# + Python: u2.connect_usb("10.0.0.1:5555")
```

Calling `u2.connect()` with no argument, `uiautomator2` will obtain device IP from the environment variable `ANDROID_DEVICE_IP` or `ANDROID_SERIAL`.
If this environment variable is empty, uiautomator will fall back to `connect_usb` and you need to make sure that there is only one device connected to the computer.

# Command line
where `$device_ip` represents the ip address of the device

To specify a device, you need to pass in `--serial` such as `python3 -m uiautomator2 --serial bff1234 <SubCommand>`, SubCommand is a subcommand (init, or screenshot, etc.)

> 1.0.3 Added: `python3 -m uiautomator2` can be shortened to `uiautomator2`

- screenshot: screenshot

    ```bash
    $ uiautomator2 screenshot screenshot.jpg
    ```

- current: Get the current package name and activity

    ```bash
    $ uiautomator2 current
    {
        "package": "com.android.browser",
        "activity": "com.uc.browser.InnerUCMobile",
        "pid": 28478
    }
    ```
    
- uninstall: uninstall

    ```bash
    $ uiautomator2 uninstall <package-name> # uninstall a package
    $ uiautomator2 uninstall <package-name-1> <package-name-2> # uninstall multiple packages
    $ uiautomator2 uninstall --all # uninstall all
    ```

- stop: stop the application

    ```bash
    $ uiautomator2 stop com.example.app # stop an app
    $ uiautomator2 stop --all # stop all apps
    ```
    
- install: install apk, apk is given by URL (temporarily unavailable)
- healthcheck: health check (temporarily unavailable)

- doctor: check why uiautomator2 is unavailable

    ```bash
    $ uiautomator2 doctor
    I 210519 16:48:45 init:156] uiautomator2 version: 2.14.2.dev1
    [D 210519 16:48:45 __main__:105] sdk:29 abi:arm64-v8a
    CHECK atx-agent
            GOOD: atx-agent version 0.10.0
    CHECK uiautomator-apks
            GOOD: com.github.uiautomator 2.3.3
    CHECK jsonrpc
            GOOD: d.info success
    ==> GOOD <==
    ```
    
# API Documents

### New command timeout
How long (in seconds) will wait for a new command from the client before assuming the client quit and ending the uiautomator service пј€Default 3 minutesпј‰

Configure the maximum idle time of the accessibility service, the timeout will be automatically released. The default is 3 minutes.

```python
d.set_new_command_timeout(300) # change to 5 minutes, unit seconds
```

### Debug HTTP requests
Trace HTTP requests and response to find out how it works.

```python
>>> d.debug = True
>>> d.info
12:32:47.182 $ curl -X POST -d '{"jsonrpc": "2.0", "id": "b80d3a488580be1f3e9cb3e926175310", "method": "deviceInfo", "params": {}}' 'http://127.0.0.1:54179/jsonrpc/0'
12:32:47.225 Response >>>
{"jsonrpc":"2.0","id":"b80d3a488580be1f3e9cb3e926175310","result":{"currentPackageName":"com.android.mms","displayHeight":1920,"displayRotation":0,"displaySizeDpX":360,"displaySizeDpY":640,"displayWidth":1080,"productName"
:"odin","screenOn":true,"sdkInt":25,"naturalOrientation":true}}
<<< END
```

### Implicit wait
Set default element wait time, unit seconds

Set the element search wait time (default 20s)

```python
d.implicitly_wait(10.0) # can also be modified by d.settings['wait_timeout'] = 10.0
d(text="Settings").click() # if Settings button not show in 10s, UiObjectNotFoundError will raised

print("wait timeout", d.implicitly_wait()) # get default implicit wait
```

This function will have influence on `click`, `long_click`, `drag_to`, `get_text`, `set_text`, `clear_text`, etc.

## App management
This part showcases how to perform app management

### Install an app
We only support installing an APK from a URL

```python
d.app_install('http://some-domain.com/some.apk')
```

### Launch an app
```python
# The default method is to first parse the mainActivity of the apk package through atx-agent, and then call am start -n $package/$activity to start
d.app_start("com.example.hello_world")

# start with monkey -p com.example.hello_world -c android.intent.category.LAUNCHER 1
# This method has a side effect, it automatically turns off the phone's rotation lock
d.app_start("com.example.hello_world", use_monkey=True) # start with package name

# Start the application by specifying the main activity, which is equivalent to calling am start -n com.example.hello_world/.MainActivity
d.app_start("com.example.hello_world", ".MainActivity")
```

### Stop an app
```python
# equivalent to `am force-stop`, thus you could lose data
d.app_stop("com.example.hello_world") 
# equivalent to `pm clear`
d.app_clear('com.example.hello_world')
```

### Stop all running apps
```python
# stop all
d.app_stop_all()
# stop all app except for com.examples.demo
d.app_stop_all(excludes=['com.examples.demo'])
```

### Get app info
```python
d.app_info("com.examples.demo")
# expect output
#{
#    "mainActivity": "com.github.uiautomator.MainActivity",
#    "label": "ATX",
#    "versionName": "1.1.7",
#    "versionCode": 1001007,
#    "size":1760809
#}

# save app icon
img = d.app_icon("com.examples.demo")
img.save("icon.png")
```

### List all running apps
```python
d.app_list_running()
# expect output
# ["com.xxxx.xxxx", "com.github.uiautomator", "xxxx"]
```

### Wait until app running
```python
pid = d.app_wait("com.example.android") # Wait for the app to run, return pid(int)
if not pid:
    print("com.example.android is not running")
else:
    print("com.example.android pid is %d" % pid)

d.app_wait("com.example.android", front=True) # Wait for the application to run in the foreground
d.app_wait("com.example.android", timeout=20.0) # The longest waiting time is 20s (default)
```

> Added in version 1.2.0

### Push and pull files
* push a file to the device

    ```python
    # push to a folder
    d.push("foo.txt", "/sdcard/")
    # push and rename
    d.push("foo.txt", "/sdcard/bar.txt")
    # push fileobj
    with open("foo.txt", 'rb') as f:
        d.push(f, "/sdcard/")
    # push and change file access mode
    d.push("foo.sh", "/data/local/tmp/", mode=0o755)
    ```

* pull a file from the device

    ```python
    d.pull("/sdcard/tmp.txt", "tmp.txt")

    # FileNotFoundError will raise if the file is not found on the device
    d.pull("/sdcard/some-file-not-exists.txt", "tmp.txt")
    ```

### Check and keep the device-side daemon running
```python
d.healthcheck()
```

### ~~Auto click permission dialogs~~
**Note** `disable_popups` function, the detection is found to be very unstable, do not use it for the time being, and wait for the notification.

Import in version 0.1.1

```python
d.disable_popups() # automatic skip popups
d.disable_popups(False) # disable automatic skip popups
```

![popup](docs/img/popup.png)

If this method is not working on your device, You can make a pull request or create an issue to enhance this function. I'll show you how to do it.

1. Open `uiautomatorviewer.bat`
2. Get popup hierarchy

![hierarchy](docs/img/uiautomatorviewer-popup.png)

Now you know the button text and current package name. Make a pull request by update function `disable_popups` or create an [issue](https://github.com/openatx/uiautomator2/issues) if you are not familar with git and python.

### Open Scheme
You can do it wire adb: `adb shell am start -a android.intent.action.VIEW -d "appname://appnamehost"`

Also you can do it with python code

```python
d.open_url("https://www.baidu.com")
d.open_url("taobao://taobao.com") # open Taobao app
d.open_url("appname://appnamehost")
```

## Basic API Usages
This part showcases how to perform common device operations:

### Shell commands
* Run a short-lived shell command with a timeout protection. (Default timeout 60s)

    Note: timeout support require `atx-agent >=0.3.3`

    `adb_shell` function is deprecated. Use `shell` instead.

    Simple usage

    ```python
    output, exit_code = d.shell("pwd", timeout=60) # timeout 60s (Default)
    # output: "/\n", exit_code: 0
    # Similar to command: adb shell pwd

    # Since `shell` function return type is `namedtuple("ShellResponse", ("output", "exit_code"))`
    # so we can do some tricks
    output = d.shell("pwd").output
    exit_code = d.shell("pwd").exit_code
    ```

    The first argument can be list. for example

    ```python
    output, exit_code = d.shell(["ls", "-l"])
    # output: "/....", exit_code: 0
    ```

   This returns a string for stdout merged with stderr.
   If the command is a blocking command, `shell` will also block until the command is completed or the timeout kicks in. No partial output will be received during the execution of the command. This API is not suitable for long-running commands. The shell command given runs in a similar environment of `adb shell`, which has a Linux permission level of `adb` or `shell` (higher than an app permission).

* Run a long-running shell command

    add stream=True will return `requests.models.Response` object. More info see [requests stream](http://docs.python-requests.org/zh_CN/latest/user/quickstart.html#id5)

    ```python
    r = d.shell("logcat", stream=True)
    # r: requests.models.Response
    deadline = time.time() + 10 # run maxium 10s
    try:
        for line in r.iter_lines(): # r.iter_lines(chunk_size=512, decode_unicode=None, delimiter=None)
            if time.time() > deadline:
                break
            print("Read:", line.decode('utf-8'))
    finally:
        r.close() # this method must be called
    ```

    Command will be terminated when `r.close()` called.
    
### Session
Session represent an app lifecycle. Can be used to start app, detect app crash.

* Launch and close app

    ```python
    sess = d.session("com.netease.cloudmusic") # start Netease Cloud Music
    sess.close() # Stop NetEase Cloud Music
    sess.restart() # Cold start NetEase Cloud Music
    ```

* Use python `with` to launch and close app

    ```python
    with d.session("com.netease.cloudmusic") as sess:
        sess(text="Play").click()
    ```

* Attach to the running app

    ```python
    # launch app if not running, skip launch if already running
    sess = d.session("com.netease.cloudmusic", attach=True)

    # raise SessionBrokenError if not running
    sess = d.session("com.netease.cloudmusic", attach=True, strict=True)
    ```

* Detect app crash

    ```python
    # When app is still running
    sess(text="Music").click() # operation goes normal

    # If app crash or quit
    sess(text="Music").click() # raise SessionBrokenError
    # other function calls under session will raise SessionBrokenError too
    ```

    ```python
    # check if session is ok.
    # Warning: function name may change in the future
    sess.running() # True or False
    ```


### Retrieve the device info

Get basic information

```python
d.info
```

Below is a possible output:

```
{ 
    u'displayRotation': 0,
    u'displaySizeDpY': 640,
    u'displaySizeDpX': 360,
    u'currentPackageName': u'com.android.launcher',
    u'productName ': u'takju',
    u'displayWidth': 720,
    u'sdkInt ': 18,
    u'displayHeight': 1184,
    u'naturalOrientation': True
}
```

Get window size

```python
print(d.window_size())
# device upright output example: (1080, 1920)
# device horizontal output example: (1920, 1080)
```

Get current app info. For some android devices, the output could be empty (see *Output example 3*)

```python
print(d.app_current())
# Output example 1: {'activity': '.Client', 'package': 'com.netease.example', 'pid': 23710}
# Output example 2: {'activity': '.Client', 'package': 'com.netease.example'}
# Output example 3: {'activity': None, 'package': None}
```

Wait activity

```python
d.wait_activity(".ApiDemos", timeout=10) # default timeout 10.0 seconds
# Output: true of false
```

Get device serial number

```python
print(d.serial)
# output example: 74aAEDR428Z9
```

Get WLAN ip

```python
print(d.wlan_ip)
# output example: 10.0.0.1
```

Get detailed device info

```python
print(d.device_info)
```

Below is a possible output:

```
{'udid': '3578298f-b4:0b:44:e6:1f:90-OD103',
 'version': '7.1.1',
 'serial': '3578298f',
 'brand': 'SMARTISAN',
 'model': 'OD103',
 'hwaddr': 'b4:0b:44:e6:1f:90',
 'port': 7912,
 'sdk': 25,
 'agentVersion': 'dev',
 'display': {'width': 1080, 'height': 1920},
 'battery': {'acPowered': False,
  'usbPowered': False,
  'wirelessPowered': False,
  'status': 3,
  'health': 0,
  'present': True,
  'level': 99,
  'scale': 100,
  'voltage': 4316,
  'temperature': 272,
  'technology': 'Li-ion'},
 'memory': {'total': 3690280, 'around': '4 GB'},
 'cpu': {'cores': 8, 'hardware': 'Qualcomm Technologies, Inc MSM8953Pro'},
 'presenceChangedAt': '0001-01-01T00:00:00Z',
 'usingBeganAt': '0001-01-01T00:00:00Z'}
```
### Clipboard
Get of set clipboard content

Set the content of the pasteboard or get the content (the known problem is that the background program after 9.0 cannot obtain the content of the clipboard)

* clipboard/set_clipboard

    ```python
    d.set_clipboard('text', 'label')
    print(d.clipboard)
    ```

### Key Events

* Turn on/off screen

    ```python
    d.screen_on() # turn on the screen
    d.screen_off() # turn off the screen
    ```

* Get current screen status

    ```python
    d.info.get('screenOn') # require Android >= 4.4
    ```

* Press hard/soft key

    ```python
    d.press("home") # press the home key, with key name
    d.press("back") # press the back key, with key name
    d.press(0x07, 0x02) # press keycode 0x07('0') with META ALT(0x02)
    ```

* These key names are currently supported:

    - home
    - back
    - left
    - right
    - up
    - down
    - center
    - menu
    - search
    - enter
    - delete ( or del)
    - recent (recent apps)
    - volume_up
    - volume_down
    - volume_mute
    - camera
    - power

You can find all key code definitions at [Android KeyEvnet](https://developer.android.com/reference/android/view/KeyEvent.html)

* Unlock screen

    ```python
    d.unlock()
    # This is equivalent to
    # 1. launch activity: com.github.uiautomator.ACTION_IDENTIFY
    # 2. press the "home" key
    ```

### Gesture interaction with the device
* Click on the screen

    ```python
    d.click(x, y)
    ```

* Double click

    ```python
    d.double_click(x, y)
    d.double_click(x, y, 0.1) # default duration between two click is 0.1s
    ```

* Long click on the screen

    ```python
    d.long_click(x, y)
    d.long_click(x, y, 0.5) # long click 0.5s (default)
    ```

* Swipe

    ```python
    d.swipe(sx, sy, ex, ey)
    d.swipe(sx, sy, ex, ey, 0.5) # swipe for 0.5s(default)
    ```

* SwipeExt extension

    ```python
    d.swipe_ext("right") # Swipe right with your finger, choose 1 from 4 "left", "right", "up", "down"
    d.swipe_ext("right", scale=0.9) # The default is 0.9, the sliding distance is 90% of the screen width
    d.swipe_ext("right", box=(0, 0, 100, 100)) # Swipe in the area of вЂвЂ(0,0) -> (100, 100)

  # Practice found that when sliding up or down, the success rate of sliding from the midpoint will be higher
  d.swipe_ext("up", scale=0.8) # The code will vkk

    # You can also use Direction as a parameter
    from uiautomator2 import Direction
    
    d.swipe_ext(Direction.FORWARD) # page down, equivalent to d.swipe_ext("up"), just for better understanding
    d.swipe_ext(Direction.BACKWARD) # page up
    d.swipe_ext(Direction.HORIZ_FORWARD) # page horizontally flip right
    d.swipe_ext(Direction.HORIZ_BACKWARD) # page horizontal left
    ```

* Drag

    ```python
    d.drag(sx, sy, ex, ey)
    d.drag(sx, sy, ex, ey, 0.5) # swipe for 0.5s(default)

* Swipe points

    ```python
    # swipe from point(x0, y0) to point(x1, y1) then to point(x2, y2)
    # time will speed 0.2s bwtween two points
    d.swipe_points([(x0, y0), (x1, y1), (x2, y2)], 0.2))
    ```

    It is mostly used for unlocking the nine-square grid, and the relative coordinates of each point are obtained in advance (percentage is supported here),
    For more detailed usage, refer to this post [U2 to unlock the nine palaces pattern] (https://testerhome.com/topics/11034)

* Touch and drap (Beta)

    This interface is a relatively low-level original interface, and it does not feel perfect, but it can be used. Note: This place does not support percentages

    ```python
    d.touch.down(10, 10) # Simulate press down
    time.sleep(.01) # The delay between down and move, you control it yourself
    d.touch.move(15, 15) # simulate movement
    d.touch.up() # Simulate lift
    ```

Note: click, swipe, drag operations support percentage position values. Example:

`d.long_click(0.5, 0.5)` means long click center of screen

### Screen-related
* Retrieve/Set device orientation

    The possible orientations:

    -   `natural` or `n`
    -   `left` or `l`
    -   `right` or `r`
    -   `upsidedown` or `u` (can not be set)

    ```python
    # retrieve orientation. the output could be "natural" or "left" or "right" or "upsidedown"
    orientation = d.orientation

    # WARNING: not pass testing in my TT-M1
    # set orientation and freeze rotation.
    # notes: setting "upsidedown" requires Android>=4.3.
    d.set_orientation('l') # or "left"
    d.set_orientation("l") # or "left"
    d.set_orientation("r") # or "right"
    d.set_orientation("n") # or "natural"
    ```

* Freeze/Un-freeze rotation

    ```python
    # freeze rotation
    d.freeze_rotation()
    # un-freeze rotation
    d.freeze_rotation(False)
    ```

* Take screenshot

    ```python
    # take screenshot and save to a file on the computer, require Android>=4.2.
    d.screenshot("home.jpg")
    
    # get PIL.Image formatted images. Naturally, you need pillow installed first
    image = d.screenshot() # default format="pillow"
    image.save("home.jpg") # or home.png. Currently, only png and jpg are supported

    # get opencv formatted images. Naturally, you need numpy and cv2 installed first
    import cv2
    image = d.screenshot(format='opencv')
    cv2.imwrite('home.jpg', image)

    # get raw jpeg data
    imagebin = d.screenshot(format='raw')
    open("some.jpg", "wb").write(imagebin)
    ```

* Dump UI hierarchy

    ```python
    # get the UI hierarchy dump content (unicoded).
    xml = d.dump_hierarchy()
    ```

* Open notification or quick settings

    ```python
    d.open_notification()
    d.open_quick_settings()
    ```

### Selector

Selector is a handy mechanism to identify a specific UI object in the current window.

```python
# Select the object with text 'Clock' and its className is 'android.widget.TextView'
d(text='Clock', className='android.widget.TextView')
```

Selector supports below parameters. Refer to [UiSelector Java doc](http://developer.android.com/tools/help/uiautomator/UiSelector.html) for detailed information.

* `text`, `textContains`, `textMatches`, `textStartsWith`
*  `className`, `classNameMatches`
*  `description`, `descriptionContains`, `descriptionMatches`, `descriptionStartsWith`
*  `checkable`, `checked`, `clickable`, `longClickable`
*  `scrollable`, `enabled`,`focusable`, `focused`, `selected`
*  `packageName`, `packageNameMatches`
*  `resourceId`, `resourceIdMatches`
*  `index`, `instance`

#### Children and siblings

* children

  ```python
  # get the children or grandchildren
  d(className="android.widget.ListView").child(text="Bluetooth")
  ```

* siblings

  ```python
  # get siblings
  d(text="Google").sibling(className="android.widget.ImageView")
  ```

* children by text or description or instance

  ```python
  # get the child matching the condition className="android.widget.LinearLayout"
  # and also its children or grandchildren with text "Bluetooth"
  d(className="android.widget.ListView", resourceId="android:id/list") \
   .child_by_text("Bluetooth", className="android.widget.LinearLayout")

  # get children by allowing scroll search
  d(className="android.widget.ListView", resourceId="android:id/list") \
   .child_by_text(
      "Bluetooth",
      allow_scroll_search=True,
      className="android.widget.LinearLayout"
    )
  ```

  - `child_by_description` is to find children whose grandchildren have
      the specified description, other parameters being similar to `child_by_text`.

  - `child_by_instance` is to find children with has a child UI element anywhere
      within its sub hierarchy that is at the instance specified. It is performed
      on visible views **without scrolling**.

  See below links for detailed information:

  -   [UiScrollable](http://developer.android.com/tools/help/uiautomator/UiScrollable.html), `getChildByDescription`, `getChildByText`, `getChildByInstance`
  -   [UiCollection](http://developer.android.com/tools/help/uiautomator/UiCollection.html), `getChildByDescription`, `getChildByText`, `getChildByInstance`

  Above methods support chained invoking, e.g. for below hierarchy

  ```xml
  <node index="0" text="" resource-id="android:id/list" class="android.widget.ListView" ...>
    <node index="0" text="WIRELESS & NETWORKS" resource-id="" class="android.widget.TextView" .../>
    <node index="1" text="" resource-id="" class="android.widget.LinearLayout" ...>
      <node index="1" text="" resource-id="" class="android.widget.RelativeLayout" ...>
        <node index="0" text="WiвЂ‘Fi" resource-id="android:id/title" class="android.widget.TextView" .../>
      </node>
      <node index="2" text="ON" resource-id="com.android.settings:id/switchWidget" class="android.widget.Switch" .../>
    </node>
    ...
  </node>
  ```
  ![settings](https://raw.github.com/xiaocong/uiautomator/master/docs/img/settings.png)

  To click the switch widget right to the TextView 'WiвЂ‘Fi', we need to select the switch widgets first. However, according to the UI hierarchy, more than one switch widgets exist and have almost the same properties. Selecting by className will not work. Alternatively, the below selecting strategy would help:

  ```python
  d(className="android.widget.ListView", resourceId="android:id/list") \
    .child_by_text("WiвЂ‘Fi", className="android.widget.LinearLayout") \
    .child(className="android.widget.Switch") \
    .click()
  ```

* relative positioning

  Also we can use the relative positioning methods to get the view: `left`, `right`, `top`, `bottom`.

  -   `d(A).left(B)`, selects B on the left side of A.
  -   `d(A).right(B)`, selects B on the right side of A.
  -   `d(A).up(B)`, selects B above A.
  -   `d(A).down(B)`, selects B under A.

  So for above cases, we can alternatively select it with:

  ```python
  ## select "switch" on the right side of "WiвЂ‘Fi"
  d(text="WiвЂ‘Fi").right(className="android.widget.Switch").click()
  ```

* Multiple instances

  Sometimes the screen may contain multiple views with the same properties, e.g. text, then you will
  have to use the "instance" property in the selector to pick one of qualifying instances, like below:

  ```python
  d(text="Add new", instance=0)  # which means the first instance with text "Add new"
  ```

  In addition, uiautomator2 provides a list-like API (similar to jQuery):

  ```python
  # get the count of views with text "Add new" on current screen
  d(text="Add new").count

  # same as count property
  len(d(text="Add new"))

  # get the instance via index
  d(text="Add new")[0]
  d(text="Add new")[1]
  ...

  # iterator
  for view in d(text="Add new"):
      view.info  # ...
  ```

  **Notes**: when using selectors in a code block that walk through the result list, you must ensure that the UI elements on the screen
  keep unchanged. Otherwise, when Element-Not-Found error could occur when iterating through the list.

#### Get the selected ui object status and its information
* Check if the specific UI object exists

    ```python
    d(text="Settings").exists # True if exists, else False
    d.exists(text="Settings") # alias of above property.

    # advanced usage
    d(text="Settings").exists(timeout=3) # wait Settings appear in 3s, same as .wait(3)
    ```

* Retrieve the info of the specific UI object

    ```python
    d(text="Settings").info
    ```

    Below is a possible output:

    ```
    { u'contentDescription': u'',
    u'checked': False,
    u 'scrollable': False,
    u'text': u'Settings',
    u'packageName': u'com.android.launcher',
    u'selected': False,
    u'enabled': True,
    u'bounds': {u'top': 385,
                u'right': 360,
                u'bottom': 585,
                u'left': 200},
    u'className': u'android.widget.TextView',
    u'focused': False,
    u'focusable ': True,
    u'clickable': True,
    u'chileCount': 0,
    u'longClickable': True,
    u'visibleBounds': {u'top': 385,
                        u'right': 360,
                        u'bottom': 585,
                        u'left': 200},
    u'checkable': False
    }
    ```

* Get/Set/Clear text of an editable field (e.g., EditText widgets)

    ```python
    d(text="Settings").get_text()  # get widget text
    d(text="Settings").set_text("My text...")  # set the text
    d(text="Settings").clear_text()  # clear the text
    ```

* Get Widget center point

    ```python
    x, y = d(text="Settings").center()
    # x, y = d(text="Settings").center(offset=(0, 0)) # left-top x, y
    ```
    
* Take screenshot of widget

    ```python
    im = d(text="Settings").screenshot()
    im.save("settings.jpg")
    ```

#### Perform the click action on the selected UI object
* Perform click on the specific   object

    ```python
    # click on the center of the specific ui object
    d(text="Settings").click()
    
    # wait element to appear for at most 10 seconds and then click
    d(text="Settings").click(timeout=10)
    
    # click with offset(x_offset, y_offset)
    # click_x = x_offset * width + x_left_top
    # click_y = y_offset * height + y_left_top
    d(text="Settings").click(offset=(0.5, 0.5)) # Default center
    d(text="Settings").click(offset=(0, 0)) # click left-top
    d(text="Settings").click(offset=(1, 1)) # click right-bottom

    # click when exists in 10s, default timeout 0s
    clicked = d(text='Skip').click_exists(timeout=10.0)
    
    # click until element gone, return bool
    is_gone = d(text="Skip").click_gone(maxretry=10, interval=1.0) # maxretry default 10, interval default 1.0
    ```

* Perform long click on the specific UI object

    ```python
    # long click on the center of the specific UI object
    d(text="Settings").long_click()
    ```

#### Gesture actions for the specific UI object
* Drag the UI object towards another point or another UI object 

    ```python
    # notes : drag can not be used for Android<4.3.
    # drag the UI object to a screen point (x, y), in 0.5 second
    d(text="Settings").drag_to(x, y, duration=0.5)
    # drag the UI object to (the center position of) another UI object, in 0.25 second
    d(text="Settings").drag_to(text="Clock", duration=0.25)
    ```

* Swipe from the center of the UI object to its edge

    Swipe supports 4 directions:

    - left
    - right
    - top
    - bottom

    ```python
    d(text="Settings").swipe("right")
    d(text="Settings").swipe("left", steps=10)
    d(text="Settings").swipe("up", steps=20) # 1 steps is about 5ms, so 20 steps is about 0.1s
    d(text="Settings").swipe("down", steps=20)
    ```

* Two-point gesture from one point to another

  ```python
  d(text="Settings").gesture((sx1, sy1), (sx2, sy2), (ex1, ey1), (ex2, ey2))
  ```

* Two-point gesture on the specific UI object

  Supports two gestures:
  - `In`, from edge to center
  - `Out`, from center to edge

  ```python
  # notes : pinch can not be set until Android 4.3.
  # from edge to center. here is "In" not "in"
  d(text="Settings").pinch_in(percent=100, steps=10)
  # from center to edge
  d(text="Settings").pinch_out()
  ```

* Wait until the specific UI appears or disappears
    
    ```python
    # wait until the ui object appears
    d(text="Settings").wait(timeout=3.0) # return bool
    # wait until the ui object gone
    d(text="Settings").wait_gone(timeout=1.0)
    ```

    The default timeout is 20s. see **global settings** for more details

* Perform fling on the specific ui object(scrollable)

  Possible properties:
  - `horiz` or `vert`
  - `forward` or `backward` or `toBeginning` or `toEnd`

  ```python
  # fling forward(default) vertically(default) 
  d(scrollable=True).fling()
  # fling forward horizontally
  d(scrollable=True).fling.horiz.forward()
  # fling backward vertically
  d(scrollable=True).fling.vert.backward()
  # fling to beginning horizontally
  d(scrollable=True).fling.horiz.toBeginning(max_swipes=1000)
  # fling to end vertically
  d(scrollable=True).fling.toEnd()
  ```

* Perform scroll on the specific ui object(scrollable)

  Possible properties:
  - `horiz` or `vert`
  - `forward` or `backward` or `toBeginning` or `toEnd`, or `to`

  ```python
  # scroll forward(default) vertically(default)
  d(scrollable=True).scroll(steps=10)
  # scroll forward horizontally
  d(scrollable=True).scroll.horiz.forward(steps=100)
  # scroll backward vertically
  d(scrollable=True).scroll.vert.backward()
  # scroll to beginning horizontally
  d(scrollable=True).scroll.horiz.toBeginning(steps=100, max_swipes=1000)
  # scroll to end vertically
  d(scrollable=True).scroll.toEnd()
  # scroll forward vertically until specific ui object appears
  d(scrollable=True).scroll.to(text="Security")
  ```

### WatchContext
The current watch_context is started with threading and checked every 2s
Currently there is only one trigger action called click

```python
with d.watch_context() as ctx:
    ctx.when("^immediately(download|update)").when("cancel").click() # When both (install immediately or cancel immediately) and cancel buttons appear at the same time, click cancel
    ctx.when("еђЊж„Џ").click()
    ctx.when("OK").click()
    # The above three lines of code are executed immediately, there will be no waiting
    
    ctx.wait_stable() # Turn on pop-up monitoring and wait for the interface to stabilize (no pop-up window within two pop-up window check cycles means stability)

    # Use the call function to trigger the function callback
    # call supports two parameters, d and el. It does not distinguish the position of the parameters. You can pass no parameters. If you pass the parameters, the variable name cannot be wrongly written.
    # eg: When there is an element matching Midsummer Night, click the back button
    ctx.when("Midsummer Night").call(lambda d: d.press("back"))
    ctx.when("зЎ®е®љ").call(lambda el: el.click())

    # other operations

# For convenience, you can also use the default pop-up window monitoring logic in the code
# The following is the current built-in default logic, you can add group at group owner, add new logic, or directly mention pr
    # when("Continue to use").click()
    # when("Move into control").when("Cancel").click()
    # when("^immediately(download|update)").when("cancel").click()
    # when("Agree").click()
    # when("^(OK | OK)").click()
with d.watch_context(builtin=True) as ctx:
    # Add on the existing basis
    ctx.when("@tb:id/jview_view").when('//*[@content-desc="е›ѕз‰‡"]').click()

    # other script logic
```

another way of writing

```python
ctx = d.watch_context()
ctx.when("set").click()
ctx.wait_stable() # The waiting interface no longer has a pop-up window

ctx.close()
```

### Watcher
**It is more recommended to use WatchContext** to write more concisely

~~You can register [watchers](http://developer.android.com/tools/help/uiautomator/UiWatcher.html) to perform some actions when a selector does not find a match.~~

Before 2.0.0, the [Watcher]((http://developer.android.com/tools/help/uiautomator/UiWatcher.html) method provided in the uiautomator-jar library was used, but in practice it was found that once uiautomator all The watcher configuration is all missing, which is definitely unacceptable.
Therefore, the method of running a thread in the background (depending on the threading library) is currently adopted, and then dumps the hierarchy every once in a while, and performs the corresponding operation after matching the element.

Usage example

registration monitoring

```python
# Commonly used writing method, register anonymous monitoring
d.watcher.when("install").click()

# Register the monitoring named ANR, when ANR and Force Close appear, click Force Close
d.watcher("ANR").when(xpath="ANR").when("Force Close").click()

# Other callback examples
d.watcher.when("Grab the red envelope").press("back")
d.watcher.when("//*[@text = 'Out of memory']").call(lambda d: d.shell('am force-stop com.im.qq'))

# callback description
def click_callback(d: u2.Device):
    d.xpath("OK").click() # Calling in the callback will not trigger the watcher again

d.xpath("Continue").click() # When using d.xpath to inspect the element, the watcher will be triggered (currently up to 5 times)
```

Monitoring operations

```
# Remove ANR monitoring
d.watcher.remove("ANR")

# remove all monitoring
d.watcher.remove()

# Start background monitoring
d.watcher.start()
d.watcher.start(2.0) # The default monitoring interval is 2.0s

# Force all monitors to run
d.watcher.run()

# stop monitoring
d.watcher.stop()

# Stop and remove all monitoring, often used for initialization
d.watcher.reset()
```

In addition, there are still many documents that have not been written. It is recommended to go directly to the source code [watcher.py](uiautomator2/watcher.py)

### Global settings

```python
d.HTTP_TIMEOUT = 60 # Default value is 60s, http default request timeout time

# When the device is offline, the time to wait for the device to be online is only valid when TMQ=true, and can be set through the environment variable WAIT_FOR_DEVICE_TIMEOUT
d.WAIT_FOR_DEVICE_TIMEOUT = 70 
```

Most of the other configurations are currently concentrated in `d.settings`, and the configuration may be increased or decreased according to later requirements.

```python
print(d.settings)
{'operation_delay': (0, 0),
 'operation_delay_methods': ['click', 'swipe'],
 'wait_timeout': 20.0,
 'xpath_debug': False}

# Configure a delay of 0.5s before clicking, and a delay of 1s after clicking
d.settings['operation_delay'] = (.5, 1)

# Modify the method of delay taking effect
# Among them double_click, long_click all correspond to click
d.settings['operation_delay_methods'] = ['click', 'swipe', 'drag', 'press']

d.settings['xpath_debug'] = True # Enable the debug log of the xpath plugin
d.settings['wait_timeout'] = 20.0 # Default control waiting time (native operation, waiting time of xpath plugin)
```

With the version upgrade, when setting an expired configuration, Deprecated will be prompted, but an exception will not be thrown.

```bash
>>> d.settings['click_before_delay'] = 1  
[W 200514 14:55:59 settings:72] d.settings[click_before_delay] deprecated: Use operation_delay instead
```

**uiautomator recovery method settings**

If you are careful, you may find that there are actually two APKs installed on the phone, one of which is visible in the foreground (little yellow car). A package named `com.github.uiautomator.test` is not visible in the background. Both apks are signed with the same certificate.
The invisible application is actually a test package that contains all the test code, and the core test service is also started through it.
But when running, the system needs that little yellow car to be running all the time (it can also run in the background). Once the small yellow car application is killed, the test service running in the background will also be killed soon. Even if you don't do anything, the application will be quickly recycled by the system when it is in the background. (I hope the experts here can give some pointers on how to not rely on the application of the small yellow car. I feel that it is possible in theory, but I can't yet).

~~There are two ways to let the little yellow car run in the background. One is to start the application and put it in the background (default). Alternatively, start a background service via `am startservice`. ~~

~~ This behavior can be adjusted via `d.settings["uiautomator_runtest_app_background"] = True`. True means start the application, False means start the service. ~~

Timeout setting in UiAutomator (hidden method)

```python
>> d.jsonrpc.getConfigurator() 
{'actionAcknowledgmentTimeout': 500,
 'keyInjectionDelay': 0,
 'scrollAcknowledgmentTimeout': 200,
 'waitForIdleTimeout': 0,
 'waitForSelectorTimeout': 0}

>> d.jsonrpc.setConfigurator({"waitForIdleTimeout": 100})
{'actionAcknowledgmentTimeout': 500,
 'keyInjectionDelay': 0,
 'scrollAcknowledgmentTimeout': 200,
 'waitForIdleTimeout': 100,
 'waitForSelectorTimeout': 0}
```

`waitForIdleTimeout` and `waitForSelectorTimeout` are currently changed to `0` in order to prevent client program response timeouts

Refs: [Google uiautomator Configurator](https://developer.android.com/reference/android/support/test/uiautomator/Configurator)

### Input method
This method is usually used for input without knowing the control. The first step is to switch the input method, and then send the adb broadcast command, the specific usage is as follows

```python
d.set_fastinput_ime(True) # Switch to FastInputIME input method
d.send_keys("Hello 123abcEFG") # adb broadcast input
d.clear_text() # Clear all contents of the input box (Require android-uiautomator.apk version >= 1.0.7)
d.set_fastinput_ime(False) # Switch to normal input method
d.send_action("search") # Simulate input method search
```

**send_action** Description

The parameters that this function can use are `go search send next done previous`

_When should I use this function? _

Sometimes after typing in EditText, calling `press("search")` or `press("enter")` found nothing happened.
At this time, the `send_action` function is needed. Here, the [IME_ACTION_CODE] (https://developer.android.com/reference/android/view/inputmethod/EditorInfo) that can only be used by the input method is used.
`send_action` sends the broadcast command to the input method operation `IME_ACTION_CODE` first, and the input method completes the subsequent communication with EditText. (I don't know the principle very well, if you know it, let me know with an issue)

### Toast (added after version 2.2)
Show Toast

```python
d.toast.show("Hello world")
d.toast.show("Hello world", 1.0) # show for 1.0s, default 1.0s
```

Get Toast

```python
# [Args]
# 5.0: max wait timeout. Default 10.0
# 10.0: cache time. return cache toast if already toast already show up in recent 10 seconds. Default 10.0 (Maybe change in the furture)
# "default message": return if no toast finally get. Default None
d.toast.get_message(5.0, 10.0, "default message")

# common usage
assert "Short message" in d.toast.get_message(5.0, default="")

# clear cached toast
d.toast.reset()
# Now d.toast.get_message(0) is None
```

### XPath
Java uiautoamtor does not support xpath by default, so this is an extended function. Not so fast.

For example: the content of one of the nodes

```xml
<android.widget.TextView
  index="2"
  text="05:19"
  resource-id="com.netease.cloudmusic:id/qf"
  package="com.netease.cloudmusic"
  content-desc=""
  checkable="false" checked="false" clickable="false" enabled="true" focusable="false" focused="false"
  scrollable="false" long-clickable="false" password="false" selected="false" visible-to-user="true"
  bounds="[957,1602][1020,1636]" />
```

How to locate and use xpath

Note that the names of some attributes have been modified

```
description -> content-desc
resourceId -> resource-id
```

Common usage

```python
# wait exists 10s
d.xpath("//android.widget.TextView").wait(10.0)
# find and click
d.xpath("//*[@content-desc='Share']").click()
# check exists
if d.xpath("//android.widget.TextView[contains(@text, 'Se')]").exists:
    print("exists")
# get all text-view text, attrib and center point
for elem in d.xpath("//android.widget.TextView").all():
    print("Text:", elem.text)
    # Dictionary eg: 
    # {'index': '1', 'text': '999+', 'resource-id': 'com.netease.cloudmusic:id/qb', 'package': 'com.netease.cloudmusic', 'content-desc': '', 'checkable': 'false', 'checked': 'false', 'clickable': 'false', 'enabled': 'true', 'focusable': 'false', 'focused': 'false','scrollable': 'false', 'long-clickable': 'false', 'password': 'false', 'selected': 'false', 'visible-to-user': 'true', 'bounds': '[661,1444][718,1478]'}
    print("Attrib:", elem.attrib)
    # Coordinate eg: (100, 200)
    print("Position:", elem.center())
```

Click to view [other common usage of XPath](XPATH.md)

### Screenrecord
video recording

The screenrecord command that comes with the mobile phone is not used here. It is a method of synthesizing video by obtaining mobile phone pictures, so some other dependencies need to be installed, such as imageio, imageio-ffmpeg, numpy, etc.
Because some dependencies are relatively large, it is recommended to use mirror installation. Just run the following command directly.

```bash
pip3 install -U "uiautomator2[image]" -i https://pypi.doubanio.com/simple
```

Instructions

```
d.screenrecord('output.mp4')

time.sleep(10)
# or do something else

d.screenrecord.stop() # After the recording is stopped, the output.mp4 file can be opened
```

You can also specify fps (currently 20) when recording. This value is lower than the speed of the minicap output picture. It feels very good. It is not recommended that you modify it.

### Image match
Image matching, you need to install dependencies before using this function

```bash
pip3 install -U "uiautomator2[image]" -i https://pypi.doubanio.com/simple
```

Two interfaces are currently open
 
```
imdata = "target.png" # can also be a URL, PIL.Image or an image opened by OpenCV

d.image.match(imdata) 
# Match the image to be found and return a result immediately
# return a dict, eg: {"similarity": 0.9, "point": [200, 300]}

d.image.click(imdata, timeout=20.0)
# Call match polling to find pictures within 20s. When similarity>0.9, perform click operation
```

This function is still being perfected, and the picture needs to be cropped from the original picture of the mobile phone.

# common problem
Many things that are not written in this place are put here [Common Issues](https://github.com/openatx/uiautomator2/wiki/Common-issues)

## Stop UiAutomator
Stop the UiAutomator daemon service

https://github.com/openatx/uiautomator2/wiki/Common-issues

Because of the existence of `atx-agent`, Uiautomator will be guarded all the time, and will be restarted if it exits. But Uiautomator is domineering. Once it is running, the auxiliary functions on the mobile phone and the uiautomatorviewer on the computer cannot be used unless the uiautomator of the framework itself is turned off. The following two methods to close

method 1:

Open the uiautomator app directly (it will be installed after the init is successful), click `Close UIAutomator`

Method 2:

```python
d.uiautomator.stop()

# d.uiautomator.start() # start
# d.uiautomator.running() # Whether it is running
```

[Method for coexisting AccessibilityService between ATX and Maxim](https://testerhome.com/topics/17179)

# Article Recommended
Excellent article recommendation (welcome at me feedback in the QQ group)

- [Introduction to how to deploy uiautomator2 in termux](https://www.cnblogs.com/ze-yan/p/12242383.html) by `Chengdu - the test will only be a little`

# project history
* Project refactored from <https://github.com/xiaocong/uiautomator>

## Difference between Google UiAutomator 2.0 and 1.x
https://www.cnblogs.com/insist8089/p/6898181.html

- New interfaces: UiObject2, Until, By, BySelector
- Introduction method: In 2.0, the introduction method of com.android.uiautomator.core.* is deprecated. Change to android.support.test.uiautomator
- Build System: Maven and/or Ant (1.x); Gradle (2.0)
- The form of the generated test package: from zip/jar (1.x) to apk (2.0)
- Run the UIAutomator test with the adb command in the local environment, the difference in the startup method:   
  adb shell uiautomator runtest UiTest.jar -c package.name.ClassNameпј€1.xпј‰
  adb shell am instrument -e class com.example.app.MyTest 
  com.example.app.test/android.support.test.runner.AndroidJUnitRunnerпј€2.0пј‰
- Can I use Android services and interfaces? 1.x ~ can't; 2.0 ~ can.
- og output? Use System.out.print output stream to echo to execution side (1.x); output to Logcat (2.0)
- implement? The test case does not need to inherit from any parent class, the method name is not limited, and the annotation is used (2.0); UiAutomatorTestCase needs to be inherited, and the test method needs to start with test (1.x)

## [CHANGELOG (generated by pbr)](CHANGELOG)
Major update

- 1.0.0

    Removed `d.watchers.watched` (slows down automation and reduces stability)


## Dependent projects
- uiautomator daemon <https://github.com/openatx/atx-agent>
- uiautomator jsonrpc server<https://github.com/openatx/android-uiautomator-server/>

# Contributors
- codeskyblue ([@codeskyblue][])
- Xiaocong He ([@xiaocong][])
- Yuanyuan Zou ([@yuanyuan][])
- Qian Jin ([@QianJin2013][])
- Xu Jingjie ([@xiscoxu][])
- Xia Mingyuan ([@mingyuan-xia][])
- Artem Iglikov, Google Inc. ([@artikz][])

[@codeskyblue]: https://github.com/codeskyblue
[@xiaocong]: https://github.com/xiaocong
[@yuanyuan]: https://github.com/yuanyuanzou
[@QianJin2013]: https://github.com/QianJin2013
[@xiscoxu]: https://github.com/xiscoxu
[@mingyuan-xia]: https://github.com/mingyuan-xia
[@artikz]: https://github.com/artikz

Other [contributors](../../graphs/contributors)

## Other excellent projects
- [google/mobly](https://github.com/google/mobly) Google's internal testing framework, although I don't know much, but it feels very useful
- https://www.appetizer.io/ contains a nice IDE for quick scripting and instrumentation to capture performance.
- https://github.com/atinfo/awesome-test-automation A collection of all excellent testing frameworks, all-inclusive
- http://www.sikulix.com/ automated testing framework based on image recognition, very old
- http://airtest.netease.com/ The predecessor of this project was taken over by the Netease Guangzhou team and continued to optimize. Implementation has a nice IDE

# LICENSE
[MIT] (LICENSE)
