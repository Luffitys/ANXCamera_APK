.class abstract Lmiui/payment/PaymentManager$PmsTask;
.super Ljava/util/concurrent/FutureTask;
.source "PaymentManager.java"

# interfaces
.implements Lmiui/payment/PaymentManager$PaymentManagerFuture;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/payment/PaymentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PmsTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/payment/PaymentManager$PmsTask$IPaymentManagerResponseImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Landroid/os/Bundle;",
        ">;",
        "Lmiui/payment/PaymentManager$PaymentManagerFuture<",
        "Landroid/os/Bundle;",
        ">;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# instance fields
.field private final HOST_MONITOR_HEART_INTERNAL:I

.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lmiui/payment/PaymentManager$PaymentManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/payment/PaymentManager$PaymentManagerCallback<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHostActivityMonitor:Ljava/lang/Runnable;

.field private mIsBound:Z

.field private mResponse:Lmiui/payment/IPaymentManagerResponse;

.field private mService:Lmiui/payment/IPaymentManagerService;

.field final synthetic this$0:Lmiui/payment/PaymentManager;


# direct methods
.method protected constructor <init>(Lmiui/payment/PaymentManager;Landroid/app/Activity;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/payment/PaymentManager$PmsTask;-><init>(Lmiui/payment/PaymentManager;Landroid/app/Activity;Lmiui/payment/PaymentManager$PaymentManagerCallback;)V

    return-void
.end method

.method protected constructor <init>(Lmiui/payment/PaymentManager;Landroid/app/Activity;Landroid/os/Handler;Lmiui/payment/PaymentManager$PaymentManagerCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Handler;",
            "Lmiui/payment/PaymentManager$PaymentManagerCallback<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lmiui/payment/PaymentManager$PmsTask;->this$0:Lmiui/payment/PaymentManager;

    new-instance v0, Lmiui/payment/PaymentManager$PmsTask$2;

    invoke-direct {v0, p1}, Lmiui/payment/PaymentManager$PmsTask$2;-><init>(Lmiui/payment/PaymentManager;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiui/payment/PaymentManager$PmsTask;->mIsBound:Z

    const/16 p1, 0x1388

    iput p1, p0, Lmiui/payment/PaymentManager$PmsTask;->HOST_MONITOR_HEART_INTERNAL:I

    new-instance p1, Lmiui/payment/PaymentManager$PmsTask$1;

    invoke-direct {p1, p0}, Lmiui/payment/PaymentManager$PmsTask$1;-><init>(Lmiui/payment/PaymentManager$PmsTask;)V

    iput-object p1, p0, Lmiui/payment/PaymentManager$PmsTask;->mHostActivityMonitor:Ljava/lang/Runnable;

    iput-object p2, p0, Lmiui/payment/PaymentManager$PmsTask;->mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lmiui/payment/PaymentManager$PmsTask;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lmiui/payment/PaymentManager$PmsTask;->mCallback:Lmiui/payment/PaymentManager$PaymentManagerCallback;

    new-instance p1, Lmiui/payment/PaymentManager$PmsTask$IPaymentManagerResponseImpl;

    invoke-direct {p1, p0}, Lmiui/payment/PaymentManager$PmsTask$IPaymentManagerResponseImpl;-><init>(Lmiui/payment/PaymentManager$PmsTask;)V

    iput-object p1, p0, Lmiui/payment/PaymentManager$PmsTask;->mResponse:Lmiui/payment/IPaymentManagerResponse;

    return-void
.end method

.method protected constructor <init>(Lmiui/payment/PaymentManager;Landroid/app/Activity;Lmiui/payment/PaymentManager$PaymentManagerCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lmiui/payment/PaymentManager$PaymentManagerCallback<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lmiui/payment/PaymentManager$PmsTask;-><init>(Lmiui/payment/PaymentManager;Landroid/app/Activity;Landroid/os/Handler;Lmiui/payment/PaymentManager$PaymentManagerCallback;)V

    return-void
.end method

.method static synthetic access$000(Lmiui/payment/PaymentManager$PmsTask;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/payment/PaymentManager$PmsTask;)Lmiui/payment/PaymentManager$PaymentManagerCallback;
    .registers 2

    iget-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mCallback:Lmiui/payment/PaymentManager$PaymentManagerCallback;

    return-object v0
.end method

.method static synthetic access$302(Lmiui/payment/PaymentManager$PmsTask;Lmiui/payment/PaymentManager$PaymentManagerCallback;)Lmiui/payment/PaymentManager$PaymentManagerCallback;
    .registers 2

    iput-object p1, p0, Lmiui/payment/PaymentManager$PmsTask;->mCallback:Lmiui/payment/PaymentManager$PaymentManagerCallback;

    return-object p1
.end method

.method static synthetic access$400(Lmiui/payment/PaymentManager$PmsTask;ILjava/lang/String;Landroid/os/Bundle;)Ljava/lang/Exception;
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lmiui/payment/PaymentManager$PmsTask;->convertErrorCodeToException(ILjava/lang/String;Landroid/os/Bundle;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method private convertErrorCodeToException(ILjava/lang/String;Landroid/os/Bundle;)Ljava/lang/Exception;
    .registers 5

    const/4 v0, 0x3

    if-ne p1, v0, :cond_9

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_9
    const/4 v0, 0x5

    if-ne p1, v0, :cond_12

    new-instance v0, Lmiui/cloud/exception/AuthenticationFailureException;

    invoke-direct {v0, p2}, Lmiui/cloud/exception/AuthenticationFailureException;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string p2, "Unknown payment failure"

    :cond_1a
    new-instance v0, Lmiui/payment/exception/PaymentServiceFailureException;

    invoke-direct {v0, p1, p2, p3}, Lmiui/payment/exception/PaymentServiceFailureException;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method private ensureNotOnMainThread()V
    .registers 5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_22

    iget-object v1, p0, Lmiui/payment/PaymentManager$PmsTask;->this$0:Lmiui/payment/PaymentManager;

    # getter for: Lmiui/payment/PaymentManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmiui/payment/PaymentManager;->access$200(Lmiui/payment/PaymentManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_13

    goto :goto_22

    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v2, "PaymentManager"

    const-string v3, "calling this from your main thread can lead to deadlock and/or ANRs"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v1

    :cond_22
    :goto_22
    return-void
.end method

.method private internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/cloud/exception/OperationCancelledException;,
            Lmiui/cloud/exception/AuthenticationFailureException;,
            Lmiui/payment/exception/PaymentServiceFailureException;
        }
    .end annotation

    invoke-virtual {p0}, Lmiui/payment/PaymentManager$PmsTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-direct {p0}, Lmiui/payment/PaymentManager$PmsTask;->ensureNotOnMainThread()V

    :cond_9
    const/4 v0, 0x1

    if-nez p1, :cond_16

    :try_start_c
    invoke-virtual {p0}, Lmiui/payment/PaymentManager$PmsTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_c .. :try_end_12} :catch_70
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_c .. :try_end_12} :catch_63
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_12} :catch_61
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_c .. :try_end_12} :catch_26
    .catchall {:try_start_c .. :try_end_12} :catchall_24

    invoke-virtual {p0, v0}, Lmiui/payment/PaymentManager$PmsTask;->cancel(Z)Z

    return-object v1

    :cond_16
    :try_start_16
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, p2}, Lmiui/payment/PaymentManager$PmsTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_20
    .catch Ljava/util/concurrent/CancellationException; {:try_start_16 .. :try_end_20} :catch_70
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_16 .. :try_end_20} :catch_63
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_20} :catch_61
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_16 .. :try_end_20} :catch_26
    .catchall {:try_start_16 .. :try_end_20} :catchall_24

    invoke-virtual {p0, v0}, Lmiui/payment/PaymentManager$PmsTask;->cancel(Z)Z

    return-object v1

    :catchall_24
    move-exception v1

    goto :goto_79

    :catch_26
    move-exception v1

    :try_start_27
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v3, v2, Ljava/io/IOException;

    if-nez v3, :cond_5d

    instance-of v3, v2, Lmiui/payment/exception/PaymentServiceFailureException;

    if-nez v3, :cond_59

    instance-of v3, v2, Lmiui/cloud/exception/AuthenticationFailureException;

    if-nez v3, :cond_55

    instance-of v3, v2, Lmiui/cloud/exception/OperationCancelledException;

    if-nez v3, :cond_51

    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-nez v3, :cond_4d

    instance-of v3, v2, Ljava/lang/Error;

    if-eqz v3, :cond_47

    move-object v3, v2

    check-cast v3, Ljava/lang/Error;

    throw v3

    :cond_47
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_4d
    move-object v3, v2

    check-cast v3, Ljava/lang/RuntimeException;

    throw v3

    :cond_51
    move-object v3, v2

    check-cast v3, Lmiui/cloud/exception/OperationCancelledException;

    throw v3

    :cond_55
    move-object v3, v2

    check-cast v3, Lmiui/cloud/exception/AuthenticationFailureException;

    throw v3

    :cond_59
    move-object v3, v2

    check-cast v3, Lmiui/payment/exception/PaymentServiceFailureException;

    throw v3

    :cond_5d
    move-object v3, v2

    check-cast v3, Ljava/io/IOException;

    throw v3
    :try_end_61
    .catchall {:try_start_27 .. :try_end_61} :catchall_24

    :catch_61
    move-exception v1

    goto :goto_64

    :catch_63
    move-exception v1

    :goto_64
    invoke-virtual {p0, v0}, Lmiui/payment/PaymentManager$PmsTask;->cancel(Z)Z

    nop

    new-instance v0, Lmiui/cloud/exception/OperationCancelledException;

    const-string v1, "cancelled by exception"

    invoke-direct {v0, v1}, Lmiui/cloud/exception/OperationCancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_70
    move-exception v1

    :try_start_71
    new-instance v2, Lmiui/cloud/exception/OperationCancelledException;

    const-string v3, "cancelled by user"

    invoke-direct {v2, v3}, Lmiui/cloud/exception/OperationCancelledException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_79
    .catchall {:try_start_71 .. :try_end_79} :catchall_24

    :goto_79
    invoke-virtual {p0, v0}, Lmiui/payment/PaymentManager$PmsTask;->cancel(Z)Z

    throw v1
.end method


# virtual methods
.method protected bind()V
    .registers 4

    iget-boolean v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mIsBound:Z

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lmiui/payment/PaymentManager$PmsTask;->bindToPaymentService()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_16

    new-instance v0, Lmiui/payment/exception/PaymentServiceFailureException;

    const-string v2, "bind to service failed"

    invoke-direct {v0, v1, v2}, Lmiui/payment/exception/PaymentServiceFailureException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/payment/PaymentManager$PmsTask;->setException(Ljava/lang/Throwable;)V

    goto :goto_1f

    :cond_16
    iput-boolean v1, p0, Lmiui/payment/PaymentManager$PmsTask;->mIsBound:Z

    const-string v0, "PaymentManager"

    const-string v1, "service bound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    :goto_1f
    return-void
.end method

.method protected bindToPaymentService()Z
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.xmsf.action.PAYMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.payment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lmiui/payment/PaymentManager$PmsTask;->this$0:Lmiui/payment/PaymentManager;

    # getter for: Lmiui/payment/PaymentManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmiui/payment/PaymentManager;->access$200(Lmiui/payment/PaymentManager;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method protected abstract doWork()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected done()V
    .registers 3

    iget-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mCallback:Lmiui/payment/PaymentManager$PaymentManagerCallback;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_e

    iget-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->this$0:Lmiui/payment/PaymentManager;

    # getter for: Lmiui/payment/PaymentManager;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/payment/PaymentManager;->access$100(Lmiui/payment/PaymentManager;)Landroid/os/Handler;

    move-result-object v0

    :cond_e
    new-instance v1, Lmiui/payment/PaymentManager$PmsTask$3;

    invoke-direct {v1, p0}, Lmiui/payment/PaymentManager$PmsTask$3;-><init>(Lmiui/payment/PaymentManager$PmsTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_16
    iget-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->this$0:Lmiui/payment/PaymentManager;

    # getter for: Lmiui/payment/PaymentManager;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/payment/PaymentManager;->access$100(Lmiui/payment/PaymentManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/payment/PaymentManager$PmsTask;->mHostActivityMonitor:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method protected getResponse()Lmiui/payment/IPaymentManagerResponse;
    .registers 2

    iget-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mResponse:Lmiui/payment/IPaymentManagerResponse;

    return-object v0
.end method

.method public getResult()Landroid/os/Bundle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/cloud/exception/OperationCancelledException;,
            Lmiui/cloud/exception/AuthenticationFailureException;,
            Lmiui/payment/exception/PaymentServiceFailureException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lmiui/payment/PaymentManager$PmsTask;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getResult(JLjava/util/concurrent/TimeUnit;)Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/cloud/exception/OperationCancelledException;,
            Lmiui/cloud/exception/AuthenticationFailureException;,
            Lmiui/payment/exception/PaymentServiceFailureException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lmiui/payment/PaymentManager$PmsTask;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/cloud/exception/OperationCancelledException;,
            Lmiui/cloud/exception/AuthenticationFailureException;,
            Lmiui/payment/exception/PaymentServiceFailureException;
        }
    .end annotation

    invoke-virtual {p0}, Lmiui/payment/PaymentManager$PmsTask;->getResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/cloud/exception/OperationCancelledException;,
            Lmiui/cloud/exception/AuthenticationFailureException;,
            Lmiui/payment/exception/PaymentServiceFailureException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lmiui/payment/PaymentManager$PmsTask;->getResult(JLjava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method protected getService()Lmiui/payment/IPaymentManagerService;
    .registers 2

    iget-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mService:Lmiui/payment/IPaymentManagerService;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected, component:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PaymentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lmiui/payment/IPaymentManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/payment/IPaymentManagerService;

    move-result-object v0

    iput-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mService:Lmiui/payment/IPaymentManagerService;

    :try_start_1c
    invoke-virtual {p0}, Lmiui/payment/PaymentManager$PmsTask;->doWork()V

    iget-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->this$0:Lmiui/payment/PaymentManager;

    # getter for: Lmiui/payment/PaymentManager;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/payment/PaymentManager;->access$100(Lmiui/payment/PaymentManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/payment/PaymentManager$PmsTask;->mHostActivityMonitor:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception v0

    invoke-virtual {p0, v0}, Lmiui/payment/PaymentManager$PmsTask;->setException(Ljava/lang/Throwable;)V

    :goto_31
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    invoke-virtual {p0}, Lmiui/payment/PaymentManager$PmsTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "PaymentManager"

    const-string v1, "payment service disconnected, but task is not completed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lmiui/payment/exception/PaymentServiceFailureException;

    const/4 v1, 0x1

    const-string v2, "active service exits unexpectedly"

    invoke-direct {v0, v1, v2}, Lmiui/payment/exception/PaymentServiceFailureException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/payment/PaymentManager$PmsTask;->setException(Ljava/lang/Throwable;)V

    :cond_18
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mService:Lmiui/payment/IPaymentManagerService;

    return-void
.end method

.method protected set(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lmiui/payment/PaymentManager$PmsTask;->unBind()V

    return-void
.end method

.method protected bridge synthetic set(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lmiui/payment/PaymentManager$PmsTask;->set(Landroid/os/Bundle;)V

    return-void
.end method

.method protected setException(Ljava/lang/Throwable;)V
    .registers 2

    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lmiui/payment/PaymentManager$PmsTask;->unBind()V

    return-void
.end method

.method public final start()Lmiui/payment/PaymentManager$PaymentManagerFuture;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/payment/PaymentManager$PaymentManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lmiui/payment/PaymentManager$PmsTask;->bind()V

    return-object p0
.end method

.method protected unBind()V
    .registers 3

    iget-boolean v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mIsBound:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->this$0:Lmiui/payment/PaymentManager;

    # getter for: Lmiui/payment/PaymentManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lmiui/payment/PaymentManager;->access$200(Lmiui/payment/PaymentManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mIsBound:Z

    const-string v0, "PaymentManager"

    const-string v1, "service unbinded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
