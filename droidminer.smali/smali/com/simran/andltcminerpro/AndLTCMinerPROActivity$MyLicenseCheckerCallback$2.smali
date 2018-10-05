.class Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback$2;
.super Ljava/lang/Object;
.source "AndLTCMinerPROActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback;->displayResult(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback;

    .prologue
    .line 807
    iput-object p1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback$2;->this$1:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback;

    iput-object p2, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback$2;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 809
    iget-object v4, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback$2;->this$1:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback;

    iget-object v4, v4, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-virtual {v4}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 810
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$MyLicenseCheckerCallback$2;->val$result:Ljava/lang/String;

    .line 811
    .local v2, "text":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 813
    .local v1, "duration":I
    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 814
    .local v3, "toast":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 815
    return-void
.end method
