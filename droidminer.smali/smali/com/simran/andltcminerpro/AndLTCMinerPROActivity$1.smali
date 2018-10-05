.class Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$1;
.super Ljava/lang/Object;
.source "AndLTCMinerPROActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
    .line 137
    iput-object p1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$1;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 139
    packed-switch p2, :pswitch_data_0

    .line 151
    :goto_0
    return-void

    .line 141
    :pswitch_0
    iget-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$1;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-static {v0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->access$000(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;)Ljava/lang/Process;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$1;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-static {v0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->access$000(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$1;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-boolean v0, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->noteIsOn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$1;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v0, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x13a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$1;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-virtual {v0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->finish()V

    .line 144
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
