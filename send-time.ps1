

$port = new-Object System.IO.Ports.SerialPort Com5,115200,None,8,1
$port.open()

# Try to update Arduino's date 5 times
For($i=0; $i -le 5; $i++)
{
	# Sending seconds when milliseconds = 0
	$s = Get-Date -Format ss
	$s = 1 + $s
	$s = -join('S',$s,',')

	$mili = Get-Date -Format fff
	$mili = 1000-$mili
	Start-Sleep -m $mili

	$port.WriteLine($s)

	# Get and send minute
	$m = Get-Date -Format mm
	$m = -join('D',$m,',')
	$port.WriteLine($m)

	# Get and send hour
	$h = Get-Date -Format HH
	$h = -join('H',$h,',')
	$port.WriteLine($h)

	# Get and send day
	$d = Get-Date -Format dd
	$d = -join('T',$d,',')
	$port.WriteLine($d)
	
	# Get and send month
	$m = Get-Date -Format MM
	$m = -join('M',$m,',')
	$port.WriteLine($m)

	# Get and send year
	$y = Get-Date -Format yyyy
	$y = -join('J',$y,',')
	$port.WriteLine($y)
}

$port.close()
