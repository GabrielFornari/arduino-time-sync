# arduino-time-sync

To execute powershell script follow the steps:

	0- Don't forget to insert the 3V coin battery in the system
	0- Load the program "TimeSync.ino" into the system
	1- Run powershell as administrator
		1.1- Begin (windows)
		1.2- Right mouse click
		1.3- Run as administrator
	2- Change powershell execution policy
		2.1- Get-ExecutionPolicy
		2.2- Set-ExecutionPolicy Unrestricted
	3- Check the COM port and other parameters
		3.1- Open SendTime.ps1 and change header
		3.1.1- Verify COM port
		3.1.2- Verify the serial port velocity (115200)
	4- Run powershell
		4.1- Open cmd prompt
		4.2- Write "powershell" + enter
	5- Run SendTime.ps1
		5.1- cd ...\TimeSync
		5.2- .\SendTime.ps1
	6- Check if system's time was updated
		6.1 Open serial monitor (crtl+shift+m)
		6.2 Send "B,"
		6.3 If time did not change, go to step 3
	7- Change powershell execution policy back to restricted
		7.1- Set-ExecutionPolicy Restricted
