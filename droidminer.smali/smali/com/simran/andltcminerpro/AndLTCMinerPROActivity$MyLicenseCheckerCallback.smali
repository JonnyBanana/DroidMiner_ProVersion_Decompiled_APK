.class Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback;
.super Ljava/lang/Object;
.source "AndLTCMinerPROActivity.java"

# interfaces
.implements Lcom/google/android/vending/licensing/LicenseCheckerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLicenseCheckerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;


# direct methods
.method private constructor <init>(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;)V
    .locals 0

    .prologue
    .line 761
    iput-object p1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private displayResult(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 807
    iget-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-static {v0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->access$400(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback$2;

    invoke-direct {v1, p0, p1}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback$2;-><init>(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 818
    return-void
.end method


# virtual methods
.method public allow(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 763
    iget-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-virtual {v0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    :goto_0
    return-void

    .line 768
    :cond_0
    const-string v0, "License verified."

    invoke-direct {p0, v0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback;->displayResult(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public applicationError(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 822
    return-void
.end method

.method public dontAllow(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 772
    iget-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-virtual {v0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    :goto_0
    return-void

    .line 778
    :cond_0
    const/16 v0, 0x123

    if-ne p1, v0, :cond_1

    .line 782
    const-string v0, "License not verified. Please try again."

    invoke-direct {p0, v0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback;->displayResult(Ljava/lang/String;)V

    goto :goto_0

    .line 789
    :cond_1
    const-string v0, "License not verified. You are a pirate. Go away."

    invoke-direct {p0, v0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback;->displayResult(Ljava/lang/String;)V

    .line 790
    iget-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-static {v0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->access$400(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback$1;

    invoke-direct {v1, p0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback$1;-><init>(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
