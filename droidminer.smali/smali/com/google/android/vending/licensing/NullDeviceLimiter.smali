.class public Lcom/google/android/vending/licensing/NullDeviceLimiter;
.super Ljava/lang/Object;
.source "NullDeviceLimiter.java"

# interfaces
.implements Lcom/google/android/vending/licensing/DeviceLimiter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDeviceAllowed(Ljava/lang/String;)I
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 30
    const/16 v0, 0x100

    return v0
.end method
