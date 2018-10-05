.class Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$8$1;
.super Ljava/lang/Object;
.source "AndLTCMinerPROActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$8;

.field final synthetic val$scrollview:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$8;Landroid/widget/ScrollView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$8;

    .prologue
    .line 595
    iput-object p1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$8$1;->this$1:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$8;

    iput-object p2, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$8$1;->val$scrollview:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$8$1;->val$scrollview:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 599
    return-void
.end method
