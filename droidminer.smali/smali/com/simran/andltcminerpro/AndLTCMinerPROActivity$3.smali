.class Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$3;
.super Ljava/lang/Object;
.source "AndLTCMinerPROActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->setUI()V
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
    .line 335
    iput-object p1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$3;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$3;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-static {v0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->access$000(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 339
    iget-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$3;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-virtual {v0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->enableUi()V

    .line 340
    iget-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$3;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v0, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->port:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 341
    iget-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$3;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v0, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v0

    goto :goto_0
.end method
