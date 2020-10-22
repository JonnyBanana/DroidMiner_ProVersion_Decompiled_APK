# DroidMiner_ProVersion_Decompiled_APK
Source Code of Droid Miner PRO Apk, that I just extract the modded apk with lucky patcher, and then i decompiled

![Alt text](https://raw.githubusercontent.com/JonnyBanana/DroidMiner_ProVersion_Disassembled_APK/master/images/com.jordanrulz.droidbtc-w130.png)

Over the years I have cracked a lot of apps with the mythical Lucky Patcher,

and I've often wondered how his patches worked ...

One day I needed a miner for android and walking around the playstore I saw this that seemed valid, </BR>
but I needed the pro version to use different smarphones and workers, so I bought the app </BR>
and then I have extracted the apk with the full permits via lucky patcher.

Recently I shared the apk on youtube and of course some users have immediately thought about a malware....

Click on the image below to see the video:

[![DroidMiner](https://github.com/JonnyBanana/DroidMiner_ProVersion_Disassembled_APK/blob/master/images/video.jpg)](https://www.youtube.com/watch?v=x-78F5PpWZ4&t=12s)


But i think is also because if scanned on virus total 18 antivirus on 61 they detect it as malware </BR>
(most like Android: BitCoinMiner-R [PUP] or not- a-virus: HEUR: RiskTool.Linux.BitCoinMiner.ao </BR>
or other variants ... some even see it as a trojan) A little harsh :( :( :(

https://www.virustotal.com/#/file/2c5a8bbd71988a5b4788960e6709d9158d9a7c3b688604aeae2c7b69e4b0dd7e/detection

![Alt text](https://raw.githubusercontent.com/JonnyBanana/DroidMiner_ProVersion_Disassembled_APK/master/images/apkscan.JPG)

</BR></BR>

The funny thing is that if you try to scan the apk (find both files in the folder TESTS !!!) on total virus the file is infected for 18 vendors while if you scan the zip only 10 vendors detect it as malware, it is not the first time it happens, obviously some vendors have trouble detecting viruses with compressed format files...

https://www.virustotal.com/it/file/ef9f77781471b6c8e584e5a3c29e3c00dfd1ee4dcb6c0e7168d0fd5160e9ebba/analysis/1538536264/

![Alt text](https://github.com/JonnyBanana/DroidMiner_ProVersion_Disassembled_APK/blob/master/images/virustotalscanzip.JPG)

So I took the opportunity to study a little apk and the code behind it, </BR>
and I decompiled the apk with a simple online service:

http://www.javadecompilers.com/apk

In this way I hope that: A people stop busting my balls, and B that serves high to understand how it work an android miner.

If you need it, in the "TESTS !!" folder! find the apk file already compiled, of the pro version of Droid Miner.</BR>
With this version you can mine with different smartphone and use different workers.</BR>
Or if you prefer you can obviously compile it yourself (the funny way :) :) :))

https://m.allfreeapk.com/droidminer-btc-ltc-doge-miner,252154/

And for the record: I tried to download the same apk on another site</BR>
and as many as 27 vendors on VirusTotal have detected it as malware!

https://www.virustotal.com/it/file/4b5109927d61090087cdfcd7eacdec5910d9674773bbcac764f8ddf260a55ea2/analysis/1538536221/

![Alt text](https://raw.githubusercontent.com/JonnyBanana/DroidMiner_ProVersion_Disassembled_APK/master/images/realmalware.JPG)


</BR>

Then I decompiled the apk manually with the the legendary apktool.

![Alt text](https://raw.githubusercontent.com/JonnyBanana/DroidMiner_ProVersion_Decompiledled_APK/master/images/apk-tool.png)

This is because the online decompilers pull out the java code, but for the cracking of android they need the files in smal language (a kind of assembly code).

In the folder droidminer.smali you find the apk file decompiled with apktool

For now I have performed only a brief analysis, and first I noticed that the apk modified with lucky patcher did not touch the classic string "CHECK_LICENSE" contained in 'AndroidManifest.xml


![Alt text](https://raw.githubusercontent.com/JonnyBanana/DroidMiner_ProVersion_Disassembled_APK/master/images/CHECK_LICENSE.JPG)


</BR>

The patch is probably contained in the LicenseChecker.smali file that you can find in the smali \ com \ google \ android \ vending \ licensing path

I have not analyzed the crack yet, but as soon as I do it I will post the results.

In any case, the most suspicious users can sleep peacefully and analyze the code, so as to ensure that there are no trojans, rat, etc.

![Alt text](https://raw.githubusercontent.com/JonnyBanana/DroidMiner_ProVersion_Disassembled_APK/master/images/pics-3.png)


Finally placed a series of links to articles and resources on reverse engineering of the apk, android security, LVL, etc., </BR>
personally i have been very useful.

https://iosgods.com/topic/65627-bypassing-google-license-check-harry-potter-hogwarts-mystery-example-smali/

https://developer.android.com/google/play/licensing/adding-licensing

https://samsclass.info/128/proj/p9-decom.htm

https://www.html.it/articoli/decompilare-ed-offuscare-il-codice-di-unapp-android/

http://androidcracking.blogspot.com/2010/09/examplesmali.html

http://androidcracking.blogspot.com/2010/10/android-market-license-validation.html

https://pastebin.com/cFddguZX

http://www.androidlab.it/il-sistema-di-licenza-del-market-android-cose-e-come-rafforzarlo-4800/

https://bhumishgajjar.wordpress.com/2017/12/16/bypass-root-detection-in-android-by-modifying-the-apk/

https://ibotpeaches.github.io/Apktool/

https://julianberton.com/2015/01/30/root-detection-bypass/

http://nanoloop.site44.com/

https://blog.netspi.com/four-ways-bypass-android-ssl-verification-certificate-pinning/

https://stackoverflow.com/questions/13445598/lucky-patcher-how-can-i-protect-from-it

https://android-developers.googleblog.com/2010/09/securing-android-lvl-applications.html

https://www.androidpolice.com/2010/08/23/exclusive-report-googles-android-market-license-verification-easily-circumvented-will-not-stop-pirates/

http://www.necronet.info/2011/12/hacking-android-lvl-cracking.html



</BR>

<!-- Banner -->
<div align="center">
<a href="https://www.purevpn.com/order-now.php?aff=44922&amp;a_bid=bbd0f893" target="_blank" ><img src="https://affiliates.purevpn.com/accounts/default1/6hb82wqa2l/bbd0f893.jpg" alt="Best VPN" title="Best VPN" width="728" height="90" /></a>
</BR></BR>
</div>





