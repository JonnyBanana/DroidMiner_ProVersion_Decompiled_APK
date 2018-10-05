.class Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$10;
.super Ljava/lang/Object;
.source "AndLTCMinerPROActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->enableUi()V
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
    .line 870
    iput-object p1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$10;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 872
    iget-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$10;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v0, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->thisActivity:Landroid/app/Activity;

    const-string v1, "DroidMiner"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 873
    return-void
.end method
