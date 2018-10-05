.class public Lcom/google/android/vending/licensing/ResponseData;
.super Ljava/lang/Object;
.source "ResponseData.java"


# instance fields
.field public extra:Ljava/lang/String;

.field public nonce:I

.field public packageName:Ljava/lang/String;

.field public responseCode:I

.field public timestamp:J

.field public userId:Ljava/lang/String;

.field public versionCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/google/android/vending/licensing/ResponseData;
    .locals 8
    .param p0, "responseData"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 48
    const/16 v5, 0x3a

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 50
    .local v3, "index":I
    const/4 v5, -0x1

    if-ne v5, v3, :cond_0

    .line 51
    move-object v4, p0

    .line 52
    .local v4, "mainData":Ljava/lang/String;
    const-string v1, ""

    .line 58
    .local v1, "extraData":Ljava/lang/String;
    :goto_0
    const-string v5, "|"

    invoke-static {v5}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "fields":[Ljava/lang/String;
    array-length v5, v2

    const/4 v6, 0x6

    if-ge v5, v6, :cond_2

    .line 60
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Wrong number of fields."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 54
    .end local v1    # "extraData":Ljava/lang/String;
    .end local v2    # "fields":[Ljava/lang/String;
    .end local v4    # "mainData":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 55
    .restart local v4    # "mainData":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v3, v5, :cond_1

    const-string v1, ""

    .restart local v1    # "extraData":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .end local v1    # "extraData":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 63
    .restart local v1    # "extraData":Ljava/lang/String;
    .restart local v2    # "fields":[Ljava/lang/String;
    :cond_2
    new-instance v0, Lcom/google/android/vending/licensing/ResponseData;

    invoke-direct {v0}, Lcom/google/android/vending/licensing/ResponseData;-><init>()V

    .line 64
    .local v0, "data":Lcom/google/android/vending/licensing/ResponseData;
    iput-object v1, v0, Lcom/google/android/vending/licensing/ResponseData;->extra:Ljava/lang/String;

    .line 65
    aget-object v5, v2, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/google/android/vending/licensing/ResponseData;->responseCode:I

    .line 66
    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Lcom/google/android/vending/licensing/ResponseData;->nonce:I

    .line 67
    const/4 v5, 0x2

    aget-object v5, v2, v5

    iput-object v5, v0, Lcom/google/android/vending/licensing/ResponseData;->packageName:Ljava/lang/String;

    .line 68
    const/4 v5, 0x3

    aget-object v5, v2, v5

    iput-object v5, v0, Lcom/google/android/vending/licensing/ResponseData;->versionCode:Ljava/lang/String;

    .line 70
    const/4 v5, 0x4

    aget-object v5, v2, v5

    iput-object v5, v0, Lcom/google/android/vending/licensing/ResponseData;->userId:Ljava/lang/String;

    .line 71
    const/4 v5, 0x5

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/vending/licensing/ResponseData;->timestamp:J

    .line 73
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 78
    const-string v0, "|"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/vending/licensing/ResponseData;->responseCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/vending/licensing/ResponseData;->nonce:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/vending/licensing/ResponseData;->packageName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/vending/licensing/ResponseData;->versionCode:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/android/vending/licensing/ResponseData;->userId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v4, p0, Lcom/google/android/vending/licensing/ResponseData;->timestamp:J

    .line 79
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 78
    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
