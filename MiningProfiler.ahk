;https://github.com/efelatte // efeurun@gmail.com

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Persistent ; probably not needed
#SingleInstance Prompt
global mining := 0
global mine := 0
global ProcessesToCheck := ["excavator.exe", "t-rex.exe", "miner.exe"] ; add any miners you have to this array

Loop {

If ProcessExist() {

	If(mining == 0) {
	
	TrayTip, Mining Profiler, Switching to mining profile., 1
	Run, C:\Program Files (x86)\MSI Afterburner\MSIAfterburner.exe -profile3 ;type your mining profile here instead of '-profile3'
	mining = 1
	
	}} else {

	If(mining == 1) {
	
	TrayTip, Mining Profiler, Switching to normal profile., 1
	Run, C:\Program Files (x86)\MSI Afterburner\MSIAfterburner.exe -profile1 ;type your normal profile here instead of '-profile1'
	mining = 0

	}}
	
	Sleep, 5000

}

ProcessExist() {

 	for i, A_Process in ProcessesToCheck {

		Process,Exist, %A_Process%

		If (ErrorLevel)
		return True

 	}

	return False

}