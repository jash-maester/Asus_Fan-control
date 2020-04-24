<h4>***Skip To the end of this Readme to Get straight to the good stuff***</h4>

<h1>Install</h1>

<h3>Dependencies</h3>

* <b>systemd</b> suite
* <b>acpi_call</b> module (see below)
* <b>dmidecode</b> tool (see below)

<h2>Using GitPack</h2>

Asus-fan-control supports GitPack. Global installation/update:

    sudo gitpack install github.com/dominiksalvet/asus-fan-control

- If your system has APT, GitPack will install acpi_call and dmidecode automatically.

<h2>From AUR</h2>

If you are using Arch Linux or an Arch-based distribution, there is an AUR package available. Just install asus-fan-control from AUR. 

<h6>It may be a good idea to also enable running asus-fan-control automatically:</h6>

    sudo systemctl enable asus-fan-control

<h1>Usage</h1>

Asus-fan-control is executed automatically whenever necessary to keep the effect of a permanent change. Nevertheless, it is possible to invoke it manually as shown below:

    sudo asus-fan-control

It uses custom temperatures if previously set, otherwise the default temperatures are used.

<h2>Custom temperatures</h2>

The fan speed policy is usually defined by 8 increasing numbers representing temperature boundaries in degrees Celsius between individual fan speed levels. E.g., UX430UA's default temperatures are 55 60 62 65 68 72 76 80 as shown:
Speed level |	Temperature (C°)
----------- | ----------------
0 (off) |	54 and less
1 |	55 to 59
2 |	60 to 61
3 |	62 to 64
4 |	65 to 67
5 |	68 to 71
6 |	72 to 75
7 |	76 to 79
8 (max) |	80 and more

<br>

To use your <b>custom temperatures</b>, use the set-temps command. For example:

    sudo asus-fan-control set-temps 45 50 55 60 65 70 75 80
    
The Above was the official Documentation By <a href="https://github.com/dominiksalvet/asus-fan-control">Dominiksalvet's Asus-Fan-Control utility</a>.

<h1> The Above Scripts are created by me to make tuning of ASUS ROG GL553VE easier for the average new user (#NOOB_To_Linux).</h1>

<h2>Steps to install my Scripts</h2>
- Install ASUS Fan Control according to the previous commands: 

    mkdir -p /tmp/gitpack/ && cd /tmp/gitpack/ && # prepare a temporary directory
    git clone https://github.com/dominiksalvet/gitpack.git ./ && # clone repository
    git checkout "$(git describe --tags --abbrev=0)" && # use latest version
    sudo src/gitpack install github.com/dominiksalvet/gitpack && # install GitPack
    sudo gitpack install github.com/dominiksalvet/asus-fan-control

- Then to make this autorun 

    sudo systemctl enable asus-fan-control

- Download the two .sh files in your home directory & Type the following in your terminal or just copy/paste:
    sudo chmod +x high_speed.sh
    sudo chmod +x low_speed.sh
    
***<b>Make sure you are in the same directory where your downloaded files are located or else these scripts will fail.</b>
  
- To Execute, Just type: 
```
./high_speed.sh
```
or

    ./low_speed.sh
    
To either set an aggressive fan speed or set a low spinning fan speed. 
