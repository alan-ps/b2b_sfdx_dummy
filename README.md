# B2B SFDX Dummy
Dummy extension for B2B Commerce.

### Overview
This is a sample of an extension for B2B Commerce managed package, that can be used as a template for your B2B Commerce extensions. It adds a new text field "Reverse Product Name" to CC Product object, and fills it by reversed value of "Product Name" field, when product is saved. Very useful, I know :sweat_smile:

### Usage
Create an unlocked package as a started point and after that, new package can be installed like an extention for B2B Commerce:
```sh
sfdx force:package:create --name b2b_sfdx_dummy --description "B2B SFDX Dummy" --packagetype Unlocked --path force-app --nonamespace --targetdevhubusername DevHub
```
```sh
sfdx force:package:version:create -p b2b_sfdx_dummy -d force-app -x --wait 10 -v DevHub
```

**_Do you need an extention we B2B Commerce? Take this, adopt for your needs and enjoy!_**
