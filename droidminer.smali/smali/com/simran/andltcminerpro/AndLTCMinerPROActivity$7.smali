.class Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$7;
.super Ljava/lang/Thread;
.source "AndLTCMinerPROActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->Miner(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

.field final synthetic val$auth:Ljava/lang/String;

.field final synthetic val$nThread:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$7;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iput-object p2, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$7;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$7;->val$auth:Ljava/lang/String;

    iput p4, p0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$7;->val$nThread:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 468
    const/4 v11, 0x0

    .line 470
    .local v11, "port":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$7;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    const v15, 0x7f070003

    invoke-virtual {v14, v15}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 471
    .local v3, "e":Landroid/widget/EditText;
    const/4 v9, 0x1

    .line 473
    .local v9, "isANumber":Z
    :try_start_0
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    .line 479
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$7;->val$url:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    const-string v15, "://"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 480
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$7;->val$url:Ljava/lang/String;

    const-string v15, "://"

    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 481
    .local v1, "a":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 482
    .local v6, "i":Ljava/net/InetAddress;
    const/4 v14, 0x1

    aget-object v14, v1, v14

    invoke-static {v14}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 483
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v13

    .line 492
    .end local v1    # "a":[Ljava/lang/String;
    .end local v6    # "i":Ljava/net/InetAddress;
    .local v13, "url1":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$7;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v14, v14, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v15, "port"

    invoke-interface {v14, v15, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 493
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$7;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-object v14, v14, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 497
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$7;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-boolean v14, v14, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->scrypt:Z

    if-eqz v14, :cond_0

    .line 498
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$7;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    new-instance v15, Ljava/lang/ProcessBuilder;

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$7;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    move-object/from16 v17, v0

    .line 499
    invoke-virtual/range {v17 .. v17}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->appPath()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v16}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    move-result-object v15

    const/16 v16, 0x5

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "./%1$s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$7;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    move-object/from16 v21, v0

    .line 500
    invoke-static/range {v21 .. v21}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->access$200(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string v18, "--algo=%1$s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "scrypt"

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const-string v18, "--url=stratum+tcp://%1$s:%2$s"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v13, v19, v20

    const/16 v20, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    const-string v18, "--userpass=%1$s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$7;->val$auth:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x4

    const-string v18, "--threads=%1$s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$7;->val$nThread:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v15 .. v16}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v15

    const/16 v16, 0x1

    .line 501
    invoke-virtual/range {v15 .. v16}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v15

    .line 502
    invoke-virtual {v15}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v15

    .line 498
    invoke-static {v14, v15}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->access$002(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;Ljava/lang/Process;)Ljava/lang/Process;

    .line 504
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$7;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    iget-boolean v14, v14, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->scrypt:Z

    if-nez v14, :cond_1

    .line 505
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$7;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    new-instance v15, Ljava/lang/ProcessBuilder;

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$7;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    move-object/from16 v17, v0

    .line 506
    invoke-virtual/range {v17 .. v17}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->appPath()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v16}, Ljava/lang/ProcessBuilder;->directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    move-result-object v15

    const/16 v16, 0x5

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "./%1$s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$7;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    move-object/from16 v21, v0

    .line 507
    invoke-static/range {v21 .. v21}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->access$200(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string v18, "--algo=%1$s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "sha256d"

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const-string v18, "--url=stratum+tcp://%1$s:%2$s"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v13, v19, v20

    const/16 v20, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    const-string v18, "--userpass=%1$s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$7;->val$auth:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x4

    const-string v18, "--threads=%1$s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$7;->val$nThread:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v15 .. v16}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v15

    const/16 v16, 0x1

    .line 508
    invoke-virtual/range {v15 .. v16}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v15

    .line 509
    invoke-virtual {v15}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v15

    .line 505
    invoke-static {v14, v15}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->access$002(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;Ljava/lang/Process;)Ljava/lang/Process;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 512
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$7;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-static {v14}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->access$000(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;)Ljava/lang/Process;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 514
    .local v7, "in":Ljava/io/InputStream;
    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 515
    .local v12, "r":Ljava/io/InputStreamReader;
    new-instance v8, Ljava/io/BufferedReader;

    invoke-direct {v8, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 519
    .local v8, "ins":Ljava/io/BufferedReader;
    :goto_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    .local v10, "line":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 520
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$7;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-virtual {v14, v10}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 522
    .end local v7    # "in":Ljava/io/InputStream;
    .end local v8    # "ins":Ljava/io/BufferedReader;
    .end local v10    # "line":Ljava/lang/String;
    .end local v12    # "r":Ljava/io/InputStreamReader;
    :catchall_0
    move-exception v14

    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$7;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-static {v15}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->access$000(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;)Ljava/lang/Process;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Process;->destroy()V

    throw v14
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 524
    :catch_0
    move-exception v4

    .line 525
    .local v4, "ex":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$7;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->log(Ljava/lang/String;)V

    .line 527
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_3
    return-void

    .line 474
    .end local v13    # "url1":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 475
    .local v2, "dwadawdadawdaw":Ljava/lang/Exception;
    const-string v14, "3333"

    invoke-virtual {v3, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 476
    const/16 v11, 0xd05

    goto/16 :goto_0

    .line 485
    .end local v2    # "dwadawdadawdaw":Ljava/lang/Exception;
    :cond_2
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$7;->val$url:Ljava/lang/String;

    invoke-static {v14}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 486
    .restart local v6    # "i":Ljava/net/InetAddress;
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v13

    .restart local v13    # "url1":Ljava/lang/String;
    goto/16 :goto_1

    .line 488
    .end local v6    # "i":Ljava/net/InetAddress;
    .end local v13    # "url1":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 489
    .local v5, "f":Ljava/net/UnknownHostException;
    const-string v14, "DroidBTCManagerActivity"

    invoke-virtual {v5}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const-string v13, ""

    .restart local v13    # "url1":Ljava/lang/String;
    goto/16 :goto_1

    .line 522
    .end local v5    # "f":Ljava/net/UnknownHostException;
    .restart local v7    # "in":Ljava/io/InputStream;
    .restart local v8    # "ins":Ljava/io/BufferedReader;
    .restart local v10    # "line":Ljava/lang/String;
    .restart local v12    # "r":Ljava/io/InputStreamReader;
    :cond_3
    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity$7;->this$0:Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;

    invoke-static {v14}, Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;->access$000(Lcom/simran/andltcminerpro/AndLTCMinerPROActivity;)Ljava/lang/Process;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Process;->destroy()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3
.end method
