# Fix Fixed Header IR
Fix Fixed Header IR
Fixed Headers do not work if you have a control break on your Interactive Report.
Here is a workaround.

Simply download the plugin (For APEX 5.1 and up).
Create a Dynamic Action: After Refresh of your Interactive Report Region.
Set the true Action: Fix Fixed Headers IR (Plugin).
If you don't use the Universal Theme, you can set your own top margin.

Sidenote: IE
It does work in IE, but it's not as native as in Chrome / Firefox / Edge Chromium / ..

APEX versions	 5.1.4 and up. (Tested in  5.1.4, 19.1, 20.2, 21.2, 24.2)

In the APEX map there are 2 plugin files, 1 for APEX Versions 24.2 (and up...) and one for APEX 5.1 and up. This way you can still use the plugin if you have an older version of APEX 
