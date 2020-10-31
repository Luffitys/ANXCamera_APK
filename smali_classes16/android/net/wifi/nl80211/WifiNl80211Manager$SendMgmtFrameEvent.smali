.class Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;
.super Landroid/net/wifi/nl80211/ISendMgmtFrameEvent$Stub;
.source "WifiNl80211Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/WifiNl80211Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendMgmtFrameEvent"
.end annotation


# instance fields
.field private mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mTimeoutCallback:Landroid/app/AlarmManager$OnAlarmListener;

.field private mWasCalled:Z

.field final synthetic this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;


# direct methods
.method constructor <init>(Landroid/net/wifi/nl80211/WifiNl80211Manager;Ljava/util/concurrent/Executor;Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;)V
    .registers 12

    iput-object p1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    invoke-direct {p0}, Landroid/net/wifi/nl80211/ISendMgmtFrameEvent$Stub;-><init>()V

    iput-object p2, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;

    new-instance v0, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$SendMgmtFrameEvent$om0NftZUGrqsz3A_5FK5rjlHcxQ;

    invoke-direct {v0, p0}, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$SendMgmtFrameEvent$om0NftZUGrqsz3A_5FK5rjlHcxQ;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;)V

    iput-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->mTimeoutCallback:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->mWasCalled:Z

    # getter for: Landroid/net/wifi/nl80211/WifiNl80211Manager;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->access$300(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Landroid/app/AlarmManager;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long v3, v2, v4

    iget-object v6, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->mTimeoutCallback:Landroid/app/AlarmManager$OnAlarmListener;

    # getter for: Landroid/net/wifi/nl80211/WifiNl80211Manager;->mEventHandler:Landroid/os/Handler;
    invoke-static {p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->access$200(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Landroid/os/Handler;

    move-result-object v7

    const/4 v2, 0x2

    const-string v5, "WifiNl80211Manager Send Management Frame Timeout"

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method private runIfFirstCall(Ljava/lang/Runnable;)V
    .registers 4

    iget-boolean v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->mWasCalled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->mWasCalled:Z

    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    # getter for: Landroid/net/wifi/nl80211/WifiNl80211Manager;->mSendMgmtFrameInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->access$100(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public OnAck(I)V
    .registers 4

    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    # getter for: Landroid/net/wifi/nl80211/WifiNl80211Manager;->mEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->access$200(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$SendMgmtFrameEvent$lqXW7dvgP4SiZa9axpAVyijTCkM;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$SendMgmtFrameEvent$lqXW7dvgP4SiZa9axpAVyijTCkM;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public OnFailure(I)V
    .registers 4

    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    # getter for: Landroid/net/wifi/nl80211/WifiNl80211Manager;->mEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->access$200(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$SendMgmtFrameEvent$9KLACn0Uhup4kuzEujGfoeBXDdM;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$SendMgmtFrameEvent$9KLACn0Uhup4kuzEujGfoeBXDdM;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$OnAck$3$WifiNl80211Manager$SendMgmtFrameEvent(I)V
    .registers 3

    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;

    invoke-interface {v0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;->onAck(I)V

    return-void
.end method

.method public synthetic lambda$OnAck$4$WifiNl80211Manager$SendMgmtFrameEvent(I)V
    .registers 4

    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    # getter for: Landroid/net/wifi/nl80211/WifiNl80211Manager;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->access$300(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->mTimeoutCallback:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$SendMgmtFrameEvent$MGjeo4tfBDJYD0HHYHbK5zEbv3I;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$SendMgmtFrameEvent$MGjeo4tfBDJYD0HHYHbK5zEbv3I;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$OnAck$5$WifiNl80211Manager$SendMgmtFrameEvent(I)V
    .registers 3

    new-instance v0, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$SendMgmtFrameEvent$htBehqSd9shFaL7yeEodIlg564Y;

    invoke-direct {v0, p0, p1}, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$SendMgmtFrameEvent$htBehqSd9shFaL7yeEodIlg564Y;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;I)V

    invoke-direct {p0, v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->runIfFirstCall(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$OnFailure$6$WifiNl80211Manager$SendMgmtFrameEvent(I)V
    .registers 3

    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;

    invoke-interface {v0, p1}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;->onFailure(I)V

    return-void
.end method

.method public synthetic lambda$OnFailure$7$WifiNl80211Manager$SendMgmtFrameEvent(I)V
    .registers 4

    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    # getter for: Landroid/net/wifi/nl80211/WifiNl80211Manager;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->access$300(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->mTimeoutCallback:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$SendMgmtFrameEvent$I6ehTYIN8TTuVasJUTqGu7YSYLA;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$SendMgmtFrameEvent$I6ehTYIN8TTuVasJUTqGu7YSYLA;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$OnFailure$8$WifiNl80211Manager$SendMgmtFrameEvent(I)V
    .registers 3

    new-instance v0, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$SendMgmtFrameEvent$BsHKV1MLyLWRn4FZ-puX7XRDaLE;

    invoke-direct {v0, p0, p1}, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$SendMgmtFrameEvent$BsHKV1MLyLWRn4FZ-puX7XRDaLE;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;I)V

    invoke-direct {p0, v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->runIfFirstCall(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$new$0$WifiNl80211Manager$SendMgmtFrameEvent()V
    .registers 3

    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->mCallback:Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameCallback;->onFailure(I)V

    return-void
.end method

.method public synthetic lambda$new$1$WifiNl80211Manager$SendMgmtFrameEvent()V
    .registers 3

    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->this$0:Landroid/net/wifi/nl80211/WifiNl80211Manager;

    # getter for: Landroid/net/wifi/nl80211/WifiNl80211Manager;->mVerboseLoggingEnabled:Z
    invoke-static {v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->access$000(Landroid/net/wifi/nl80211/WifiNl80211Manager;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "WifiNl80211Manager"

    const-string v1, "Timed out waiting for ACK"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    iget-object v0, p0, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$SendMgmtFrameEvent$WTpNWgu59B-YEvoDOuXwd5QK4k8;

    invoke-direct {v1, p0}, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$SendMgmtFrameEvent$WTpNWgu59B-YEvoDOuXwd5QK4k8;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic lambda$new$2$WifiNl80211Manager$SendMgmtFrameEvent()V
    .registers 2

    new-instance v0, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$SendMgmtFrameEvent$8iM8BXWNf5vbe87gyAXgPEB0GY8;

    invoke-direct {v0, p0}, Landroid/net/wifi/nl80211/-$$Lambda$WifiNl80211Manager$SendMgmtFrameEvent$8iM8BXWNf5vbe87gyAXgPEB0GY8;-><init>(Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;)V

    invoke-direct {p0, v0}, Landroid/net/wifi/nl80211/WifiNl80211Manager$SendMgmtFrameEvent;->runIfFirstCall(Ljava/lang/Runnable;)V

    return-void
.end method
