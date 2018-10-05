.class Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$8;
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

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    .prologue
    .line 588
    iput-object p1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$8;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iput-object p2, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$8;->val$str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 591
    iget-object v2, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$8;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    const v3, 0x7f07000f

    invoke-virtual {v2, v3}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 592
    .local v0, "Console":Landroid/widget/TextView;
    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$8;->val$str:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 594
    iget-object v2, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$8;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    const v3, 0x7f07000e

    invoke-virtual {v2, v3}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    .line 595
    .local v1, "scrollview":Landroid/widget/ScrollView;
    new-instance v2, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$8$1;

    invoke-direct {v2, p0, v1}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$8$1;-><init>(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$8;Landroid/widget/ScrollView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 601
    return-void
.end method
