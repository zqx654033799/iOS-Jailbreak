# iOS-Jailbreak

## app.sh 输出沙盒目录包名文件

```
scp app.sh root@iPhone:/var/root/
ssh root@iPhone
chmod +x ./app.sh
./app.sh
```
## 解密

**首先一个iOS的可执行文件是否被加密可以通过以下命令来判断：**

```
otool -l 可执行文件 | grep -A 4 LC_ENCRYPTION_INFO
```
