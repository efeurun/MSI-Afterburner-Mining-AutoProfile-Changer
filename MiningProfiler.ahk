#Persistent
#SingleInstance Prompt
mining := 1
mine := 0

Loop {

If ProcessExist() {

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

ProcessExist(){

	Process,Exist, excavator.exe
	If (ErrorLevel) {

		MsgBox Excavator Running
	return True

	}

	Process,Exist, t-rex.exe
	If (ErrorLevel) {

		MsgBox T-Rex Running

	return True

	}

	return False
}