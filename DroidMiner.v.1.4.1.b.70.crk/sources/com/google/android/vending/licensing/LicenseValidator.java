package com.google.android.vending.licensing;

class LicenseValidator {
    private static final int ERROR_CONTACTING_SERVER = 257;
    private static final int ERROR_INVALID_PACKAGE_NAME = 258;
    private static final int ERROR_NON_MATCHING_UID = 259;
    private static final int ERROR_NOT_MARKET_MANAGED = 3;
    private static final int ERROR_OVER_QUOTA = 5;
    private static final int ERROR_SERVER_FAILURE = 4;
    private static final int LICENSED = 0;
    private static final int LICENSED_OLD_KEY = 2;
    private static final int NOT_LICENSED = 1;
    private static final String SIGNATURE_ALGORITHM = "SHA1withRSA";
    private static final String TAG = "LicenseValidator";
    private final LicenseCheckerCallback mCallback;
    private final DeviceLimiter mDeviceLimiter;
    private final int mNonce;
    private final String mPackageName;
    private final Policy mPolicy;
    private final String mVersionCode;

    public void verify(java.security.PublicKey r11, int r12, java.lang.String r13, java.lang.String r14) {
        /* JADX: method processing error */
/*
Error: jadx.core.utils.exceptions.JadxRuntimeException: Can't find immediate dominator for block B:41:0x00d9 in {3, 7, 8, 11, 13, 16, 18, 23, 25, 28, 31, 34, 37, 39, 40, 42, 43, 44, 45, 46, 47} preds:[]
	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.computeDominators(BlockProcessor.java:129)
	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.processBlocksTree(BlockProcessor.java:48)
	at jadx.core.dex.visitors.blocksmaker.BlockProcessor.visit(BlockProcessor.java:38)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/391618063.run(Unknown Source)
*/
        /*
        r10 = this;
        r9 = 2;
        r8 = 1;
        r7 = 291; // 0x123 float:4.08E-43 double:1.44E-321;
        r4 = 0;
        r0 = 0;
        if (r12 == 0) goto L_0x000c;
    L_0x0008:
        if (r12 == r8) goto L_0x000c;
    L_0x000a:
        if (r12 != r9) goto L_0x00bf;
    L_0x000c:
        r5 = "SHA1withRSA";	 Catch:{ NoSuchAlgorithmException -> 0x0031, InvalidKeyException -> 0x0038, SignatureException -> 0x003e, Base64DecoderException -> 0x0045 }
        r3 = java.security.Signature.getInstance(r5);	 Catch:{ NoSuchAlgorithmException -> 0x0031, InvalidKeyException -> 0x0038, SignatureException -> 0x003e, Base64DecoderException -> 0x0045 }
        r3.initVerify(r11);	 Catch:{ NoSuchAlgorithmException -> 0x0031, InvalidKeyException -> 0x0038, SignatureException -> 0x003e, Base64DecoderException -> 0x0045 }
        r5 = r13.getBytes();	 Catch:{ NoSuchAlgorithmException -> 0x0031, InvalidKeyException -> 0x0038, SignatureException -> 0x003e, Base64DecoderException -> 0x0045 }
        r3.update(r5);	 Catch:{ NoSuchAlgorithmException -> 0x0031, InvalidKeyException -> 0x0038, SignatureException -> 0x003e, Base64DecoderException -> 0x0045 }
        r5 = com.google.android.vending.licensing.util.Base64.decode(r14);	 Catch:{ NoSuchAlgorithmException -> 0x0031, InvalidKeyException -> 0x0038, SignatureException -> 0x003e, Base64DecoderException -> 0x0045 }
        r5 = r3.verify(r5);	 Catch:{ NoSuchAlgorithmException -> 0x0031, InvalidKeyException -> 0x0038, SignatureException -> 0x003e, Base64DecoderException -> 0x0045 }
        if (r5 != 0) goto L_0x0051;	 Catch:{ NoSuchAlgorithmException -> 0x0031, InvalidKeyException -> 0x0038, SignatureException -> 0x003e, Base64DecoderException -> 0x0045 }
    L_0x0026:
        r5 = "LicenseValidator";	 Catch:{ NoSuchAlgorithmException -> 0x0031, InvalidKeyException -> 0x0038, SignatureException -> 0x003e, Base64DecoderException -> 0x0045 }
        r6 = "Signature verification failed.";	 Catch:{ NoSuchAlgorithmException -> 0x0031, InvalidKeyException -> 0x0038, SignatureException -> 0x003e, Base64DecoderException -> 0x0045 }
        android.util.Log.e(r5, r6);	 Catch:{ NoSuchAlgorithmException -> 0x0031, InvalidKeyException -> 0x0038, SignatureException -> 0x003e, Base64DecoderException -> 0x0045 }
        r10.handleInvalidResponse();	 Catch:{ NoSuchAlgorithmException -> 0x0031, InvalidKeyException -> 0x0038, SignatureException -> 0x003e, Base64DecoderException -> 0x0045 }
    L_0x0030:
        return;
    L_0x0031:
        r1 = move-exception;
        r5 = new java.lang.RuntimeException;
        r5.<init>(r1);
        throw r5;
    L_0x0038:
        r1 = move-exception;
        r5 = 5;
        r10.handleApplicationError(r5);
        goto L_0x0030;
    L_0x003e:
        r1 = move-exception;
        r5 = new java.lang.RuntimeException;
        r5.<init>(r1);
        throw r5;
    L_0x0045:
        r1 = move-exception;
        r5 = "LicenseValidator";
        r6 = "Could not Base64-decode signature.";
        android.util.Log.e(r5, r6);
        r10.handleInvalidResponse();
        goto L_0x0030;
    L_0x0051:
        r0 = com.google.android.vending.licensing.ResponseData.parse(r13);	 Catch:{ IllegalArgumentException -> 0x0064 }
        r5 = r0.responseCode;
        if (r5 == r12) goto L_0x0070;
    L_0x0059:
        r5 = "LicenseValidator";
        r6 = "Response codes don't match.";
        android.util.Log.e(r5, r6);
        r10.handleInvalidResponse();
        goto L_0x0030;
    L_0x0064:
        r1 = move-exception;
        r5 = "LicenseValidator";
        r6 = "Could not parse response.";
        android.util.Log.e(r5, r6);
        r10.handleInvalidResponse();
        goto L_0x0030;
    L_0x0070:
        r5 = r0.nonce;
        r6 = r10.mNonce;
        if (r5 == r6) goto L_0x0081;
    L_0x0076:
        r5 = "LicenseValidator";
        r6 = "Nonce doesn't match.";
        android.util.Log.e(r5, r6);
        r10.handleInvalidResponse();
        goto L_0x0030;
    L_0x0081:
        r5 = r0.packageName;
        r6 = r10.mPackageName;
        r5 = r5.equals(r6);
        if (r5 != 0) goto L_0x0096;
    L_0x008b:
        r5 = "LicenseValidator";
        r6 = "Package name doesn't match.";
        android.util.Log.e(r5, r6);
        r10.handleInvalidResponse();
        goto L_0x0030;
    L_0x0096:
        r5 = r0.versionCode;
        r6 = r10.mVersionCode;
        r5 = r5.equals(r6);
        if (r5 != 0) goto L_0x00ab;
    L_0x00a0:
        r5 = "LicenseValidator";
        r6 = "Version codes don't match.";
        android.util.Log.e(r5, r6);
        r10.handleInvalidResponse();
        goto L_0x0030;
    L_0x00ab:
        r4 = r0.userId;
        r5 = android.text.TextUtils.isEmpty(r4);
        if (r5 == 0) goto L_0x00bf;
    L_0x00b3:
        r5 = "LicenseValidator";
        r6 = "User identifier is empty.";
        android.util.Log.e(r5, r6);
        r10.handleInvalidResponse();
        goto L_0x0030;
    L_0x00bf:
        switch(r12) {
            case 0: goto L_0x00ce;
            case 1: goto L_0x00ce;
            case 2: goto L_0x00ce;
            case 3: goto L_0x010e;
            case 4: goto L_0x00ec;
            case 5: goto L_0x00f8;
            case 257: goto L_0x00e0;
            case 258: goto L_0x0104;
            case 259: goto L_0x0109;
            default: goto L_0x00c2;
        };
    L_0x00c2:
        r5 = "LicenseValidator";
        r6 = "Unknown response code for license check.";
        android.util.Log.e(r5, r6);
        r10.handleInvalidResponse();
        goto L_0x0030;
    L_0x00ce:
        r5 = r10.mDeviceLimiter;
        r2 = r5.isDeviceAllowed(r4);
        r10.handleResponse(r2, r0);
        goto L_0x0030;
        r5 = 561; // 0x231 float:7.86E-43 double:2.77E-321;
        r10.handleResponse(r5, r0);
        goto L_0x0030;
    L_0x00e0:
        r5 = "LicenseValidator";
        r6 = "Error contacting licensing server.";
        android.util.Log.w(r5, r6);
        r10.handleResponse(r7, r0);
        goto L_0x0030;
    L_0x00ec:
        r5 = "LicenseValidator";
        r6 = "An error has occurred on the licensing server.";
        android.util.Log.w(r5, r6);
        r10.handleResponse(r7, r0);
        goto L_0x0030;
    L_0x00f8:
        r5 = "LicenseValidator";
        r6 = "Licensing server is refusing to talk to this device, over quota.";
        android.util.Log.w(r5, r6);
        r10.handleResponse(r7, r0);
        goto L_0x0030;
    L_0x0104:
        r10.handleApplicationError(r8);
        goto L_0x0030;
    L_0x0109:
        r10.handleApplicationError(r9);
        goto L_0x0030;
    L_0x010e:
        r5 = 3;
        r10.handleApplicationError(r5);
        goto L_0x0030;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.vending.licensing.LicenseValidator.verify(java.security.PublicKey, int, java.lang.String, java.lang.String):void");
    }

    LicenseValidator(Policy policy, DeviceLimiter deviceLimiter, LicenseCheckerCallback callback, int nonce, String packageName, String versionCode) {
        this.mPolicy = policy;
        this.mDeviceLimiter = deviceLimiter;
        this.mCallback = callback;
        this.mNonce = nonce;
        this.mPackageName = packageName;
        this.mVersionCode = versionCode;
    }

    public LicenseCheckerCallback getCallback() {
        return this.mCallback;
    }

    public int getNonce() {
        return this.mNonce;
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    private void handleResponse(int response, ResponseData rawData) {
        this.mPolicy.processServerResponse(response, rawData);
        if (this.mPolicy.allowAccess()) {
            this.mCallback.allow(response);
        } else {
            this.mCallback.dontAllow(response);
        }
    }

    private void handleApplicationError(int code) {
        this.mCallback.applicationError(code);
    }

    private void handleInvalidResponse() {
        this.mCallback.dontAllow(Policy.NOT_LICENSED);
    }
}
