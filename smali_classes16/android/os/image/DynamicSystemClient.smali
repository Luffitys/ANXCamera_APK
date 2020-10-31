.class public Landroid/os/image/DynamicSystemClient;
.super Ljava/lang/Object;
.source "DynamicSystemClient.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;,
        Landroid/os/image/DynamicSystemClient$IncomingHandler;,
        Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;,
        Landroid/os/image/DynamicSystemClient$StatusChangedCause;,
        Landroid/os/image/DynamicSystemClient$InstallationStatus;
    }
.end annotation


# static fields
.field public static final ACTION_NOTIFY_IF_IN_USE:Ljava/lang/String; = "android.os.image.action.NOTIFY_IF_IN_USE"

.field public static final ACTION_START_INSTALL:Ljava/lang/String; = "android.os.image.action.START_INSTALL"

.field public static final CAUSE_ERROR_EXCEPTION:I = 0x6

.field public static final CAUSE_ERROR_INVALID_URL:I = 0x4

.field public static final CAUSE_ERROR_IO:I = 0x3

.field public static final CAUSE_ERROR_IPC:I = 0x5

.field public static final CAUSE_INSTALL_CANCELLED:I = 0x2

.field public static final CAUSE_INSTALL_COMPLETED:I = 0x1

.field public static final CAUSE_NOT_SPECIFIED:I = 0x0

.field public static final KEY_EXCEPTION_DETAIL:Ljava/lang/String; = "KEY_EXCEPTION_DETAIL"

.field public static final KEY_INSTALLED_SIZE:Ljava/lang/String; = "KEY_INSTALLED_SIZE"

.field public static final KEY_SYSTEM_SIZE:Ljava/lang/String; = "KEY_SYSTEM_SIZE"

.field public static final KEY_USERDATA_SIZE:Ljava/lang/String; = "KEY_USERDATA_SIZE"

.field public static final MSG_POST_STATUS:I = 0x3

.field public static final MSG_REGISTER_LISTENER:I = 0x1

.field public static final MSG_UNREGISTER_LISTENER:I = 0x2

.field public static final STATUS_IN_PROGRESS:I = 0x2

.field public static final STATUS_IN_USE:I = 0x4

.field public static final STATUS_NOT_STARTED:I = 0x1

.field public static final STATUS_READY:I = 0x3

.field public static final STATUS_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DynSystemClient"


# instance fields
.field private mBound:Z

.field private final mConnection:Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mListener:Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;

.field private final mMessenger:Landroid/os/Messenger;

.field private mService:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/image/DynamicSystemClient;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;-><init>(Landroid/os/image/DynamicSystemClient;Landroid/os/image/DynamicSystemClient$1;)V

    iput-object v0, p0, Landroid/os/image/DynamicSystemClient;->mConnection:Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Landroid/os/image/DynamicSystemClient$IncomingHandler;

    invoke-direct {v1, p0}, Landroid/os/image/DynamicSystemClient$IncomingHandler;-><init>(Landroid/os/image/DynamicSystemClient;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/os/image/DynamicSystemClient;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$000(Landroid/os/image/DynamicSystemClient;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/image/DynamicSystemClient;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Landroid/os/image/DynamicSystemClient;)Landroid/os/Messenger;
    .registers 2

    iget-object v0, p0, Landroid/os/image/DynamicSystemClient;->mService:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$102(Landroid/os/image/DynamicSystemClient;Landroid/os/Messenger;)Landroid/os/Messenger;
    .registers 2

    iput-object p1, p0, Landroid/os/image/DynamicSystemClient;->mService:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$200(Landroid/os/image/DynamicSystemClient;)Landroid/os/Messenger;
    .registers 2

    iget-object v0, p0, Landroid/os/image/DynamicSystemClient;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$300(Landroid/os/image/DynamicSystemClient;)Ljava/util/concurrent/Executor;
    .registers 2

    iget-object v0, p0, Landroid/os/image/DynamicSystemClient;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$400(Landroid/os/image/DynamicSystemClient;)Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;
    .registers 2

    iget-object v0, p0, Landroid/os/image/DynamicSystemClient;->mListener:Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;

    return-object v0
.end method

.method private featureFlagEnabled()Z
    .registers 3

    const-string/jumbo v0, "persist.sys.fflag.override.settings_dynamic_system"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .registers 21

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget v0, v8, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    goto :goto_4d

    :cond_a
    iget v15, v8, Landroid/os/Message;->arg1:I

    iget v14, v8, Landroid/os/Message;->arg2:I

    iget-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    check-cast v12, Landroid/os/Bundle;

    const-string v0, "KEY_INSTALLED_SIZE"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    const-string v0, "KEY_EXCEPTION_DETAIL"

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/ParcelableException;

    if-nez v18, :cond_27

    const/4 v0, 0x0

    goto :goto_2b

    :cond_27
    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelableException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    :goto_2b
    move-object v6, v0

    iget-object v9, v7, Landroid/os/image/DynamicSystemClient;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v9, :cond_40

    new-instance v10, Landroid/os/image/-$$Lambda$DynamicSystemClient$j9BjPR3q6kOr-cwQrk0KAsVFWNQ;

    move-object v0, v10

    move-object/from16 v1, p0

    move v2, v15

    move v3, v14

    move-wide/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Landroid/os/image/-$$Lambda$DynamicSystemClient$j9BjPR3q6kOr-cwQrk0KAsVFWNQ;-><init>(Landroid/os/image/DynamicSystemClient;IIJLjava/lang/Throwable;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_4d

    :cond_40
    iget-object v9, v7, Landroid/os/image/DynamicSystemClient;->mListener:Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;

    move v10, v15

    move v11, v14

    move-object v0, v12

    move-wide/from16 v12, v16

    move v1, v14

    move-object v14, v6

    invoke-interface/range {v9 .. v14}, Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;->onStatusChanged(IIJLjava/lang/Throwable;)V

    nop

    :goto_4d
    return-void
.end method


# virtual methods
.method public bind()V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Landroid/os/image/DynamicSystemClient;->featureFlagEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "DynSystemClient"

    const-string/jumbo v1, "settings_dynamic_system not enabled; bind() aborted."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.dynsystem"

    const-string v2, "com.android.dynsystem.DynamicSystemInstallationService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Landroid/os/image/DynamicSystemClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/os/image/DynamicSystemClient;->mConnection:Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v3, p0, Landroid/os/image/DynamicSystemClient;->mBound:Z

    return-void
.end method

.method public synthetic lambda$handleMessage$0$DynamicSystemClient(IIJLjava/lang/Throwable;)V
    .registers 12

    iget-object v0, p0, Landroid/os/image/DynamicSystemClient;->mListener:Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;->onStatusChanged(IIJLjava/lang/Throwable;)V

    return-void
.end method

.method public setOnStatusChangedListener(Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;)V
    .registers 3

    iput-object p1, p0, Landroid/os/image/DynamicSystemClient;->mListener:Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/image/DynamicSystemClient;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public setOnStatusChangedListener(Ljava/util/concurrent/Executor;Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;)V
    .registers 3

    iput-object p2, p0, Landroid/os/image/DynamicSystemClient;->mListener:Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;

    iput-object p1, p0, Landroid/os/image/DynamicSystemClient;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public start(Landroid/net/Uri;J)V
    .registers 10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/os/image/DynamicSystemClient;->start(Landroid/net/Uri;JJ)V

    return-void
.end method

.method public start(Landroid/net/Uri;JJ)V
    .registers 9

    invoke-direct {p0}, Landroid/os/image/DynamicSystemClient;->featureFlagEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "DynSystemClient"

    const-string/jumbo v1, "settings_dynamic_system not enabled; start() aborted."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.dynsystem"

    const-string v2, "com.android.dynsystem.VerificationActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "android.os.image.action.START_INSTALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "KEY_SYSTEM_SIZE"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "KEY_USERDATA_SIZE"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Landroid/os/image/DynamicSystemClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public unbind()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-boolean v0, p0, Landroid/os/image/DynamicSystemClient;->mBound:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/os/image/DynamicSystemClient;->mService:Landroid/os/Messenger;

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_b
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/os/image/DynamicSystemClient;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Landroid/os/image/DynamicSystemClient;->mService:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    goto :goto_21

    :catch_19
    move-exception v0

    const-string v1, "DynSystemClient"

    const-string v2, "Unable to unregister from installation service"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    :goto_21
    iget-object v0, p0, Landroid/os/image/DynamicSystemClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/os/image/DynamicSystemClient;->mConnection:Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/image/DynamicSystemClient;->mBound:Z

    return-void
.end method
