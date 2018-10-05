.class Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$4$1;
.super Ljava/lang/Object;
.source "AndLTCMinerPROActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$4;


# direct methods
.method constructor <init>(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$4;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$4$1;->this$1:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$4$1;->this$1:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$4;

    iget-object v0, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$4;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-virtual {v0}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->finish()V

    .line 373
    return-void
.end method
