# YGOPro_cdb_SC_name_Converter
把YGOPro或其衍生版本显示的卡名翻译转换为简中官方版。
只影响你看到的文本，不会影响对战。
举例：
卡名 | 无限与有限之无垢大艺术 → 无限与有限之奥艺
字段 | 无垢大艺术 → 奥艺
只对YGO正式更新后的卡片生效，不去修改有点混乱的超先行补丁。
## 使用方法
### 0.前置环境 Python
[https://mirrors.huaweicloud.com/python/3.12.7/python-3.12.7-amd64.exe]
务必勾选窗口最底部的 Add python.exe to PATH 并安装。
### 1.放置与使用
将两个文件放置到YGOPro根目录。
（Mycard用户可以通过“浏览本地文件”打开根目录。）
使用管理员权限运行“一键更新简中翻译.bat”。
### 2.更新
每次YGOPro正式版更新以后，重新运行一次“一键更新简中翻译.bat”即可。
### 3.卸载
删除Expansions文件夹里的“strings.conf”“sc_official.cdb”。
