.class Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback$1;
.super Ljava/lang/Object;
.source "AndLTCMinerPROActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback;->dontAllow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback;


# direct methods
.method constructor <init>(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback;)V
    .locals 0
    .param p1, "this$1"    # Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback;

    .prologue
    .line 790
    iput-object p1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback$1;->this$1:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 793
    iget-object v4, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback$1;->this$1:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback;

    iget-object v4, v4, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-virtual {v4}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 794
    .local v0, "context":Landroid/content/Context;
    const-string v2, "You are a pirate. Please cease the usage of my app."

    .line 795
    .local v2, "text":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 797
    .local v1, "duration":I
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 798
    .local v3, "toast":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 799
    iget-object v4, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback$1;->this$1:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback;

    iget-object v4, v4, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-virtual {v4}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->finish()V

    .line 800
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/System;->exit(I)V

    .line 801
    return-void
.end method
