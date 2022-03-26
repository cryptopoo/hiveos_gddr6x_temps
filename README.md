# HiveOS GDDR6X Temperatures for NVIDIA GPUs

This simple script reads temperatures from NVIDIA GPUs as reported by:

- t-rex v0.25.9+
- gminer 2.88+

and adds them to the normal GPU statistics collected by HiveOS.

This script doesn't alter any HiveOS core files, so it's rather safe to use.

# Supported GPUs
All GDDR6X NVIDIA GPUs are supported as well as some GDDR6 (!):
- RTX 3090
- RTX 3080 Ti
- RTX 3080
- RTX 3070 Ti
- RTX 2080 Ti (GDDR6)
- RTX 2080 (GDDR6)
- RTX A2000 (GDDR6)
- RTX A4000 (GDDR6)
- RTX A4500 (GDDR6)
- RTX A5000 (GDDR6)


# This is experimental
Please consider this a simple add-on on top of HiveOS.
What it really does, is parsing the logs from the miners written above and patching the GPU stats json file that HiveOS collects periodically with the memory temperatures. When GPU data will be reported to HiveOS, it will have also memory temperatures added to it.

# Installation
Simply open a shell on your HiveOS installation or click "Run command" on top and run (copy paste the whole thing and press ENTER):
```
curl https://raw.githubusercontent.com/cryptopoo/hiveos_gddr6x_temps/main/quick-install.sh | bash
```

![image](https://user-images.githubusercontent.com/102094145/159818529-1dadaa6a-542d-4251-9cf4-7bdbe7b9d9a9.png)

# In case of problems
What if after installing this script you start seeing aliens coming all the way down to mother Earth to rape your wife and steal your children?

First, you can uninstall the script with (copy paste the whole thing and press ENTER):

```
curl https://raw.githubusercontent.com/cryptopoo/hiveos_gddr6x_temps/main/quick-uninstall.sh | bash
```

Then go seek for help.

# Consider donating to support my work
Do you like how this script is so minimally invasive in respect to HiveOS core files and the functionality it provides? **Please**, consider donating a small amount to thank me for my time! It will be very much appreciated!

Donations are accepted as BNB / ETH on the following address:

```0x480A5cF1933160D2ef7acf259f631e8d656ceD29```

Thank you!
