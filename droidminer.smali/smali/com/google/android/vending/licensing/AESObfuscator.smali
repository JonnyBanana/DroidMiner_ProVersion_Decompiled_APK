.class public Lcom/google/android/vending/licensing/AESObfuscator;
.super Ljava/lang/Object;
.source "AESObfuscator.java"

# interfaces
.implements Lcom/google/android/vending/licensing/Obfuscator;


# static fields
.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final IV:[B

.field private static final KEYGEN_ALGORITHM:Ljava/lang/String; = "PBEWITHSHAAND256BITAES-CBC-BC"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static final header:Ljava/lang/String; = "com.android.vending.licensing.AESObfuscator-1|"


# instance fields
.field private mDecryptor:Ljavax/crypto/Cipher;

.field private mEncryptor:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/vending/licensing/AESObfuscator;->IV:[B

    return-void

    :array_0
    .array-data 1
        0x10t
        0x4at
        0x47t
        -0x50t
        0x20t
        0x65t
        -0x2ft
        0x48t
        0x75t
        -0xet
        0x0t
        -0x1dt
        0x46t
        0x41t
        -0xct
        0x4at
    .end array-data
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "salt"    # [B
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    :try_start_0
    const-string v5, "PBEWITHSHAAND256BITAES-CBC-BC"

    invoke-static {v5}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    .line 58
    .local v1, "factory":Ljavax/crypto/SecretKeyFactory;
    new-instance v2, Ljavax/crypto/spec/PBEKeySpec;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 59
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    const/16 v6, 0x400

    const/16 v7, 0x100

    invoke-direct {v2, v5, p1, v6, v7}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 60
    .local v2, "keySpec":Ljava/security/spec/KeySpec;
    invoke-virtual {v1, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 61
    .local v4, "tmp":Ljavax/crypto/SecretKey;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    const-string v6, "AES"

    invoke-direct {v3, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 62
    .local v3, "secret":Ljavax/crypto/SecretKey;
    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/vending/licensing/AESObfuscator;->mEncryptor:Ljavax/crypto/Cipher;

    .line 63
    iget-object v5, p0, Lcom/google/android/vending/licensing/AESObfuscator;->mEncryptor:Ljavax/crypto/Cipher;

    const/4 v6, 0x1

    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v8, Lcom/google/android/vending/licensing/AESObfuscator;->IV:[B

    invoke-direct {v7, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v5, v6, v3, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 64
    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/vending/licensing/AESObfuscator;->mDecryptor:Ljavax/crypto/Cipher;

    .line 65
    iget-object v5, p0, Lcom/google/android/vending/licensing/AESObfuscator;->mDecryptor:Ljavax/crypto/Cipher;

    const/4 v6, 0x2

    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v8, Lcom/google/android/vending/licensing/AESObfuscator;->IV:[B

    invoke-direct {v7, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v5, v6, v3, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    return-void

    .line 66
    .end local v1    # "factory":Ljavax/crypto/SecretKeyFactory;
    .end local v2    # "keySpec":Ljava/security/spec/KeySpec;
    .end local v3    # "secret":Ljavax/crypto/SecretKey;
    .end local v4    # "tmp":Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid environment"

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method


# virtual methods
.method public obfuscate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "original"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 73
    if-nez p1, :cond_0

    .line 74
    const/4 v1, 0x0

    .line 78
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/vending/licensing/AESObfuscator;->mEncryptor:Ljavax/crypto/Cipher;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.android.vending.licensing.AESObfuscator-1|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/vending/licensing/util/Base64;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid environment"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 81
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 82
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid environment"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unobfuscate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "obfuscated"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/vending/licensing/ValidationException;
        }
    .end annotation

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    const/4 v3, 0x0

    .line 99
    :goto_0
    return-object v3

    .line 91
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/vending/licensing/AESObfuscator;->mDecryptor:Ljavax/crypto/Cipher;

    invoke-static {p1}, Lcom/google/android/vending/licensing/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 94
    .local v2, "result":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.android.vending.licensing.AESObfuscator-1|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 95
    .local v1, "headerIndex":I
    if-eqz v1, :cond_1

    .line 96
    new-instance v3, Lcom/google/android/vending/licensing/ValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Header not found (invalid data or key):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/vending/licensing/ValidationException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/google/android/vending/licensing/util/Base64DecoderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3

    .line 100
    .end local v1    # "headerIndex":I
    .end local v2    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Lcom/google/android/vending/licensing/util/Base64DecoderException;
    new-instance v3, Lcom/google/android/vending/licensing/ValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/vending/licensing/util/Base64DecoderException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/vending/licensing/ValidationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 99
    .end local v0    # "e":Lcom/google/android/vending/licensing/util/Base64DecoderException;
    .restart local v1    # "headerIndex":I
    .restart local v2    # "result":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v3, "com.android.vending.licensing.AESObfuscator-1|"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/android/vending/licensing/util/Base64DecoderException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    goto :goto_0

    .line 102
    .end local v1    # "headerIndex":I
    .end local v2    # "result":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 103
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v3, Lcom/google/android/vending/licensing/ValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/vending/licensing/ValidationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 104
    .end local v0    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_2
    move-exception v0

    .line 105
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v3, Lcom/google/android/vending/licensing/ValidationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/vending/licensing/ValidationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 106
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    :catch_3
    move-exception v0

    .line 107
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Invalid environment"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
