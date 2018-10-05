.class Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$6;
.super Ljava/lang/Object;
.source "AndLTCMinerPROActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->checkMinerd(Ljava/lang/String;)Z
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
    .line 428
    iput-object p1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$6;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 430
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$6;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-static {v0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->access$000(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;)Ljava/lang/Process;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$6;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-static {v0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->access$000(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$6;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v0, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :goto_0
    return-void

    .line 435
    :catch_0
    move-exception v0

    goto :goto_0
.end method
