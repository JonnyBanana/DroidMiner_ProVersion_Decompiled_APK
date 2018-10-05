.class Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;
.super Landroid/os/AsyncTask;
.source "AndLTCMinerPROActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadFile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;


# direct methods
.method private constructor <init>(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;)V
    .locals 0

    .prologue
    .line 669
    iput-object p1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;
    .param p2, "x1"    # Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$1;

    .prologue
    .line 669
    invoke-direct {p0, p1}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;-><init>(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 669
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 14
    .param p1, "void1"    # [Ljava/lang/Void;

    .prologue
    .line 706
    :try_start_0
    iget-object v5, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-virtual {v5}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v8, 0x7f040000

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 707
    .local v3, "input":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 708
    .local v2, "fileLength":I
    new-instance v4, Ljava/io/FileOutputStream;

    const-string v5, "%1$s/%2$s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-virtual {v10}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->appPath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v10, v10, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->typeMinerd:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 710
    .local v4, "output":Ljava/io/OutputStream;
    const/16 v5, 0x400

    new-array v1, v5, [B

    .line 711
    .local v1, "data":[B
    const-wide/16 v6, 0x0

    .line 713
    .local v6, "total":J
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "count":I
    const/4 v5, -0x1

    if-eq v0, v5, :cond_0

    .line 714
    int-to-long v8, v0

    add-long/2addr v6, v8

    .line 716
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v8, 0x0

    const-wide/16 v10, 0x64

    mul-long/2addr v10, v6

    int-to-long v12, v2

    div-long/2addr v10, v12

    long-to-int v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-virtual {p0, v5}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;->publishProgress([Ljava/lang/Object;)V

    .line 717
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 725
    .end local v0    # "count":I
    .end local v1    # "data":[B
    .end local v2    # "fileLength":I
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "output":Ljava/io/OutputStream;
    .end local v6    # "total":J
    :catch_0
    move-exception v5

    .line 727
    iget-object v5, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->finished:Z

    .line 728
    const-string v5, "poop"

    :goto_1
    return-object v5

    .line 720
    .restart local v0    # "count":I
    .restart local v1    # "data":[B
    .restart local v2    # "fileLength":I
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    .restart local v6    # "total":J
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 721
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 722
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 723
    iget-object v5, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    const-string v8, "chmod 744 %1$s/%2$s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-virtual {v11}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->appPath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v11, v11, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->typeMinerd:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->runCommand(Ljava/lang/String;)V

    .line 724
    const-string v5, "poop"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 669
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 739
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 740
    iget-object v1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v1, v1, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 742
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v4, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v4, v4, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->URLText:Ljava/lang/String;

    iget-object v5, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v5, v5, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->CredText:Ljava/lang/String;

    iget-object v6, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v6, v6, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->threadList:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->startMiner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    iget-object v1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v1, v1, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->startMining:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 749
    iget-object v1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v1, v1, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->stopMining:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 750
    iget-object v1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v1, v1, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "username"

    iget-object v3, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v3, v3, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->eUser:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 751
    iget-object v1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v1, v1, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "password"

    iget-object v3, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v3, v3, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->ePassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 752
    iget-object v1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v1, v1, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "url"

    iget-object v3, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v3, v3, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->URL:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 753
    iget-object v1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v1, v1, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 754
    iget-object v1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-virtual {v1}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->showNote()V

    .line 757
    return-void

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    if-eq v4, v5, :cond_2

    move v4, v2

    :goto_2
    or-int/2addr v1, v4

    if-eqz v1, :cond_0

    .line 745
    const-string v1, "DROIDBTC EXCEPTION"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    move v1, v3

    .line 744
    goto :goto_1

    :cond_2
    move v4, v3

    goto :goto_2
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 674
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 675
    iget-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v0, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 676
    iget-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v0, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 677
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "progress"    # [Ljava/lang/Integer;

    .prologue
    .line 733
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 734
    iget-object v0, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v0, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 735
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 669
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$DownloadFile;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
