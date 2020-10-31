.class Landroid/widget/TranslationManager;
.super Ljava/lang/Object;
.source "TranslationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TranslationManager$TranslateTask;,
        Landroid/widget/TranslationManager$TranslationConnection;,
        Landroid/widget/TranslationManager$TranslationRemoteCallback;
    }
.end annotation


# static fields
.field static final MSG_QUERY_FAIL:I = 0x1

.field static final MSG_QUERY_SUCCESS:I = 0x0

.field private static final STATE_DESTROYING:I = 0x3

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_INITIALIZING:I = 0x1

.field private static final STATE_TRANSLATING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TranslationManager"

.field private static final TRANSLATION_SERVICE_CLASS:Ljava/lang/String; = "com.miui.translationservice.TranslationService"

.field private static final TRANSLATION_SERVICE_PACKAGE:Ljava/lang/String; = "com.miui.translationservice"


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mMainHandler:Landroid/os/Handler;

.field private mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

.field private mService:Lcom/miui/translationservice/ITranslation;

.field private mState:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TranslationManager;->mService:Lcom/miui/translationservice/ITranslation;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/widget/TranslationManager;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TranslationManager;->mState:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TranslationManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/widget/TranslationManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Landroid/widget/TranslationManager;)Landroid/content/ServiceConnection;
    .registers 2

    iget-object v0, p0, Landroid/widget/TranslationManager;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/TranslationManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/widget/TranslationManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/TranslationManager;Lcom/miui/translationservice/ITranslation;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/TranslationManager;->onInitialized(Lcom/miui/translationservice/ITranslation;)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/TranslationManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/TranslationManager;->onDestroyed()V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/TranslationManager;Landroid/widget/TranslationManager$TranslateTask;Lcom/miui/translationservice/provider/TranslationResult;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/TranslationManager;->onTranslateDone(Landroid/widget/TranslationManager$TranslateTask;Lcom/miui/translationservice/provider/TranslationResult;)V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/TranslationManager;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/widget/TranslationManager;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/TranslationManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/TranslationManager;->onDisconnected()V

    return-void
.end method

.method private deliverResult(Lcom/miui/translationservice/provider/TranslationResult;)V
    .registers 6

    iget-object v0, p0, Landroid/widget/TranslationManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-nez p1, :cond_10

    iget-object v0, p0, Landroid/widget/TranslationManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    goto :goto_17

    :cond_10
    iget-object v0, p0, Landroid/widget/TranslationManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    :goto_17
    iget-object v1, p0, Landroid/widget/TranslationManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private doDestroy()V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/TranslationManager;->mState:I

    new-instance v0, Landroid/widget/TranslationManager$2;

    invoke-direct {v0, p0}, Landroid/widget/TranslationManager$2;-><init>(Landroid/widget/TranslationManager;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TranslationManager$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private doInitialize()V
    .registers 4

    const-string v0, "TranslationManager"

    const-string/jumbo v1, "try to bind translation service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TranslationManager;->mState:I

    iget-object v0, p0, Landroid/widget/TranslationManager;->mConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_17

    new-instance v0, Landroid/widget/TranslationManager$TranslationConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/TranslationManager$TranslationConnection;-><init>(Landroid/widget/TranslationManager;Landroid/widget/TranslationManager$1;)V

    iput-object v0, p0, Landroid/widget/TranslationManager;->mConnection:Landroid/content/ServiceConnection;

    :cond_17
    new-instance v0, Landroid/widget/TranslationManager$1;

    invoke-direct {v0, p0}, Landroid/widget/TranslationManager$1;-><init>(Landroid/widget/TranslationManager;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TranslationManager$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private doTranslate()V
    .registers 7

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TranslationManager;->mState:I

    :try_start_3
    iget-object v0, p0, Landroid/widget/TranslationManager;->mService:Lcom/miui/translationservice/ITranslation;

    iget-object v1, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    iget-object v1, v1, Landroid/widget/TranslationManager$TranslateTask;->mSource:Ljava/lang/String;

    iget-object v2, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    iget-object v2, v2, Landroid/widget/TranslationManager$TranslateTask;->mTarget:Ljava/lang/String;

    iget-object v3, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    iget-object v3, v3, Landroid/widget/TranslationManager$TranslateTask;->mWord:Ljava/lang/String;

    new-instance v4, Landroid/widget/TranslationManager$TranslationRemoteCallback;

    iget-object v5, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    invoke-direct {v4, p0, v5}, Landroid/widget/TranslationManager$TranslationRemoteCallback;-><init>(Landroid/widget/TranslationManager;Landroid/widget/TranslationManager$TranslateTask;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/miui/translationservice/ITranslation;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/translationservice/ITranslationRemoteCallback;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1b} :catch_1c

    goto :goto_2a

    :catch_1c
    move-exception v0

    const-string v1, "TranslationManager"

    const-string v2, "bind translation service failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/TranslationManager;->onTranslateDone(Landroid/widget/TranslationManager$TranslateTask;Lcom/miui/translationservice/provider/TranslationResult;)V

    :goto_2a
    return-void
.end method

.method private onDestroyed()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TranslationManager;->mService:Lcom/miui/translationservice/ITranslation;

    iput-object v0, p0, Landroid/widget/TranslationManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TranslationManager;->mState:I

    iget-object v0, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    if-eqz v0, :cond_17

    const-string v0, "TranslationManager"

    const-string/jumbo v1, "new task received when destroying"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/TranslationManager;->doInitialize()V

    :cond_17
    return-void
.end method

.method private onDisconnected()V
    .registers 3

    iget v0, p0, Landroid/widget/TranslationManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    const-string v0, "TranslationManager"

    const-string v1, "disconnected during translating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TranslationManager;->mService:Lcom/miui/translationservice/ITranslation;

    invoke-direct {p0, v0}, Landroid/widget/TranslationManager;->deliverResult(Lcom/miui/translationservice/provider/TranslationResult;)V

    iput-object v0, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    invoke-direct {p0}, Landroid/widget/TranslationManager;->doDestroy()V

    :cond_17
    return-void
.end method

.method private onInitialized(Lcom/miui/translationservice/ITranslation;)V
    .registers 4

    const-string v0, "TranslationManager"

    if-eqz p1, :cond_1e

    iput-object p1, p0, Landroid/widget/TranslationManager;->mService:Lcom/miui/translationservice/ITranslation;

    iget-object v1, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    if-eqz v1, :cond_14

    const-string/jumbo v1, "translate pending task"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/TranslationManager;->doTranslate()V

    goto :goto_32

    :cond_14
    const-string/jumbo v1, "no pending task, unbind service directly"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/TranslationManager;->doDestroy()V

    goto :goto_32

    :cond_1e
    const-string v1, "bind service failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TranslationManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/TranslationManager;->mState:I

    iget-object v1, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    if-eqz v1, :cond_32

    iput-object v0, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    invoke-direct {p0, v0}, Landroid/widget/TranslationManager;->deliverResult(Lcom/miui/translationservice/provider/TranslationResult;)V

    :cond_32
    :goto_32
    return-void
.end method

.method private onTranslateDone(Landroid/widget/TranslationManager$TranslateTask;Lcom/miui/translationservice/provider/TranslationResult;)V
    .registers 6

    iget-object v0, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    invoke-static {v0, p1}, Landroid/widget/TranslationManager$TranslateTask;->equals(Landroid/widget/TranslationManager$TranslateTask;Landroid/widget/TranslationManager$TranslateTask;)Z

    move-result v0

    const-string v1, "TranslationManager"

    if-eqz v0, :cond_16

    const-string/jumbo v0, "translate task done"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Landroid/widget/TranslationManager;->deliverResult(Lcom/miui/translationservice/provider/TranslationResult;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    :cond_16
    iget v0, p0, Landroid/widget/TranslationManager;->mState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_32

    iget-object v0, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    if-nez v0, :cond_29

    const-string/jumbo v0, "no pending task found. release service"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/TranslationManager;->doDestroy()V

    goto :goto_32

    :cond_29
    const-string/jumbo v0, "task changed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/widget/TranslationManager;->doTranslate()V

    :cond_32
    :goto_32
    return-void
.end method


# virtual methods
.method isAvailable()Z
    .registers 2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Landroid/widget/TranslationManager$TranslateTask;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/TranslationManager$TranslateTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/widget/TranslationManager;->mPendingTask:Landroid/widget/TranslationManager$TranslateTask;

    iget v0, p0, Landroid/widget/TranslationManager;->mState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_f

    invoke-direct {p0}, Landroid/widget/TranslationManager;->doInitialize()V

    :cond_f
    return-void
.end method
