#Persistent
#SingleInstance Prompt
mining := 1

Loop {

If ProcessExist("excavator.exe") {

	If(mining == 0) {
	
	TrayTip, Mining Profiler, Switching to mining profile., 1
	Run, C:\Program Files (x86)\MSI Afterburner\MSIAfterburner.exe -profile3
	mining = 1
	
	} 
	}else {

	If(mining == 1) {
	
	TrayTip, Mining Profiler, Switching to normal profile., 1
	Run, C:\Program Files (x86)\MSI Afterburner\MSIAfterburner.exe -profile1
	mining = 0

	}
	}
	
Sleep, 5000

}

ProcessExist(Name){
	Process,Exist,%Name%
	return Errorlevel
}