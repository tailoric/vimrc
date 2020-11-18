command DateTime read! echo \%date\% \%time\%
command Date read! date /t
command Time read! date /t
if executable('pwsh.exe')
    set shell=pwsh.exe\ -NoProfile
else
    set shell=powershell.exe\ -NoProfile
endif
command Guid read! (New-Guid).Guid

