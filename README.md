# Translation Toolkit 

## How to generate executable

### Install Perl environment (32bit)

[https://strawberryperl.com/](https://strawberryperl.com/)

### Installation dependent modules

```
> cpanm Win32::Process::Info
> cpanm Win32::Process::Memory
> cpanm Win32::Process::List
> cpanm File::Monitor
> cpanm PAR::Packer
```

### Create executable

```
> pp -o TransPatcher.exe TransPatcher.pl
```

