.class Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$5;
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
    .line 417
    iput-object p1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$5;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v6, 0x0

    .line 419
    iget-object v1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$5;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->access$100()Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%1$s doesn\'t exist. Downloading..."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$5;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-static {v5}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->access$200(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->log(Ljava/lang/String;)V

    .line 421
    new-instance v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;

    iget-object v1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$5;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;-><init>(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$1;)V

    .line 422
    .local v0, "a":Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;
    iget-object v1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$5;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iput-boolean v6, v1, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->finished:Z

    .line 424
    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 425
    iget-object v1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$5;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    const-string v2, "minerd"

    iput-object v2, v1, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->typeMinerd:Ljava/lang/String;

    .line 426
    return-void
.end method
