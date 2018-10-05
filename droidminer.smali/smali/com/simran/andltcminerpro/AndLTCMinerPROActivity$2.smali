.class Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$2;
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
    .line 281
    iput-object p1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$2;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 284
    iget-object v7, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$2;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    const v10, 0x7f070007

    invoke-virtual {v7, v10}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 287
    .local v5, "threadList":Landroid/widget/Spinner;
    iget-object v10, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$2;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v7, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$2;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    const v11, 0x7f070002

    invoke-virtual {v7, v11}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, v10, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->URL:Landroid/widget/EditText;

    .line 289
    iget-object v7, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$2;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    const v10, 0x7f07000f

    invoke-virtual {v7, v10}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 290
    .local v1, "console":Landroid/widget/TextView;
    const-string v7, ""

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v7, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$2;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v10, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$2;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v10, v10, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->URL:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->URLText:Ljava/lang/String;

    .line 294
    iget-object v7, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$2;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$2;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v11, v11, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->eUser:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$2;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v11, v11, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->ePassword:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->CredText:Ljava/lang/String;

    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "abc":Z
    iget-object v7, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$2;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v10, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$2;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v10, v10, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->minerd:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->checkMinerd(Ljava/lang/String;)Z

    move-result v0

    .line 297
    iget-object v7, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$2;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v7, v7, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 298
    iget-object v7, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$2;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-virtual {v7}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->disableUi()V

    .line 299
    const-string v7, "DroidBtc.UI"

    const-string v10, "UI elements disabled"

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v7, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$2;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v7, v7, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->eUser:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, ""

    if-ne v7, v10, :cond_1

    move v7, v8

    :goto_0
    iget-object v10, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$2;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v10, v10, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->ePassword:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    if-ne v10, v11, :cond_2

    :goto_1
    or-int/2addr v7, v8

    if-eqz v7, :cond_0

    .line 315
    iget-object v7, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$2;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-virtual {v7}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 316
    .local v2, "context":Landroid/content/Context;
    const-string v4, "Username or password cannot be blank."

    .line 317
    .local v4, "text":Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 319
    .local v3, "duration":I
    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 320
    .local v6, "toast":Landroid/widget/Toast;
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 322
    :try_start_0
    iget-object v7, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$2;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-static {v7}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->access$000(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;)Ljava/lang/Process;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V

    .line 323
    iget-object v7, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$2;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-virtual {v7}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->enableUi()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "duration":I
    .end local v4    # "text":Ljava/lang/CharSequence;
    .end local v6    # "toast":Landroid/widget/Toast;
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v7, v9

    .line 314
    goto :goto_0

    :cond_2
    move v8, v9

    goto :goto_1

    .line 325
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v3    # "duration":I
    .restart local v4    # "text":Ljava/lang/CharSequence;
    .restart local v6    # "toast":Landroid/widget/Toast;
    :catch_0
    move-exception v7

    goto :goto_2
.end method
