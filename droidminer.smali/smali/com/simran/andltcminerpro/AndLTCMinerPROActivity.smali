.class public Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;
.super Landroid/app/Activity;
.source "AndLTCMinerPROActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback;,
        Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;
    }
.end annotation


# static fields
.field public static final PREFS_NAME:Ljava/lang/String; = "Miner"

.field private static final SALT:[B

.field private static final TAG:Ljava/lang/String; = "DroidBTCManagerActivity"

.field private static final logDateFormat:Ljava/text/DateFormat;


# instance fields
.field public final BASE64_PUBLIC_KEY:Ljava/lang/String;

.field Cred:Landroid/widget/EditText;

.field CredText:Ljava/lang/String;

.field public final DEFAULT_TYPE:Ljava/lang/String;

.field private Minerd:Ljava/lang/String;

.field URL:Landroid/widget/EditText;

.field URLText:Ljava/lang/String;

.field public currentLine:Ljava/lang/String;

.field deviceId:Ljava/lang/String;

.field public downloaded:Z

.field ePassword:Landroid/widget/EditText;

.field eUser:Landroid/widget/EditText;

.field editor:Landroid/content/SharedPreferences$Editor;

.field finished:Z

.field hashrate:[D

.field mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

.field private mHandler:Landroid/os/Handler;

.field public final mId:I

.field private mLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

.field mNotificationManager:Landroid/app/NotificationManager;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field minerd:Ljava/lang/String;

.field minerdType:Ljava/lang/String;

.field note:Landroid/app/Notification;

.field public noteIsOn:Z

.field notebuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field p:Landroid/app/ProgressDialog;

.field port:Landroid/widget/EditText;

.field private process:Ljava/lang/Process;

.field rBitcoin:Landroid/widget/RadioButton;

.field rLitecoin:Landroid/widget/RadioButton;

.field resultIntent:Landroid/content/Intent;

.field runnable:Ljava/lang/Runnable;

.field scrypt:Z

.field settings:Landroid/content/SharedPreferences;

.field sminerdType:Landroid/widget/Spinner;

.field startMining:Landroid/widget/Button;

.field stopMining:Landroid/widget/Button;

.field str1:Ljava/lang/String;

.field thisActivity:Landroid/app/Activity;

.field threadList:Landroid/widget/Spinner;

.field totalHashrate:Ljava/math/BigDecimal;

.field typeMinerd:Ljava/lang/String;

.field v:Ljava/lang/Void;

.field wakelock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "[yyyy-MM-dd HH:mm:ss] "

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->logDateFormat:Ljava/text/DateFormat;

    .line 115
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->SALT:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x3t
        -0xet
        0xft
        -0x5ct
        -0x41t
        0x23t
        0x59t
        -0x4ft
        0x20t
        -0x26t
        0x2et
        0x1at
        -0x2bt
        -0x26t
        -0x22t
        0x71t
        0xbt
        -0x20t
        0x40t
        -0x59t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    const/16 v0, 0x13a

    iput v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->mId:I

    .line 90
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAogwSPUbiiafJmn6LEiqX2Cz++eJv47B6CWr7b2FPY1OTkCVj89XMJ0zkf4XlDFCVvWL66Vqg09OfjFVfHptaCS9y+gwAc6d4iWBdzkubixcKD76GhZ1GtClTZ0Cq1QdpCSpD5h5b3Srd9VaJqG130wOg15sXo278WPWjJRkEZP247eG0MjhKm0qtXBH75uxGdAjfALrtIvYh+CF2f27/kaeqzt8SR1tBjjZ5TZr1HqUSvDle2wzNpb9StMnlaNPjqGKxJ5JGcNhQdkbgUy8oK/XTCD0Q+wGi8xn12PgPq9QxUCt7IS0qlGBKroRclBSsYgvYNVxa4033orf1hNYv9QIDAQAB"

    iput-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->BASE64_PUBLIC_KEY:Ljava/lang/String;

    .line 92
    const-string v0, "ARM (default)"

    iput-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->DEFAULT_TYPE:Ljava/lang/String;

    .line 364
    new-instance v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$4;

    invoke-direct {v0, p0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$4;-><init>(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;)V

    iput-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->runnable:Ljava/lang/Runnable;

    .line 761
    return-void
.end method

.method static synthetic access$000(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;)Ljava/lang/Process;
    .locals 1
    .param p0, "x0"    # Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->process:Ljava/lang/Process;

    return-object v0
.end method

.method static synthetic access$002(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;Ljava/lang/Process;)Ljava/lang/Process;
    .locals 0
    .param p0, "x0"    # Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;
    .param p1, "x1"    # Ljava/lang/Process;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->process:Ljava/lang/Process;

    return-object p1
.end method

.method static synthetic access$100()Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->logDateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method static synthetic access$200(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->Minerd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method Download(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "URL"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 533
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 534
    .local v8, "url":Ljava/net/URL;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 537
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    .line 542
    .local v7, "ucon":Ljava/net/URLConnection;
    invoke-virtual {v7}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 543
    .local v6, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 548
    .local v1, "bis":Ljava/io/BufferedInputStream;
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v9, 0x32

    invoke-direct {v0, v9}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 549
    .local v0, "baf":Lorg/apache/http/util/ByteArrayBuffer;
    const/4 v2, 0x0

    .line 550
    .local v2, "current":I
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    const/4 v9, -0x1

    if-eq v2, v9, :cond_0

    .line 551
    int-to-byte v9, v2

    invoke-virtual {v0, v9}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 559
    .end local v0    # "baf":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v1    # "bis":Ljava/io/BufferedInputStream;
    .end local v2    # "current":I
    .end local v4    # "file":Ljava/io/File;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "ucon":Ljava/net/URLConnection;
    .end local v8    # "url":Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 560
    .local v3, "e":Ljava/io/IOException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->log(Ljava/lang/String;)V

    .line 562
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 555
    .restart local v0    # "baf":Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v1    # "bis":Ljava/io/BufferedInputStream;
    .restart local v2    # "current":I
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "ucon":Ljava/net/URLConnection;
    .restart local v8    # "url":Ljava/net/URL;
    :cond_0
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 556
    .local v5, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 557
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method Miner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "minerdType"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "auth"    # Ljava/lang/String;
    .param p4, "nThread"    # I

    .prologue
    .line 465
    const-string v0, "minerd"

    iput-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->Minerd:Ljava/lang/String;

    .line 466
    new-instance v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$7;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$7;-><init>(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;Ljava/lang/String;Ljava/lang/String;I)V

    .line 528
    invoke-virtual {v0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$7;->start()V

    .line 529
    return-void
.end method

.method appPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 236
    const/4 v3, 0x0

    .line 238
    .local v3, "s":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 239
    .local v1, "m":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 240
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 241
    .local v2, "p":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v1    # "m":Landroid/content/pm/PackageManager;
    .end local v2    # "p":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v3

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method checkMinerd(Ljava/lang/String;)Z
    .locals 11
    .param p1, "minerdType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 386
    const-string v6, "minerd"

    iput-object v6, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->Minerd:Ljava/lang/String;

    .line 389
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->appPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/%1$s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->Minerd:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 390
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 391
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->logDateFormat:Ljava/text/DateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%1$s is present."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->Minerd:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->log(Ljava/lang/String;)V

    .line 393
    iget-object v6, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->URLText:Ljava/lang/String;

    iget-object v7, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->CredText:Ljava/lang/String;

    iget-object v8, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->threadList:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v6, v7, v8}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->startMiner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v6, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->startMining:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 395
    iget-object v6, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->stopMining:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 397
    iget-object v6, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v7, "username"

    iget-object v8, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->eUser:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 398
    iget-object v6, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v7, "password"

    iget-object v8, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->ePassword:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 399
    iget-object v6, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v7, "url"

    iget-object v8, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->URL:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 400
    iget-object v6, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v7, "scrypt"

    iget-boolean v8, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->scrypt:Z

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 401
    iget-object v6, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 402
    invoke-virtual {p0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->showNote()V

    .line 459
    .end local v3    # "f":Ljava/io/File;
    :goto_0
    return v4

    .line 415
    .restart local v3    # "f":Ljava/io/File;
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->thisActivity:Landroid/app/Activity;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 417
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v4, "Yes"

    new-instance v6, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$5;

    invoke-direct {v6, p0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$5;-><init>(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;)V

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 428
    const-string v4, "No"

    new-instance v6, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$6;

    invoke-direct {v6, p0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$6;-><init>(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;)V

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 441
    const-string v4, "Miner not extracted. Extract miner?"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 444
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 445
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 456
    goto :goto_0

    .line 457
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    .end local v3    # "f":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 458
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->log(Ljava/lang/String;)V

    move v4, v5

    .line 459
    goto :goto_0
.end method

.method public disableUi()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 846
    iget-object v1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->URL:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 848
    iget-object v1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->eUser:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 849
    iget-object v1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->ePassword:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 850
    const v1, 0x7f070003

    invoke-virtual {p0, v1}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 851
    .local v0, "port":Landroid/widget/EditText;
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 852
    iget-object v1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->threadList:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 854
    return-void
.end method

.method public enableUi()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 857
    iget-object v1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->startMining:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 858
    iget-object v1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->stopMining:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 859
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->logDateFormat:Ljava/text/DateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Stopping miner..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->log(Ljava/lang/String;)V

    .line 860
    iget-object v1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x13a

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 861
    iput-boolean v5, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->noteIsOn:Z

    .line 862
    iget-object v1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->URL:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 864
    iget-object v1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->eUser:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 865
    iget-object v1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->ePassword:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 867
    iget-object v1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->threadList:Landroid/widget/Spinner;

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 868
    const v1, 0x7f070003

    invoke-virtual {p0, v1}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 869
    .local v0, "port":Landroid/widget/EditText;
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 870
    iget-object v1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->thisActivity:Landroid/app/Activity;

    new-instance v2, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$10;

    invoke-direct {v2, p0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$10;-><init>(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 875
    return-void
.end method

.method isOnline()Z
    .locals 3

    .prologue
    .line 350
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 351
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 352
    .local v1, "netInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    const/4 v2, 0x1

    .line 355
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method log(Ljava/lang/String;)V
    .locals 8
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 586
    if-nez p1, :cond_1

    move v4, v5

    :goto_0
    const-string v7, ""

    if-ne p1, v7, :cond_2

    move v7, v5

    :goto_1
    or-int/2addr v4, v7

    if-eqz v4, :cond_3

    .line 628
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v4, v6

    .line 586
    goto :goto_0

    :cond_2
    move v7, v6

    goto :goto_1

    .line 587
    :cond_3
    const-string v4, "DroidBtc.Log"

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    new-instance v4, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$8;

    invoke-direct {v4, p0, p1}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$8;-><init>(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 604
    iget-boolean v4, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->noteIsOn:Z

    if-ne v4, v5, :cond_4

    .line 607
    const-string v4, "khash/s"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 608
    invoke-virtual {p0, p1}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->parseHashrate(Ljava/lang/String;)D

    move-result-wide v2

    .line 609
    .local v2, "totalRate":D
    const-string v4, "%.2f"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, "asdf":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " khash/s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->str1:Ljava/lang/String;

    .line 611
    iget-object v4, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->thisActivity:Landroid/app/Activity;

    new-instance v5, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$9;

    invoke-direct {v5, p0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$9;-><init>(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 621
    .end local v0    # "asdf":Ljava/lang/String;
    .end local v2    # "totalRate":D
    :goto_3
    iget-object v4, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->notebuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->str1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 622
    .local v1, "notebuilder1":Landroid/support/v4/app/NotificationCompat$Builder;
    iget-object v4, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v5, 0x13a

    .line 624
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 622
    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 627
    .end local v1    # "notebuilder1":Landroid/support/v4/app/NotificationCompat$Builder;
    :cond_4
    const-string v4, "minerd --help"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Failed to start miner."

    invoke-virtual {p0, v4}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 619
    :cond_5
    iput-object p1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->str1:Ljava/lang/String;

    goto :goto_3
.end method

.method public main([Ljava/lang/String;)V
    .locals 8
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 568
    const/4 v3, 0x0

    .line 569
    .local v3, "url":Ljava/lang/String;
    const/4 v0, 0x0

    .line 570
    .local v0, "auth":Ljava/lang/String;
    const/4 v2, 0x1

    .line 571
    .local v2, "nThread":I
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->minerdType:Ljava/lang/String;

    .line 573
    array-length v4, p1

    if-lez v4, :cond_0

    const/4 v4, 0x0

    aget-object v3, p1, v4

    .line 574
    :cond_0
    array-length v4, p1

    if-le v4, v5, :cond_1

    aget-object v0, p1, v5

    .line 575
    :cond_1
    array-length v4, p1

    if-le v4, v6, :cond_2

    aget-object v4, p1, v6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 576
    :cond_2
    array-length v4, p1

    if-le v4, v7, :cond_3

    aget-object v4, p1, v7

    iput-object v4, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->minerdType:Ljava/lang/String;

    .line 579
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->minerdType:Ljava/lang/String;

    invoke-virtual {p0, v4, v3, v0, v2}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->Miner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :goto_0
    return-void

    .line 580
    :catch_0
    move-exception v1

    .line 581
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 164
    const/16 v9, 0x8

    new-array v9, v9, [D

    iput-object v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->hashrate:[D

    .line 165
    iget-object v10, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->hashrate:[D

    array-length v11, v10

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v11, :cond_0

    aget-wide v2, v10, v9

    .local v2, "b":D
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 168
    .end local v2    # "b":D
    :cond_0
    new-instance v9, Ljava/math/BigDecimal;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Ljava/math/BigDecimal;-><init>(I)V

    iput-object v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->totalHashrate:Ljava/math/BigDecimal;

    .line 169
    const v9, 0x7f070007

    invoke-virtual {p0, v9}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Spinner;

    iput-object v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->threadList:Landroid/widget/Spinner;

    .line 170
    invoke-virtual {p0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "android_id"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->deviceId:Ljava/lang/String;

    .line 171
    invoke-virtual {p0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "power"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 173
    .local v6, "pm":Landroid/os/PowerManager;
    const v9, 0x20000006

    const-string v10, "DroidBTCManagerActivity"

    invoke-virtual {v6, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    iput-object v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->wakelock:Landroid/os/PowerManager$WakeLock;

    .line 177
    iput-object p0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->thisActivity:Landroid/app/Activity;

    .line 178
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->mHandler:Landroid/os/Handler;

    .line 179
    const v9, 0x7f070004

    invoke-virtual {p0, v9}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->eUser:Landroid/widget/EditText;

    .line 180
    const v9, 0x7f070005

    invoke-virtual {p0, v9}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->ePassword:Landroid/widget/EditText;

    .line 181
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->v:Ljava/lang/Void;

    .line 182
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 183
    const/high16 v9, 0x7f030000

    invoke-virtual {p0, v9}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->setContentView(I)V

    .line 184
    const-string v9, ""

    iput-object v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->currentLine:Ljava/lang/String;

    .line 185
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->noteIsOn:Z

    .line 186
    const-string v9, "Miner"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->settings:Landroid/content/SharedPreferences;

    .line 187
    new-instance v9, Lcom/google/android/vending/licensing/LicenseChecker;

    new-instance v10, Lcom/google/android/vending/licensing/ServerManagedPolicy;

    new-instance v11, Lcom/google/android/vending/licensing/AESObfuscator;

    sget-object v12, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->SALT:[B

    .line 189
    invoke-virtual {p0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    iget-object v14, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->deviceId:Ljava/lang/String;

    invoke-direct {v11, v12, v13, v14}, Lcom/google/android/vending/licensing/AESObfuscator;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v10, p0, v11}, Lcom/google/android/vending/licensing/ServerManagedPolicy;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Obfuscator;)V

    const-string v11, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAogwSPUbiiafJmn6LEiqX2Cz++eJv47B6CWr7b2FPY1OTkCVj89XMJ0zkf4XlDFCVvWL66Vqg09OfjFVfHptaCS9y+gwAc6d4iWBdzkubixcKD76GhZ1GtClTZ0Cq1QdpCSpD5h5b3Srd9VaJqG130wOg15sXo278WPWjJRkEZP247eG0MjhKm0qtXBH75uxGdAjfALrtIvYh+CF2f27/kaeqzt8SR1tBjjZ5TZr1HqUSvDle2wzNpb9StMnlaNPjqGKxJ5JGcNhQdkbgUy8oK/XTCD0Q+wGi8xn12PgPq9QxUCt7IS0qlGBKroRclBSsYgvYNVxa4033orf1hNYv9QIDAQAB"

    invoke-direct {v9, p0, v10, v11}, Lcom/google/android/vending/licensing/LicenseChecker;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Policy;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    .line 192
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->setRequestedOrientation(I)V

    .line 195
    new-instance v9, Landroid/app/ProgressDialog;

    invoke-direct {v9, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 196
    iget-object v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v10, "Extracting miner..."

    invoke-virtual {v9, v10}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 198
    iget-object v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/16 v10, 0x64

    invoke-virtual {v9, v10}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 199
    iget-object v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 200
    const/high16 v9, 0x7f030000

    invoke-virtual {p0, v9}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->setContentView(I)V

    .line 201
    new-instance v9, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const-string v10, "DroidBTC Bitcoin Miner"

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const-string v10, "DroidBTC Miner is mining..."

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const/high16 v10, 0x7f020000

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/high16 v11, 0x7f020000

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    iput-object v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->notebuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 203
    iget-object v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    iput-object v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->editor:Landroid/content/SharedPreferences$Editor;

    .line 204
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 205
    .local v4, "mHandler":Landroid/os/Handler;
    iget-object v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->runnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0x1

    invoke-virtual {v4, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    const v9, 0x7f070002

    invoke-virtual {p0, v9}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 208
    .local v0, "URL":Landroid/widget/EditText;
    iget-object v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->settings:Landroid/content/SharedPreferences;

    const-string v10, "url"

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 210
    const v9, 0x7f070004

    invoke-virtual {p0, v9}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 211
    .local v8, "user":Landroid/widget/EditText;
    const v9, 0x7f070005

    invoke-virtual {p0, v9}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 212
    .local v5, "pass":Landroid/widget/EditText;
    iget-object v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->settings:Landroid/content/SharedPreferences;

    const-string v10, "username"

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->settings:Landroid/content/SharedPreferences;

    const-string v10, "password"

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 214
    const v9, 0x7f070003

    invoke-virtual {p0, v9}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 215
    .local v7, "port":Landroid/widget/EditText;
    iget-object v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->settings:Landroid/content/SharedPreferences;

    const-string v10, "port"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 216
    .local v1, "abc":I
    if-eqz v1, :cond_1

    .line 217
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :cond_1
    iput-object v8, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->eUser:Landroid/widget/EditText;

    .line 220
    iput-object v5, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->ePassword:Landroid/widget/EditText;

    .line 221
    const v9, 0x7f070008

    invoke-virtual {p0, v9}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    iput-object v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->rBitcoin:Landroid/widget/RadioButton;

    .line 222
    const v9, 0x7f070009

    invoke-virtual {p0, v9}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RadioButton;

    iput-object v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->rLitecoin:Landroid/widget/RadioButton;

    .line 223
    iget-object v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->settings:Landroid/content/SharedPreferences;

    const-string v10, "scrypt"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->scrypt:Z

    .line 224
    iget-boolean v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->scrypt:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 225
    iget-object v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->rLitecoin:Landroid/widget/RadioButton;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 226
    iget-object v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->rBitcoin:Landroid/widget/RadioButton;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 228
    :cond_2
    iget-boolean v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->scrypt:Z

    if-nez v9, :cond_3

    .line 229
    iget-object v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->rBitcoin:Landroid/widget/RadioButton;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 230
    iget-object v9, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->rLitecoin:Landroid/widget/RadioButton;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 232
    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 129
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f060000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 130
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 135
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 159
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 137
    :pswitch_0
    new-instance v1, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$1;

    invoke-direct {v1, p0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$1;-><init>(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;)V

    .line 154
    .local v1, "dialogClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 155
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Are you sure you want to exit?"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "Yes"

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "No"

    .line 156
    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x7f070010
        :pswitch_0
    .end packed-switch
.end method

.method public onRadioButtonClicked(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 826
    move-object v1, p1

    check-cast v1, Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    .line 829
    .local v0, "checked":Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 831
    :pswitch_0
    if-eqz v0, :cond_0

    .line 832
    iget-object v1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->rLitecoin:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 833
    iput-boolean v2, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->scrypt:Z

    goto :goto_0

    .line 837
    :pswitch_1
    if-eqz v0, :cond_0

    .line 838
    iget-object v1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->rBitcoin:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 839
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->scrypt:Z

    goto :goto_0

    .line 829
    nop

    :pswitch_data_0
    .packed-switch 0x7f070008
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onStop(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 642
    iget-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->process:Ljava/lang/Process;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->process:Ljava/lang/Process;

    .line 643
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 644
    return-void
.end method

.method public parseHashrate(Ljava/lang/String;)D
    .locals 14
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 878
    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v12}, Ljava/math/BigDecimal;-><init>(I)V

    .line 879
    .local v4, "abc":Ljava/math/BigDecimal;
    const-string v8, ","

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 880
    .local v0, "a1":[Ljava/lang/String;
    aget-object v1, v0, v13

    .line 881
    .local v1, "a2":Ljava/lang/String;
    const-string v8, "k"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 882
    .local v2, "a3":[Ljava/lang/String;
    aget-object v8, v2, v12

    const-string v9, " "

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 884
    .local v3, "a4":Ljava/lang/String;
    const-string v8, "thread 0"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 885
    iget-object v8, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->hashrate:[D

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    aput-wide v10, v8, v12

    .line 888
    :cond_0
    const-string v8, "thread 1"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 889
    iget-object v8, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->hashrate:[D

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    aput-wide v10, v8, v13

    .line 892
    :cond_1
    const-string v8, "thread 2"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 893
    iget-object v8, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->hashrate:[D

    const/4 v9, 0x2

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    aput-wide v10, v8, v9

    .line 896
    :cond_2
    const-string v8, "thread 3"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 897
    iget-object v8, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->hashrate:[D

    const/4 v9, 0x3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    aput-wide v10, v8, v9

    .line 900
    :cond_3
    const-string v8, "thread 4"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 901
    iget-object v8, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->hashrate:[D

    const/4 v9, 0x4

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    aput-wide v10, v8, v9

    .line 904
    :cond_4
    const-string v8, "thread 5"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 905
    iget-object v8, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->hashrate:[D

    const/4 v9, 0x5

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    aput-wide v10, v8, v9

    .line 908
    :cond_5
    const-string v8, "thread 6"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 909
    iget-object v8, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->hashrate:[D

    const/4 v9, 0x6

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    aput-wide v10, v8, v9

    .line 912
    :cond_6
    const-string v8, "thread 7"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 913
    iget-object v8, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->hashrate:[D

    const/4 v9, 0x7

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    aput-wide v10, v8, v9

    .line 916
    :cond_7
    const-wide/16 v6, 0x0

    .line 917
    .local v6, "sum":D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v8, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->hashrate:[D

    array-length v8, v8

    if-ge v5, v8, :cond_8

    .line 918
    iget-object v8, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->hashrate:[D

    aget-wide v8, v8, v5

    add-double/2addr v6, v8

    .line 917
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 920
    :cond_8
    invoke-static {v6, v7}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v4

    .line 921
    const-string v8, "DroidMiner hashrate "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " khash/s - this is the string hashrate"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const-string v8, "Droidminer hashrate "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " khash/s - this is the double hashrate"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    const-string v8, "Droidminer hashrate "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->totalHashrate:Ljava/math/BigDecimal;

    invoke-virtual {v10}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " khash/s - this is the BigDecimal hashrate"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    return-wide v6
.end method

.method runCommand(Ljava/lang/String;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 632
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    :goto_0
    return-void

    .line 633
    :catch_0
    move-exception v0

    .line 634
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setThreads()V
    .locals 4

    .prologue
    .line 263
    const v3, 0x7f070007

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->threadList:Landroid/widget/Spinner;

    .line 265
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 267
    .local v2, "threadsAvailable":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    if-gt v0, v3, :cond_0

    .line 268
    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 269
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v1, p0, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 270
    .local v1, "threads":Landroid/widget/ArrayAdapter;
    iget-object v3, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->threadList:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    .end local v0    # "i":I
    .end local v1    # "threads":Landroid/widget/ArrayAdapter;
    .end local v2    # "threadsAvailable":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 274
    :cond_0
    return-void
.end method

.method setUI()V
    .locals 2

    .prologue
    .line 278
    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->startMining:Landroid/widget/Button;

    .line 279
    const v0, 0x7f07000c

    invoke-virtual {p0, v0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->stopMining:Landroid/widget/Button;

    .line 281
    iget-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->startMining:Landroid/widget/Button;

    new-instance v1, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$2;

    invoke-direct {v1, p0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$2;-><init>(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->stopMining:Landroid/widget/Button;

    new-instance v1, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$3;

    invoke-direct {v1, p0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$3;-><init>(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    return-void
.end method

.method public showNote()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 648
    iput-boolean v5, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->noteIsOn:Z

    .line 649
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->resultIntent:Landroid/content/Intent;

    .line 651
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 654
    .local v1, "toLaunch":Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 656
    invoke-virtual {p0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 658
    .local v0, "resultPendingIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->resultIntent:Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    iget-object v2, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->resultIntent:Landroid/content/Intent;

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    iget-object v2, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->notebuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 661
    iget-object v2, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->notebuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 662
    iget-object v2, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->notebuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    iput-object v2, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->note:Landroid/app/Notification;

    .line 663
    iget-object v2, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->note:Landroid/app/Notification;

    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 664
    const-string v2, "notification"

    .line 665
    invoke-virtual {p0, v2}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->mNotificationManager:Landroid/app/NotificationManager;

    .line 666
    iget-object v2, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v3, 0x13a

    iget-object v4, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->note:Landroid/app/Notification;

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 667
    return-void
.end method

.method startMiner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "URL"    # Ljava/lang/String;
    .param p2, "Auth"    # Ljava/lang/String;
    .param p3, "Threads"    # Ljava/lang/String;

    .prologue
    .line 359
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 360
    .local v0, "args":[Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->main([Ljava/lang/String;)V

    .line 361
    return-void
.end method
