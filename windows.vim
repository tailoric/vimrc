if executable('pwsh.exe')
    set shell=pwsh.exe\ -NoProfile\ -NoLogo\ -NonInteractive\ -ExecutionPolicy\ RemoteSigned
    set shellcmdflag=-command
    set shellquote=\"
    set shellxquote=
else
    set shell=powershell.exe\ -NoProfile\ -NoLogo\ -NonInteractive\ -ExecutionPolicy\ RemoteSigned
    set shellcmdflag=-command
    set shellquote=\"
    set shellxquote=
endif
command Guid read! (New-Guid).Guid

command Date read! echo \%date\%
command Time read! echo \%time\%
command DateTime read! echo \%date\% \%time\%
