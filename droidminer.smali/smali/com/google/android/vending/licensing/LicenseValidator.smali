.class Lcom/google/android/vending/licensing/LicenseValidator;
.super Ljava/lang/Object;
.source "LicenseValidator.java"


# static fields
.field private static final ERROR_CONTACTING_SERVER:I = 0x101

.field private static final ERROR_INVALID_PACKAGE_NAME:I = 0x102

.field private static final ERROR_NON_MATCHING_UID:I = 0x103

.field private static final ERROR_NOT_MARKET_MANAGED:I = 0x3

.field private static final ERROR_OVER_QUOTA:I = 0x5

.field private static final ERROR_SERVER_FAILURE:I = 0x4

.field private static final LICENSED:I = 0x0

.field private static final LICENSED_OLD_KEY:I = 0x2

.field private static final NOT_LICENSED:I = 0x1

.field private static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA1withRSA"

.field private static final TAG:Ljava/lang/String; = "LicenseValidator"


# instance fields
.field private final mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

.field private final mDeviceLimiter:Lcom/google/android/vending/licensing/DeviceLimiter;

.field private final mNonce:I

.field private final mPackageName:Ljava/lang/String;

.field private final mPolicy:Lcom/google/android/vending/licensing/Policy;

.field private final mVersionCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/vending/licensing/Policy;Lcom/google/android/vending/licensing/DeviceLimiter;Lcom/google/android/vending/licensing/LicenseCheckerCallback;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "policy"    # Lcom/google/android/vending/licensing/Policy;
    .param p2, "deviceLimiter"    # Lcom/google/android/vending/licensing/DeviceLimiter;
    .param p3, "callback"    # Lcom/google/android/vending/licensing/LicenseCheckerCallback;
    .param p4, "nonce"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "versionCode"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    .line 60
    iput-object p2, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mDeviceLimiter:Lcom/google/android/vending/licensing/DeviceLimiter;

    .line 61
    iput-object p3, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    .line 62
    iput p4, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mNonce:I

    .line 63
    iput-object p5, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPackageName:Ljava/lang/String;

    .line 64
    iput-object p6, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mVersionCode:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private handleApplicationError(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    invoke-interface {v0, p1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->applicationError(I)V

    .line 219
    return-void
.end method

.method private handleInvalidResponse()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    const/16 v1, 0x231

    invoke-interface {v0, v1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->dontAllow(I)V

    .line 223
    return-void
.end method

.method private handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V
    .locals 1
    .param p1, "response"    # I
    .param p2, "rawData"    # Lcom/google/android/vending/licensing/ResponseData;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    invoke-interface {v0, p1, p2}, Lcom/google/android/vending/licensing/Policy;->processServerResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    .line 210
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    invoke-interface {v0}, Lcom/google/android/vending/licensing/Policy;->allowAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    invoke-interface {v0, p1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->allow(I)V

    .line 215
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    invoke-interface {v0, p1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->dontAllow(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCallback()Lcom/google/android/vending/licensing/LicenseCheckerCallback;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    return-object v0
.end method

.method public getNonce()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mNonce:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;ILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "responseCode"    # I
    .param p3, "signedData"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/16 v7, 0x123

    .line 90
    const/4 v4, 0x0

    .line 92
    .local v4, "userId":Ljava/lang/String;
    const/4 v0, 0x0

    .line 93
    .local v0, "data":Lcom/google/android/vending/licensing/ResponseData;
    if-eqz p2, :cond_0

    if-eq p2, v8, :cond_0

    if-ne p2, v9, :cond_6

    .line 97
    :cond_0
    :try_start_0
    const-string v5, "SHA1withRSA"

    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    .line 98
    .local v3, "sig":Ljava/security/Signature;
    invoke-virtual {v3, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 99
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/Signature;->update([B)V

    .line 101
    invoke-static {p4}, Lcom/google/android/vending/licensing/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/Signature;->verify([B)Z

    move-result v5

    if-nez v5, :cond_1

    .line 102
    const-string v5, "LicenseValidator"

    const-string v6, "Signature verification failed."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/vending/licensing/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_3

    .line 196
    .end local v3    # "sig":Ljava/security/Signature;
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 109
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 110
    .local v1, "e":Ljava/security/InvalidKeyException;
    const/4 v5, 0x5

    invoke-direct {p0, v5}, Lcom/google/android/vending/licensing/LicenseValidator;->handleApplicationError(I)V

    goto :goto_0

    .line 112
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v1

    .line 113
    .local v1, "e":Ljava/security/SignatureException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 114
    .end local v1    # "e":Ljava/security/SignatureException;
    :catch_3
    move-exception v1

    .line 115
    .local v1, "e":Lcom/google/android/vending/licensing/util/Base64DecoderException;
    const-string v5, "LicenseValidator"

    const-string v6, "Could not Base64-decode signature."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    goto :goto_0

    .line 122
    .end local v1    # "e":Lcom/google/android/vending/licensing/util/Base64DecoderException;
    .restart local v3    # "sig":Ljava/security/Signature;
    :cond_1
    :try_start_1
    invoke-static {p3}, Lcom/google/android/vending/licensing/ResponseData;->parse(Ljava/lang/String;)Lcom/google/android/vending/licensing/ResponseData;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    .line 129
    iget v5, v0, Lcom/google/android/vending/licensing/ResponseData;->responseCode:I

    if-eq v5, p2, :cond_2

    .line 130
    const-string v5, "LicenseValidator"

    const-string v6, "Response codes don\'t match."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    goto :goto_0

    .line 123
    :catch_4
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "LicenseValidator"

    const-string v6, "Could not parse response."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    goto :goto_0

    .line 135
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    iget v5, v0, Lcom/google/android/vending/licensing/ResponseData;->nonce:I

    iget v6, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mNonce:I

    if-eq v5, v6, :cond_3

    .line 136
    const-string v5, "LicenseValidator"

    const-string v6, "Nonce doesn\'t match."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    goto :goto_0

    .line 141
    :cond_3
    iget-object v5, v0, Lcom/google/android/vending/licensing/ResponseData;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 142
    const-string v5, "LicenseValidator"

    const-string v6, "Package name doesn\'t match."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    goto :goto_0

    .line 147
    :cond_4
    iget-object v5, v0, Lcom/google/android/vending/licensing/ResponseData;->versionCode:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mVersionCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 148
    const-string v5, "LicenseValidator"

    const-string v6, "Version codes don\'t match."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    goto :goto_0

    .line 154
    :cond_5
    iget-object v4, v0, Lcom/google/android/vending/licensing/ResponseData;->userId:Ljava/lang/String;

    .line 155
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 156
    const-string v5, "LicenseValidator"

    const-string v6, "User identifier is empty."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    goto/16 :goto_0

    .line 162
    .end local v3    # "sig":Ljava/security/Signature;
    :cond_6
    sparse-switch p2, :sswitch_data_0

    .line 193
    const-string v5, "LicenseValidator"

    const-string v6, "Unknown response code for license check."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleInvalidResponse()V

    goto/16 :goto_0

    .line 165
    :sswitch_0
    iget-object v5, p0, Lcom/google/android/vending/licensing/LicenseValidator;->mDeviceLimiter:Lcom/google/android/vending/licensing/DeviceLimiter;

    invoke-interface {v5, v4}, Lcom/google/android/vending/licensing/DeviceLimiter;->isDeviceAllowed(Ljava/lang/String;)I

    move-result v2

    .line 166
    .local v2, "limiterResponse":I
    invoke-direct {p0, v2, v0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    goto/16 :goto_0

    .line 169
    .end local v2    # "limiterResponse":I
    const/16 v5, 0x231

    invoke-direct {p0, v5, v0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    goto/16 :goto_0

    .line 172
    :sswitch_1
    const-string v5, "LicenseValidator"

    const-string v6, "Error contacting licensing server."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-direct {p0, v7, v0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    goto/16 :goto_0

    .line 176
    :sswitch_2
    const-string v5, "LicenseValidator"

    const-string v6, "An error has occurred on the licensing server."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0, v7, v0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    goto/16 :goto_0

    .line 180
    :sswitch_3
    const-string v5, "LicenseValidator"

    const-string v6, "Licensing server is refusing to talk to this device, over quota."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-direct {p0, v7, v0}, Lcom/google/android/vending/licensing/LicenseValidator;->handleResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    goto/16 :goto_0

    .line 184
    :sswitch_4
    invoke-direct {p0, v8}, Lcom/google/android/vending/licensing/LicenseValidator;->handleApplicationError(I)V

    goto/16 :goto_0

    .line 187
    :sswitch_5
    invoke-direct {p0, v9}, Lcom/google/android/vending/licensing/LicenseValidator;->handleApplicationError(I)V

    goto/16 :goto_0

    .line 190
    :sswitch_6
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lcom/google/android/vending/licensing/LicenseValidator;->handleApplicationError(I)V

    goto/16 :goto_0

    .line 162
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_6
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x101 -> :sswitch_1
        0x102 -> :sswitch_4
        0x103 -> :sswitch_5
    .end sparse-switch
.end method
