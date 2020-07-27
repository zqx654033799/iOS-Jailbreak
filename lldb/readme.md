* copy debugserver to your mac from your device from /Developer/usr/bin/debugserver
* resign debugserver using the following command:
```
codesign -s - --entitlements entitlements.plist -f debugserver
```
* Use this entitlements.plist:
```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>com.apple.backboardd.debugapplications</key>
    <true/>
    <key>com.apple.backboardd.launchapplications</key>
    <true/>
    <key>com.apple.diagnosticd.diagnostic</key>
    <true/>
    <key>com.apple.frontboard.debugapplications</key>
    <true/>
    <key>com.apple.frontboard.launchapplications</key>
    <true/>
    <key>com.apple.security.network.client</key>
    <true/>
    <key>com.apple.security.network.server</key>
    <true/>
    <key>com.apple.springboard.debugapplications</key>
    <true/>
    <key>com.apple.system-task-ports</key>
    <true/>
    <key>get-task-allow</key>
    <true/>
    <key>platform-application</key>
    <true/>
    <key>run-unsigned-code</key>
    <true/>
    <key>task_for_pid-allow</key>
    <true/>
</dict>
</plist>
```
* copy back debugserver to the device into /usr/bin/debugserver
* respring
```
killall -9 SpringBoard
```
* then run debugserver using
```
debugserver localhost:1234 -x backboard path_to_binary
```
* on your mac run lldb and connect as usual

#### Thans for [ouraigua](https://github.com/pwn20wndstuff/Undecimus/issues/531#issuecomment-492347700)
