.class Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$4;
.super Ljava/lang/Object;
.source "AndLTCMinerPROActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;


# direct methods
.method constructor <init>(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$4;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 366
    iget-object v1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$4;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-virtual {v1}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->isOnline()Z

    move-result v1

    if-nez v1, :cond_0

    .line 367
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$4;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 368
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const-string v1, "No Internet Connection"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 369
    const-string v1, "An Internet connection is required to mine."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 370
    const-string v1, "OK"

    new-instance v2, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$4$1;

    invoke-direct {v2, p0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$4$1;-><init>(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 375
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 381
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$4;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-virtual {v1}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->setThreads()V

    .line 378
    iget-object v1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$4;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-virtual {v1}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->setUI()V

    goto :goto_0
.end method
