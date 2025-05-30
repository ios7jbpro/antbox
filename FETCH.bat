:memreductinstall
cd C:\Users\WDAGUtilityAccount\Desktop
curl -L -o memreduct.exe https://memreduct.org/files/memreduct-3.5.2-setup.exe
memreduct.exe /silent
if EXIST "C:\Program Files\Mem Reduct\memreduct.exe" (echo File exists) else (goto memreductinstall)
