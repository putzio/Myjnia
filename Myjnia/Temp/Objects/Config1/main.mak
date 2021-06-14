SHELL := cmd.exe
CYGWIN=nontsec
export PATH := C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Program Files\Git\cmd;C:\Program Files\Microsoft SQL Server\120\Tools\Binn\;C:\Program Files\CMake\bin;C:\Program Files (x86)\GNU Arm Embedded Toolchain\10 2020-q4-major\bin;C:\Program Files\Microchip\xc8\v2.31\bin;C:\Program Files\dotnet\;C:\Users\krzys\AppData\Local\Programs\Python\Python39\Scripts\;C:\Users\krzys\AppData\Local\Programs\Python\Python39\;C:\Program Files (x86)\GNU Arm Embedded Toolchain\10 2020-q4-major\bin;C:\Users\krzys\AppData\Local\Microsoft\WindowsApps;C:\Users\krzys\AppData\Local\Programs\Microsoft VS Code\bin;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Users\krzys\AppData\Local\Programs\Python\Python39\Scripts\;C:\Users\krzys\AppData\Local\Programs\Python\Python39\;C:\Program Files (x86)\GNU Arm Embedded Toolchain\10 2020-q4-major\bin;C:\Users\krzys\AppData\Local\Microsoft\WindowsApps;C:\Users\krzys\AppData\Local\Programs\Microsoft VS Code\bin;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\BrAutomation\AS49\Bin-en\4.9;C:\BrAutomation\AS49\Bin-en\4.8;C:\BrAutomation\AS49\Bin-en\4.7;C:\BrAutomation\AS49\Bin-en\4.6;C:\BrAutomation\AS49\Bin-en\4.5;C:\BrAutomation\AS49\Bin-en\4.4;C:\BrAutomation\AS49\Bin-en\4.3;C:\BrAutomation\AS49\Bin-en\4.2;C:\BrAutomation\AS49\Bin-en\4.1;C:\BrAutomation\AS49\Bin-en\4.0;C:\BrAutomation\AS49\Bin-en
export AS_BUILD_MODE := BuildAndCreateCompactFlash
export AS_VERSION := 4.9.3.144 SP
export AS_WORKINGVERSION := 4.9
export AS_COMPANY_NAME :=  
export AS_USER_NAME := krzys
export AS_PATH := C:/BrAutomation/AS49
export AS_BIN_PATH := C:/BrAutomation/AS49/Bin-en
export AS_PROJECT_PATH := D:/Studia/VI/Myjnia/Myjnia/Myjnia
export AS_PROJECT_NAME := Myjnia
export AS_SYSTEM_PATH := C:/BrAutomation/AS/System
export AS_VC_PATH := C:/BrAutomation/AS49/AS/VC
export AS_TEMP_PATH := D:/Studia/VI/Myjnia/Myjnia/Myjnia/Temp
export AS_CONFIGURATION := Config1
export AS_BINARIES_PATH := D:/Studia/VI/Myjnia/Myjnia/Myjnia/Binaries
export AS_GNU_INST_PATH := C:/BrAutomation/AS49/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := C:/BrAutomation/AS49/AS/GnuInst/V4.1.2/4.9/bin
export AS_GNU_INST_PATH_SUB_MAKE := C:/BrAutomation/AS49/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := C:/BrAutomation/AS49/AS/GnuInst/V4.1.2/4.9/bin
export AS_INSTALL_PATH := C:/BrAutomation/AS49
export WIN32_AS_PATH := "C:\BrAutomation\AS49"
export WIN32_AS_BIN_PATH := "C:\BrAutomation\AS49\Bin-en"
export WIN32_AS_PROJECT_PATH := "D:\Studia\VI\Myjnia\Myjnia\Myjnia"
export WIN32_AS_SYSTEM_PATH := "C:\BrAutomation\AS\System"
export WIN32_AS_VC_PATH := "C:\BrAutomation\AS49\AS\VC"
export WIN32_AS_TEMP_PATH := "D:\Studia\VI\Myjnia\Myjnia\Myjnia\Temp"
export WIN32_AS_BINARIES_PATH := "D:\Studia\VI\Myjnia\Myjnia\Myjnia\Binaries"
export WIN32_AS_GNU_INST_PATH := "C:\BrAutomation\AS49\AS\GnuInst\V4.1.2"
export WIN32_AS_GNU_BIN_PATH := "$(WIN32_AS_GNU_INST_PATH)\\bin" 
export WIN32_AS_INSTALL_PATH := "C:\BrAutomation\AS49"

.suffixes:

ProjectMakeFile:

	@'C:/BrAutomation/AS49/bin-en/4.9/BR.AS.AnalyseProject.exe' '$(AS_PROJECT_PATH)/Myjnia.apj' -t '$(AS_TEMP_PATH)' -c '$(AS_CONFIGURATION)' -o '$(AS_BINARIES_PATH)'   -sfas -buildMode 'BuildAndCreateCompactFlash'   

