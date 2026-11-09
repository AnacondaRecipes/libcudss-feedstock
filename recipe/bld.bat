:: Anaconda: Windows packaging lives here instead of an inline meta.yaml script
:: so each copy step is checked and a failure aborts the build.
xcopy include %LIBRARY_INC% /E /I /Y /V
if errorlevel 1 exit 1
xcopy lib %LIBRARY_LIB% /E /I /Y /V
if errorlevel 1 exit 1
xcopy bin %LIBRARY_BIN% /E /I /Y /V
if errorlevel 1 exit 1
