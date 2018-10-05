.class public Lcom/google/android/vending/licensing/APKExpansionPolicy;
.super Ljava/lang/Object;
.source "APKExpansionPolicy.java"

# interfaces
.implements Lcom/google/android/vending/licensing/Policy;


# static fields
.field private static final DEFAULT_MAX_RETRIES:Ljava/lang/String; = "0"

.field private static final DEFAULT_RETRY_COUNT:Ljava/lang/String; = "0"

.field private static final DEFAULT_RETRY_UNTIL:Ljava/lang/String; = "0"

.field private static final DEFAULT_VALIDITY_TIMESTAMP:Ljava/lang/String; = "0"

.field public static final MAIN_FILE_URL_INDEX:I = 0x0

.field private static final MILLIS_PER_MINUTE:J = 0xea60L

.field public static final PATCH_FILE_URL_INDEX:I = 0x1

.field private static final PREFS_FILE:Ljava/lang/String; = "com.android.vending.licensing.APKExpansionPolicy"

.field private static final PREF_LAST_RESPONSE:Ljava/lang/String; = "lastResponse"

.field private static final PREF_MAX_RETRIES:Ljava/lang/String; = "maxRetries"

.field private static final PREF_RETRY_COUNT:Ljava/lang/String; = "retryCount"

.field private static final PREF_RETRY_UNTIL:Ljava/lang/String; = "retryUntil"

.field private static final PREF_VALIDITY_TIMESTAMP:Ljava/lang/String; = "validityTimestamp"

.field private static final TAG:Ljava/lang/String; = "APKExpansionPolicy"


# instance fields
.field private mExpansionFileNames:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExpansionFileSizes:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mExpansionURLs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastResponse:I

.field private mLastResponseTime:J

.field private mMaxRetries:J

.field private mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

.field private mRetryCount:J

.field private mRetryUntil:J

.field private mValidityTimestamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Obfuscator;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "obfuscator"    # Lcom/google/android/vending/licensing/Obfuscator;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLastResponseTime:J

    .line 72
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    .line 73
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileNames:Ljava/util/Vector;

    .line 74
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileSizes:Ljava/util/Vector;

    .line 90
    const-string v1, "com.android.vending.licensing.APKExpansionPolicy"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Lcom/google/android/vending/licensing/PreferenceObfuscator;

    invoke-direct {v1, v0, p2}, Lcom/google/android/vending/licensing/PreferenceObfuscator;-><init>(Landroid/content/SharedPreferences;Lcom/google/android/vending/licensing/Obfuscator;)V

    iput-object v1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    .line 92
    iget-object v1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v2, "lastResponse"

    const/16 v3, 0x123

    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLastResponse:I

    .line 94
    iget-object v1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v2, "validityTimestamp"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mValidityTimestamp:J

    .line 96
    iget-object v1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v2, "retryUntil"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryUntil:J

    .line 97
    iget-object v1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v2, "maxRetries"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mMaxRetries:J

    .line 98
    iget-object v1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v2, "retryCount"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryCount:J

    .line 99
    return-void
.end method

.method private decodeExtras(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p1, "extras"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 381
    .local v6, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v5, Ljava/net/URI;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 382
    .local v5, "rawExtras":Ljava/net/URI;
    const-string v7, "UTF-8"

    invoke-static {v5, v7}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 383
    .local v1, "extraList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/NameValuePair;

    .line 384
    .local v3, "item":Lorg/apache/http/NameValuePair;
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    .line 385
    .local v4, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 386
    .local v2, "i":I
    :goto_1
    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 387
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 389
    :cond_0
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 391
    .end local v1    # "extraList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v2    # "i":I
    .end local v3    # "item":Lorg/apache/http/NameValuePair;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "rawExtras":Ljava/net/URI;
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/net/URISyntaxException;
    const-string v7, "APKExpansionPolicy"

    const-string v8, "Invalid syntax error while decoding extras data from server."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :cond_1
    return-object v6
.end method

.method private setLastResponse(I)V
    .locals 3
    .param p1, "l"    # I

    .prologue
    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLastResponseTime:J

    .line 183
    iput p1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLastResponse:I

    .line 184
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v1, "lastResponse"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method private setMaxRetries(Ljava/lang/String;)V
    .locals 4
    .param p1, "maxRetries"    # Ljava/lang/String;

    .prologue
    .line 264
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 272
    .local v1, "lMaxRetries":Ljava/lang/Long;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mMaxRetries:J

    .line 273
    iget-object v2, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v3, "maxRetries"

    invoke-virtual {v2, v3, p1}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-void

    .line 265
    .end local v1    # "lMaxRetries":Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "APKExpansionPolicy"

    const-string v3, "Licence retry count (GR) missing, grace period disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const-string p1, "0"

    .line 269
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .restart local v1    # "lMaxRetries":Ljava/lang/Long;
    goto :goto_0
.end method

.method private setRetryCount(J)V
    .locals 3
    .param p1, "c"    # J

    .prologue
    .line 194
    iput-wide p1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryCount:J

    .line 195
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v1, "retryCount"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method private setRetryUntil(Ljava/lang/String;)V
    .locals 4
    .param p1, "retryUntil"    # Ljava/lang/String;

    .prologue
    .line 238
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 246
    .local v1, "lRetryUntil":Ljava/lang/Long;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryUntil:J

    .line 247
    iget-object v2, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v3, "retryUntil"

    invoke-virtual {v2, v3, p1}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void

    .line 239
    .end local v1    # "lRetryUntil":Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "APKExpansionPolicy"

    const-string v3, "License retry timestamp (GT) missing, grace period disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string p1, "0"

    .line 243
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .restart local v1    # "lRetryUntil":Ljava/lang/Long;
    goto :goto_0
.end method

.method private setValidityTimestamp(Ljava/lang/String;)V
    .locals 6
    .param p1, "validityTimestamp"    # Ljava/lang/String;

    .prologue
    .line 212
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 220
    .local v1, "lValidityTimestamp":Ljava/lang/Long;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mValidityTimestamp:J

    .line 221
    iget-object v2, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v3, "validityTimestamp"

    invoke-virtual {v2, v3, p1}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void

    .line 213
    .end local v1    # "lValidityTimestamp":Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "APKExpansionPolicy"

    const-string v3, "License validity timestamp (VT) missing, caching for a minute"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 217
    .restart local v1    # "lValidityTimestamp":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public allowAccess()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x1

    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 361
    .local v0, "ts":J
    iget v4, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLastResponse:I

    const/16 v5, 0x100

    if-ne v4, v5, :cond_1

    .line 364
    iget-wide v4, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mValidityTimestamp:J

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    move v2, v3

    .line 375
    :cond_0
    :goto_0
    return v2

    .line 368
    :cond_1
    iget v4, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLastResponse:I

    const/16 v5, 0x123

    if-ne v4, v5, :cond_0

    iget-wide v4, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLastResponseTime:J

    const-wide/32 v6, 0xea60

    add-long/2addr v4, v6

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 373
    iget-wide v4, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryUntil:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    iget-wide v4, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryCount:J

    iget-wide v6, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mMaxRetries:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public getExpansionFileName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileNames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileNames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 327
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExpansionFileSize(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 338
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileSizes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileSizes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 341
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getExpansionURL(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 304
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExpansionURLCount()I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getMaxRetries()J
    .locals 2

    .prologue
    .line 277
    iget-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mMaxRetries:J

    return-wide v0
.end method

.method public getRetryCount()J
    .locals 2

    .prologue
    .line 199
    iget-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryCount:J

    return-wide v0
.end method

.method public getRetryUntil()J
    .locals 2

    .prologue
    .line 251
    iget-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryUntil:J

    return-wide v0
.end method

.method public getValidityTimestamp()J
    .locals 2

    .prologue
    .line 225
    iget-wide v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mValidityTimestamp:J

    return-wide v0
.end method

.method public processServerResponse(ILcom/google/android/vending/licensing/ResponseData;)V
    .locals 8
    .param p1, "response"    # I
    .param p2, "rawData"    # Lcom/google/android/vending/licensing/ResponseData;

    .prologue
    .line 133
    const/16 v4, 0x123

    if-eq p1, v4, :cond_1

    .line 134
    const-wide/16 v4, 0x0

    invoke-direct {p0, v4, v5}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setRetryCount(J)V

    .line 139
    :goto_0
    const/16 v4, 0x100

    if-ne p1, v4, :cond_7

    .line 141
    iget-object v4, p2, Lcom/google/android/vending/licensing/ResponseData;->extra:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->decodeExtras(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 142
    .local v0, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput p1, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mLastResponse:I

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    .line 144
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 145
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 146
    .local v2, "key":Ljava/lang/String;
    const-string v4, "VT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 147
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    goto :goto_1

    .line 136
    .end local v0    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    iget-wide v4, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mRetryCount:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-direct {p0, v4, v5}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setRetryCount(J)V

    goto :goto_0

    .line 148
    .restart local v0    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    const-string v4, "GT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 149
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setRetryUntil(Ljava/lang/String;)V

    goto :goto_1

    .line 150
    :cond_3
    const-string v4, "GR"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 151
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setMaxRetries(Ljava/lang/String;)V

    goto :goto_1

    .line 152
    :cond_4
    const-string v4, "FILE_URL"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 153
    const-string v4, "FILE_URL"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 154
    .local v1, "index":I
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setExpansionURL(ILjava/lang/String;)V

    goto :goto_1

    .line 155
    .end local v1    # "index":I
    :cond_5
    const-string v4, "FILE_NAME"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 156
    const-string v4, "FILE_NAME"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 157
    .restart local v1    # "index":I
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setExpansionFileName(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 158
    .end local v1    # "index":I
    :cond_6
    const-string v4, "FILE_SIZE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 159
    const-string v4, "FILE_SIZE"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 160
    .restart local v1    # "index":I
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p0, v1, v6, v7}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setExpansionFileSize(IJ)V

    goto/16 :goto_1

    .line 163
    .end local v0    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "index":I
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    const/16 v4, 0x231

    if-ne p1, v4, :cond_8

    .line 165
    const-string v4, "0"

    invoke-direct {p0, v4}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    .line 166
    const-string v4, "0"

    invoke-direct {p0, v4}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setRetryUntil(Ljava/lang/String;)V

    .line 167
    const-string v4, "0"

    invoke-direct {p0, v4}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setMaxRetries(Ljava/lang/String;)V

    .line 170
    :cond_8
    invoke-direct {p0, p1}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setLastResponse(I)V

    .line 171
    iget-object v4, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    invoke-virtual {v4}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->commit()V

    .line 172
    return-void
.end method

.method public resetPolicy()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    const-string v1, "lastResponse"

    const/16 v2, 0x123

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setRetryUntil(Ljava/lang/String;)V

    .line 108
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setMaxRetries(Ljava/lang/String;)V

    .line 109
    const-string v0, "0"

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setRetryCount(J)V

    .line 110
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/APKExpansionPolicy;->setValidityTimestamp(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mPreferences:Lcom/google/android/vending/licensing/PreferenceObfuscator;

    invoke-virtual {v0}, Lcom/google/android/vending/licensing/PreferenceObfuscator;->commit()V

    .line 112
    return-void
.end method

.method public setExpansionFileName(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileNames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileNames:Ljava/util/Vector;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileNames:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 335
    return-void
.end method

.method public setExpansionFileSize(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "size"    # J

    .prologue
    .line 345
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileSizes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileSizes:Ljava/util/Vector;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionFileSizes:Ljava/util/Vector;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 349
    return-void
.end method

.method public setExpansionURL(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "URL"    # Ljava/lang/String;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/google/android/vending/licensing/APKExpansionPolicy;->mExpansionURLs:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 321
    return-void
.end method
