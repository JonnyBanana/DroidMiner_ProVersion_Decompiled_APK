.class public Lcom/google/android/vending/licensing/PreferenceObfuscator;
.super Ljava/lang/Object;
.source "PreferenceObfuscator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceObfuscator"


# instance fields
.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private final mObfuscator:Lcom/google/android/vending/licensing/Obfuscator;

.field private final mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/google/android/vending/licensing/Obfuscator;)V
    .locals 1
    .param p1, "sp"    # Landroid/content/SharedPreferences;
    .param p2, "o"    # Lcom/google/android/vending/licensing/Obfuscator;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mPreferences:Landroid/content/SharedPreferences;

    .line 41
    iput-object p2, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mObfuscator:Lcom/google/android/vending/licensing/Obfuscator;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 43
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 76
    :cond_0
    return-void
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v3, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 58
    :try_start_0
    iget-object v3, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mObfuscator:Lcom/google/android/vending/licensing/Obfuscator;

    invoke-interface {v3, v2, p1}, Lcom/google/android/vending/licensing/Obfuscator;->unobfuscate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/vending/licensing/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 68
    .local v1, "result":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 59
    .end local v1    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Lcom/google/android/vending/licensing/ValidationException;
    const-string v3, "PreferenceObfuscator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Validation error while reading preference: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    move-object v1, p2

    .line 63
    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0

    .line 66
    .end local v0    # "e":Lcom/google/android/vending/licensing/ValidationException;
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    move-object v1, p2

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v1, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v1, :cond_0

    .line 47
    iget-object v1, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mObfuscator:Lcom/google/android/vending/licensing/Obfuscator;

    invoke-interface {v1, p2, p1}, Lcom/google/android/vending/licensing/Obfuscator;->obfuscate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "obfuscatedValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/vending/licensing/PreferenceObfuscator;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    return-void
.end method
