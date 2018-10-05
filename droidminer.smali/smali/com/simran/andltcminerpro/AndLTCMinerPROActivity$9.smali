.class Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$9;
.super Ljava/lang/Object;
.source "AndLTCMinerPROActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->log(Ljava/lang/String;)V
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
    .line 611
    iput-object p1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$9;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 613
    iget-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$9;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v0, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->thisActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$9;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v1, v1, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->str1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 614
    return-void
.end method
