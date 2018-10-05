.class Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;
.super Landroid/os/Handler;
.source "GestureDetectorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;


# direct methods
.method constructor <init>(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    .line 103
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 104
    return-void
.end method

.method constructor <init>(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 106
    iput-object p1, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    .line 107
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 108
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 112
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 129
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    invoke-static {v0}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->access$100(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)Landroid/view/GestureDetector$OnGestureListener;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    invoke-static {v1}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->access$000(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 118
    :pswitch_1
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    invoke-static {v0}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->access$200(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)V

    goto :goto_0

    .line 123
    :pswitch_2
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    invoke-static {v0}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->access$300(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    invoke-static {v0}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->access$400(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    invoke-static {v0}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->access$300(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase$GestureHandler;->this$0:Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;

    invoke-static {v1}, Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;->access$000(Landroid/support/v4/view/GestureDetectorCompat$GestureDetectorCompatImplBase;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
