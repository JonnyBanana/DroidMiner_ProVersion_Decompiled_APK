.class public Lcom/google/android/vending/licensing/LicenseChecker;
.super Ljava/lang/Object;
.source "LicenseChecker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;
    }
.end annotation


# static fields
.field private static final DEBUG_LICENSE_ERROR:Z = false

.field private static final KEY_FACTORY_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final RANDOM:Ljava/security/SecureRandom;

.field private static final TAG:Ljava/lang/String; = "LicenseChecker"

.field private static final TIMEOUT_MS:I = 0x2710


# instance fields
.field private final mChecksInProgress:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/vending/licensing/LicenseValidator;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mPackageName:Ljava/lang/String;

.field private final mPendingChecks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/vending/licensing/LicenseValidator;",
            ">;"
        }
    .end annotation
.end field

.field private final mPolicy:Lcom/google/android/vending/licensing/Policy;

.field private mPublicKey:Ljava/security/PublicKey;

.field private mService:Lcom/google/android/vending/licensing/ILicensingService;

.field private final mVersionCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/android/vending/licensing/LicenseChecker;->RANDOM:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Policy;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "policy"    # Lcom/google/android/vending/licensing/Policy;
    .param p3, "encodedPublicKey"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mChecksInProgress:Ljava/util/Set;

    .line 81
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPendingChecks:Ljava/util/Queue;

    .line 90
    iput-object p1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    .line 92
    invoke-static {p3}, Lcom/google/android/vending/licensing/LicenseChecker;->generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPublicKey:Ljava/security/PublicKey;

    .line 93
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPackageName:Ljava/lang/String;

    .line 94
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/google/android/vending/licensing/LicenseChecker;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mVersionCode:Ljava/lang/String;

    .line 95
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "background thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 97
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mHandler:Landroid/os/Handler;

    .line 98
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/vending/licensing/LicenseChecker;Lcom/google/android/vending/licensing/LicenseValidator;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/vending/licensing/LicenseChecker;
    .param p1, "x1"    # Lcom/google/android/vending/licensing/LicenseValidator;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/vending/licensing/LicenseChecker;->handleServiceConnectionError(Lcom/google/android/vending/licensing/LicenseValidator;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/vending/licensing/LicenseChecker;Lcom/google/android/vending/licensing/LicenseValidator;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/android/vending/licensing/LicenseChecker;
    .param p1, "x1"    # Lcom/google/android/vending/licensing/LicenseValidator;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/vending/licensing/LicenseChecker;->finishCheck(Lcom/google/android/vending/licensing/LicenseValidator;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/vending/licensing/LicenseChecker;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/vending/licensing/LicenseChecker;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mChecksInProgress:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/vending/licensing/LicenseChecker;)Ljava/security/PublicKey;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/vending/licensing/LicenseChecker;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPublicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/vending/licensing/LicenseChecker;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/vending/licensing/LicenseChecker;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cleanupService()V
    .locals 3

    .prologue
    .line 308
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mService:Lcom/google/android/vending/licensing/ILicensingService;

    if-eqz v1, :cond_0

    .line 310
    :try_start_0
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mService:Lcom/google/android/vending/licensing/ILicensingService;

    .line 318
    :cond_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "LicenseChecker"

    const-string v2, "Unable to unbind from licensing service (already unbound)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized finishCheck(Lcom/google/android/vending/licensing/LicenseValidator;)V
    .locals 1
    .param p1, "validator"    # Lcom/google/android/vending/licensing/LicenseValidator;

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mChecksInProgress:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 194
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mChecksInProgress:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseChecker;->cleanupService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :cond_0
    monitor-exit p0

    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private generateNonce()I
    .locals 1

    .prologue
    .line 337
    sget-object v0, Lcom/google/android/vending/licensing/LicenseChecker;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    return v0
.end method

.method private static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 5
    .param p0, "encodedPublicKey"    # Ljava/lang/String;

    .prologue
    .line 109
    :try_start_0
    invoke-static {p0}, Lcom/google/android/vending/licensing/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 110
    .local v0, "decodedKey":[B
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 112
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/vending/licensing/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    return-object v3

    .line 113
    .end local v0    # "decodedKey":[B
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 116
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 117
    .local v1, "e":Lcom/google/android/vending/licensing/util/Base64DecoderException;
    const-string v3, "LicenseChecker"

    const-string v4, "Could not decode from Base64."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 119
    .end local v1    # "e":Lcom/google/android/vending/licensing/util/Base64DecoderException;
    :catch_2
    move-exception v1

    .line 120
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string v3, "LicenseChecker"

    const-string v4, "Invalid key specification."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static getVersionCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 349
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 353
    :goto_0
    return-object v1

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "LicenseChecker"

    const-string v2, "Package not found. could not get version code."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-string v1, ""

    goto :goto_0
.end method

.method private declared-synchronized handleServiceConnectionError(Lcom/google/android/vending/licensing/LicenseValidator;)V
    .locals 3
    .param p1, "validator"    # Lcom/google/android/vending/licensing/LicenseValidator;

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    const/16 v1, 0x123

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/vending/licensing/Policy;->processServerResponse(ILcom/google/android/vending/licensing/ResponseData;)V

    .line 297
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    invoke-interface {v0}, Lcom/google/android/vending/licensing/Policy;->allowAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p1}, Lcom/google/android/vending/licensing/LicenseValidator;->getCallback()Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    move-result-object v0

    const/16 v1, 0x123

    invoke-interface {v0, v1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->allow(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :goto_0
    monitor-exit p0

    return-void

    .line 300
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/vending/licensing/LicenseValidator;->getCallback()Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    move-result-object v0

    const/16 v1, 0x123

    invoke-interface {v0, v1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->dontAllow(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private runChecks()V
    .locals 7

    .prologue
    .line 178
    :goto_0
    iget-object v2, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPendingChecks:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/vending/licensing/LicenseValidator;

    .local v1, "validator":Lcom/google/android/vending/licensing/LicenseValidator;
    if-eqz v1, :cond_0

    .line 180
    :try_start_0
    const-string v2, "LicenseChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling checkLicense on service for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/vending/licensing/LicenseValidator;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v2, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mService:Lcom/google/android/vending/licensing/ILicensingService;

    .line 182
    invoke-virtual {v1}, Lcom/google/android/vending/licensing/LicenseValidator;->getNonce()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1}, Lcom/google/android/vending/licensing/LicenseValidator;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;

    invoke-direct {v6, p0, v1}, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;-><init>(Lcom/google/android/vending/licensing/LicenseChecker;Lcom/google/android/vending/licensing/LicenseValidator;)V

    .line 181
    invoke-interface {v2, v4, v5, v3, v6}, Lcom/google/android/vending/licensing/ILicensingService;->checkLicense(JLjava/lang/String;Lcom/google/android/vending/licensing/ILicenseResultListener;)V

    .line 184
    iget-object v2, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mChecksInProgress:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LicenseChecker"

    const-string v3, "RemoteException in checkLicense call."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    invoke-direct {p0, v1}, Lcom/google/android/vending/licensing/LicenseChecker;->handleServiceConnectionError(Lcom/google/android/vending/licensing/LicenseValidator;)V

    goto :goto_0

    .line 190
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized checkAccess(Lcom/google/android/vending/licensing/LicenseCheckerCallback;)V
    .locals 9
    .param p1, "callback"    # Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    invoke-interface {v1}, Lcom/google/android/vending/licensing/Policy;->allowAccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const-string v1, "LicenseChecker"

    const-string v2, "Using cached license response"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/16 v1, 0x100

    invoke-interface {p1, v1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->allow(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :goto_0
    monitor-exit p0

    return-void

    .line 144
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/vending/licensing/LicenseValidator;

    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPolicy:Lcom/google/android/vending/licensing/Policy;

    new-instance v2, Lcom/google/android/vending/licensing/NullDeviceLimiter;

    invoke-direct {v2}, Lcom/google/android/vending/licensing/NullDeviceLimiter;-><init>()V

    .line 145
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseChecker;->generateNonce()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mVersionCode:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/vending/licensing/LicenseValidator;-><init>(Lcom/google/android/vending/licensing/Policy;Lcom/google/android/vending/licensing/DeviceLimiter;Lcom/google/android/vending/licensing/LicenseCheckerCallback;ILjava/lang/String;Ljava/lang/String;)V

    .line 147
    .local v0, "validator":Lcom/google/android/vending/licensing/LicenseValidator;
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mService:Lcom/google/android/vending/licensing/ILicensingService;

    if-nez v1, :cond_2

    .line 148
    const-string v1, "LicenseChecker"

    const-string v2, "Binding to licensing service."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :try_start_2
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    new-instance v3, Ljava/lang/String;

    const-string v4, "Y29tLmFuZHJvaWQudmVuZGluZy5saWNlbnNpbmcuSUxpY2Vuc2luZ1NlcnZpY2U="

    .line 154
    invoke-static {v4}, Lcom/google/android/vending/licensing/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 151
    invoke-virtual {v1, v2, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v7

    .line 158
    .local v7, "bindResult":Z
    if-eqz v7, :cond_1

    .line 159
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPendingChecks:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/vending/licensing/util/Base64DecoderException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 164
    .end local v7    # "bindResult":Z
    :catch_0
    move-exception v8

    .line 165
    .local v8, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x6

    :try_start_3
    invoke-interface {p1, v1}, Lcom/google/android/vending/licensing/LicenseCheckerCallback;->applicationError(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 140
    .end local v0    # "validator":Lcom/google/android/vending/licensing/LicenseValidator;
    .end local v8    # "e":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 161
    .restart local v0    # "validator":Lcom/google/android/vending/licensing/LicenseValidator;
    .restart local v7    # "bindResult":Z
    :cond_1
    :try_start_4
    const-string v1, "LicenseChecker"

    const-string v2, "Could not bind to service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {p0, v0}, Lcom/google/android/vending/licensing/LicenseChecker;->handleServiceConnectionError(Lcom/google/android/vending/licensing/LicenseValidator;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/android/vending/licensing/util/Base64DecoderException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 166
    .end local v7    # "bindResult":Z
    :catch_1
    move-exception v8

    .line 167
    .local v8, "e":Lcom/google/android/vending/licensing/util/Base64DecoderException;
    :try_start_5
    invoke-virtual {v8}, Lcom/google/android/vending/licensing/util/Base64DecoderException;->printStackTrace()V

    goto :goto_0

    .line 170
    .end local v8    # "e":Lcom/google/android/vending/licensing/util/Base64DecoderException;
    :cond_2
    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mPendingChecks:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 171
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseChecker;->runChecks()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized onDestroy()V
    .locals 1

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseChecker;->cleanupService()V

    .line 330
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    monitor-exit p0

    return-void

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 278
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/google/android/vending/licensing/ILicensingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/vending/licensing/ILicensingService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mService:Lcom/google/android/vending/licensing/ILicensingService;

    .line 279
    invoke-direct {p0}, Lcom/google/android/vending/licensing/LicenseChecker;->runChecks()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit p0

    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    const-string v0, "LicenseChecker"

    const-string v1, "Service unexpectedly disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker;->mService:Lcom/google/android/vending/licensing/ILicensingService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    monitor-exit p0

    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
