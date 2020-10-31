.class Landroid/view/inputmethod/InputMethodManager$H;
.super Landroid/os/Handler;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V
    .registers 5

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_284

    const/16 v1, 0xf

    if-eq v0, v1, :cond_265

    const/16 v1, 0x14

    if-eq v0, v1, :cond_244

    const/16 v1, 0x1e

    const/16 v4, 0x9

    if-eq v0, v1, :cond_1a2

    packed-switch v0, :pswitch_data_2ae

    return-void

    :pswitch_1a
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v3, v3}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    return-void

    :pswitch_22
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->finishedInputEvent(IZZ)V

    return-void

    :pswitch_2a
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    return-void

    :pswitch_34
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_3a

    move v0, v2

    goto :goto_3b

    :cond_3a
    move v0, v3

    :goto_3b
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_41

    move v1, v2

    goto :goto_42

    :cond_41
    move v1, v3

    :goto_42
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v5, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v5

    :try_start_47
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v0, v6, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v1, v6, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    if-nez v0, :cond_5f

    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    # setter for: Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z
    invoke-static {v6, v2}, Landroid/view/inputmethod/InputMethodManager;->access$402(Landroid/view/inputmethod/InputMethodManager;Z)Z
    :try_end_56
    .catchall {:try_start_47 .. :try_end_56} :catchall_9c

    :try_start_56
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v2}, Lcom/android/internal/view/IInputContext;->finishComposingText()V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_5d} :catch_5e
    .catchall {:try_start_56 .. :try_end_5d} :catchall_9c

    goto :goto_5f

    :catch_5e
    move-exception v2

    :cond_5f
    :goto_5f
    :try_start_5f
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    # invokes: Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;
    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->access$100(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_9a

    # invokes: Landroid/view/inputmethod/InputMethodManager;->canStartInput(Landroid/view/View;)Z
    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->access$1000(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_9a

    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v6, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v6, :cond_9a

    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v6, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v6}, Landroid/view/ViewRootImpl;->getImeFocusController()Landroid/view/ImeFocusController;

    move-result-object v6

    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    # getter for: Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z
    invoke-static {v7}, Landroid/view/inputmethod/InputMethodManager;->access$400(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v7

    invoke-virtual {v6, v7, v3}, Landroid/view/ImeFocusController;->checkFocus(ZZ)Z

    move-result v3

    if-eqz v3, :cond_9a

    if-eqz v0, :cond_8d

    const/16 v4, 0x8

    move v7, v4

    goto :goto_8e

    :cond_8d
    move v7, v4

    :goto_8e
    nop

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v3, Landroid/view/inputmethod/InputMethodManager;->mDelegate:Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/view/inputmethod/InputMethodManager$DelegateImpl;->startInput(ILandroid/view/View;III)Z

    :cond_9a
    monitor-exit v5

    return-void

    :catchall_9c
    move-exception v2

    monitor-exit v5
    :try_end_9e
    .catchall {:try_start_5f .. :try_end_9e} :catchall_9c

    throw v2

    :pswitch_9f
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v3, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v4

    :try_start_a8
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v3, v3, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-eq v3, v0, :cond_b0

    monitor-exit v4

    return-void

    :cond_b0
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->clearBindingLocked()V

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    # invokes: Landroid/view/inputmethod/InputMethodManager;->getServedViewLocked()Landroid/view/View;
    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->access$100(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_c7

    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_c7

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v2, v5, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    :cond_c7
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v2, v2, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    monitor-exit v4
    :try_end_cc
    .catchall {:try_start_a8 .. :try_end_cc} :catchall_d9

    if-eqz v2, :cond_d8

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    :cond_d8
    return-void

    :catchall_d9
    move-exception v2

    :try_start_da
    monitor-exit v4
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_d9

    throw v2

    :pswitch_dc
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/InputBindResult;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    :try_start_e5
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v2, v2, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-ltz v2, :cond_127

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v2, v2, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    iget v4, v0, Lcom/android/internal/view/InputBindResult;->sequence:I

    if-eq v2, v4, :cond_f4

    goto :goto_127

    :cond_f4
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    # setter for: Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I
    invoke-static {v2, v3}, Landroid/view/inputmethod/InputMethodManager;->access$802(Landroid/view/inputmethod/InputMethodManager;I)I

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v2, v3}, Landroid/view/inputmethod/InputMethodManager;->setInputChannelLocked(Landroid/view/InputChannel;)V

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v0, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    iput-object v3, v2, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v0, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    iput-object v3, v2, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v3, v0, Lcom/android/internal/view/InputBindResult;->sequence:I

    iput v3, v2, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Lcom/android/internal/view/InputBindResult;->getActivityViewToScreenMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    # setter for: Landroid/view/inputmethod/InputMethodManager;->mActivityViewToScreenMatrix:Landroid/graphics/Matrix;
    invoke-static {v2, v3}, Landroid/view/inputmethod/InputMethodManager;->access$902(Landroid/view/inputmethod/InputMethodManager;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    monitor-exit v1
    :try_end_11c
    .catchall {:try_start_e5 .. :try_end_11c} :catchall_15e

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    return-void

    :cond_127
    :goto_127
    :try_start_127
    const-string v2, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring onBind: cur seq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v4, v4, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", given seq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/internal/view/InputBindResult;->sequence:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v2, :cond_15c

    iget-object v2, v0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eq v2, v3, :cond_15c

    iget-object v2, v0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    :cond_15c
    monitor-exit v1

    return-void

    :catchall_15e
    move-exception v2

    monitor-exit v1
    :try_end_160
    .catchall {:try_start_127 .. :try_end_160} :catchall_15e

    throw v2

    :pswitch_161
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_165
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/io/FileDescriptor;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/io/PrintWriter;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_176
    .catch Ljava/lang/RuntimeException; {:try_start_165 .. :try_end_176} :catch_177

    goto :goto_190

    :catch_177
    move-exception v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_190
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    monitor-enter v1

    :try_start_193
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    monitor-exit v1
    :try_end_19b
    .catchall {:try_start_193 .. :try_end_19b} :catchall_19f

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :catchall_19f
    move-exception v2

    :try_start_1a0
    monitor-exit v1
    :try_end_1a1
    .catchall {:try_start_1a0 .. :try_end_1a1} :catchall_19f

    throw v2

    :cond_1a2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [F

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v5, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v5

    :try_start_1ad
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v6, v6, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    if-eq v6, v1, :cond_1b5

    monitor-exit v5

    return-void

    :cond_1b5
    if-eqz v0, :cond_239

    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    # getter for: Landroid/view/inputmethod/InputMethodManager;->mActivityViewToScreenMatrix:Landroid/graphics/Matrix;
    invoke-static {v6}, Landroid/view/inputmethod/InputMethodManager;->access$900(Landroid/view/inputmethod/InputMethodManager;)Landroid/graphics/Matrix;

    move-result-object v6

    if-nez v6, :cond_1c1

    goto/16 :goto_239

    :cond_1c1
    new-array v4, v4, [F

    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    # getter for: Landroid/view/inputmethod/InputMethodManager;->mActivityViewToScreenMatrix:Landroid/graphics/Matrix;
    invoke-static {v6}, Landroid/view/inputmethod/InputMethodManager;->access$900(Landroid/view/inputmethod/InputMethodManager;)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->getValues([F)V

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v6

    if-eqz v6, :cond_1d4

    monitor-exit v5

    return-void

    :cond_1d4
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    # getter for: Landroid/view/inputmethod/InputMethodManager;->mActivityViewToScreenMatrix:Landroid/graphics/Matrix;
    invoke-static {v6}, Landroid/view/inputmethod/InputMethodManager;->access$900(Landroid/view/inputmethod/InputMethodManager;)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/graphics/Matrix;->setValues([F)V

    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    # getter for: Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;
    invoke-static {v6}, Landroid/view/inputmethod/InputMethodManager;->access$1200(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v6

    if-eqz v6, :cond_237

    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v6, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v6, :cond_237

    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v6, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    if-nez v6, :cond_1f2

    goto :goto_237

    :cond_1f2
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    # getter for: Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I
    invoke-static {v6}, Landroid/view/inputmethod/InputMethodManager;->access$800(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_1fd

    goto :goto_1fe

    :cond_1fd
    move v2, v3

    :goto_1fe
    if-nez v2, :cond_202

    monitor-exit v5
    :try_end_201
    .catchall {:try_start_1ad .. :try_end_201} :catchall_241

    return-void

    :cond_202
    :try_start_202
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    # getter for: Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;
    invoke-static {v6}, Landroid/view/inputmethod/InputMethodManager;->access$1200(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v6

    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    # getter for: Landroid/view/inputmethod/InputMethodManager;->mActivityViewToScreenMatrix:Landroid/graphics/Matrix;
    invoke-static {v7}, Landroid/view/inputmethod/InputMethodManager;->access$900(Landroid/view/inputmethod/InputMethodManager;)Landroid/graphics/Matrix;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/view/inputmethod/CursorAnchorInfo;->createForAdditionalParentMatrix(Landroid/view/inputmethod/CursorAnchorInfo;Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/android/internal/view/IInputMethodSession;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    :try_end_219
    .catch Landroid/os/RemoteException; {:try_start_202 .. :try_end_219} :catch_21a
    .catchall {:try_start_202 .. :try_end_219} :catchall_241

    goto :goto_235

    :catch_21a
    move-exception v3

    :try_start_21b
    const-string v6, "InputMethodManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IME died: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v8, v8, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_235
    monitor-exit v5

    return-void

    :cond_237
    :goto_237
    monitor-exit v5

    return-void

    :cond_239
    :goto_239
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v3, 0x0

    # setter for: Landroid/view/inputmethod/InputMethodManager;->mActivityViewToScreenMatrix:Landroid/graphics/Matrix;
    invoke-static {v2, v3}, Landroid/view/inputmethod/InputMethodManager;->access$902(Landroid/view/inputmethod/InputMethodManager;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    monitor-exit v5

    return-void

    :catchall_241
    move-exception v2

    monitor-exit v5
    :try_end_243
    .catchall {:try_start_21b .. :try_end_243} :catchall_241

    throw v2

    :cond_244
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    :try_start_249
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    # getter for: Landroid/view/inputmethod/InputMethodManager;->mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;
    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->access$1100(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/ImeInsetsSourceConsumer;

    move-result-object v1

    if-eqz v1, :cond_260

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    # getter for: Landroid/view/inputmethod/InputMethodManager;->mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;
    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->access$1100(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/ImeInsetsSourceConsumer;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_25c

    goto :goto_25d

    :cond_25c
    move v2, v3

    :goto_25d
    invoke-virtual {v1, v2}, Landroid/view/ImeInsetsSourceConsumer;->applyImeVisibility(Z)V

    :cond_260
    monitor-exit v0

    return-void

    :catchall_262
    move-exception v1

    monitor-exit v0
    :try_end_264
    .catchall {:try_start_249 .. :try_end_264} :catchall_262

    throw v1

    :cond_265
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    :try_start_26a
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    # getter for: Landroid/view/inputmethod/InputMethodManager;->mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;
    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->access$1100(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/ImeInsetsSourceConsumer;

    move-result-object v1

    if-eqz v1, :cond_27f

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    # getter for: Landroid/view/inputmethod/InputMethodManager;->mImeInsetsConsumer:Landroid/view/ImeInsetsSourceConsumer;
    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->access$1100(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/ImeInsetsSourceConsumer;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {v1, v2}, Landroid/view/ImeInsetsSourceConsumer;->onPreRendered(Landroid/view/inputmethod/EditorInfo;)V

    :cond_27f
    monitor-exit v0

    return-void

    :catchall_281
    move-exception v1

    monitor-exit v0
    :try_end_283
    .catchall {:try_start_26a .. :try_end_283} :catchall_281

    throw v1

    :cond_284
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_289

    goto :goto_28a

    :cond_289
    move v2, v3

    :goto_28a
    move v0, v2

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    :try_start_291
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput-boolean v0, v3, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    if-eqz v3, :cond_2a4

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    move-object v1, v3

    :cond_2a4
    monitor-exit v2
    :try_end_2a5
    .catchall {:try_start_291 .. :try_end_2a5} :catchall_2ab

    if-eqz v1, :cond_2aa

    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    :cond_2aa
    return-void

    :catchall_2ab
    move-exception v3

    :try_start_2ac
    monitor-exit v2
    :try_end_2ad
    .catchall {:try_start_2ac .. :try_end_2ad} :catchall_2ab

    throw v3

    :pswitch_data_2ae
    .packed-switch 0x1
        :pswitch_161
        :pswitch_dc
        :pswitch_9f
        :pswitch_34
        :pswitch_2a
        :pswitch_22
        :pswitch_1a
    .end packed-switch
.end method
