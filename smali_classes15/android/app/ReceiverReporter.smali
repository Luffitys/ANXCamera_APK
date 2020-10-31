.class public Landroid/app/ReceiverReporter;
.super Ljava/lang/Object;
.source "ReceiverReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ReceiverReporter$ReceiverHandler;,
        Landroid/app/ReceiverReporter$ReceiverObj;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final IS_STABLE_VERSION:Z

.field private static final MAX_QUANTITY:I = 0x1e

.field private static RE_LIST:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/mqsas/sdk/event/BroadcastEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MIUI-ReceiverReporter"

.field public static mDispatchThreshold:J

.field private static mHandleThreshold:J

.field private static mIndex:I

.field private static final mObject:Ljava/lang/Object;

.field private static volatile mReHandler:Landroid/app/ReceiverReporter$ReceiverHandler;

.field private static mReThread:Landroid/os/HandlerThread;

.field private static mReceiverMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ReceiverReporter$ReceiverObj;",
            ">;"
        }
    .end annotation
.end field

.field private static sPackageName:Ljava/lang/String;

.field private static sProcessName:Ljava/lang/String;

.field private static sSystemBootCompleted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    sput-object v0, Landroid/app/ReceiverReporter;->sProcessName:Ljava/lang/String;

    sput-object v0, Landroid/app/ReceiverReporter;->sPackageName:Ljava/lang/String;

    sput-object v0, Landroid/app/ReceiverReporter;->mReHandler:Landroid/app/ReceiverReporter$ReceiverHandler;

    sput-object v0, Landroid/app/ReceiverReporter;->mReThread:Landroid/os/HandlerThread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/ReceiverReporter;->mObject:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/app/ReceiverReporter;->RE_LIST:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/app/ReceiverReporter;->mReceiverMap:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput v0, Landroid/app/ReceiverReporter;->mIndex:I

    const-string/jumbo v0, "persist.receiver.dispatch"

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Landroid/app/ReceiverReporter;->mDispatchThreshold:J

    const-string/jumbo v0, "persist.receiver.handle"

    const-wide/16 v1, 0x7d0

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Landroid/app/ReceiverReporter;->mHandleThreshold:J

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    sput-boolean v0, Landroid/app/ReceiverReporter;->IS_STABLE_VERSION:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    invoke-static {}, Landroid/app/ReceiverReporter;->isSystemBootCompleted()Z

    move-result v0

    return v0
.end method

.method private static currentPackageName()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/app/ReceiverReporter;->sPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "android"

    sput-object v1, Landroid/app/ReceiverReporter;->sPackageName:Ljava/lang/String;

    goto :goto_19

    :cond_17
    sput-object v0, Landroid/app/ReceiverReporter;->sPackageName:Ljava/lang/String;

    :cond_19
    :goto_19
    sget-object v0, Landroid/app/ReceiverReporter;->sPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private static currentProcessName()Ljava/lang/String;
    .registers 2

    sget-object v0, Landroid/app/ReceiverReporter;->sProcessName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    const-string/jumbo v1, "system_server"

    sput-object v1, Landroid/app/ReceiverReporter;->sProcessName:Ljava/lang/String;

    goto :goto_1a

    :cond_18
    sput-object v0, Landroid/app/ReceiverReporter;->sProcessName:Ljava/lang/String;

    :cond_1a
    :goto_1a
    sget-object v0, Landroid/app/ReceiverReporter;->sProcessName:Ljava/lang/String;

    return-object v0
.end method

.method static getReceiverHandler()Landroid/os/Handler;
    .registers 3

    sget-object v0, Landroid/app/ReceiverReporter;->mReHandler:Landroid/app/ReceiverReporter$ReceiverHandler;

    if-nez v0, :cond_2a

    sget-object v0, Landroid/app/ReceiverReporter;->mObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Landroid/app/ReceiverReporter;->mReHandler:Landroid/app/ReceiverReporter$ReceiverHandler;

    if-nez v1, :cond_25

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "receiver-thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Landroid/app/ReceiverReporter;->mReThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/app/ReceiverReporter$ReceiverHandler;

    sget-object v2, Landroid/app/ReceiverReporter;->mReThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ReceiverReporter$ReceiverHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Landroid/app/ReceiverReporter;->mReHandler:Landroid/app/ReceiverReporter$ReceiverHandler;

    :cond_25
    monitor-exit v0

    goto :goto_2a

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_27

    throw v1

    :cond_2a
    :goto_2a
    sget-object v0, Landroid/app/ReceiverReporter;->mReHandler:Landroid/app/ReceiverReporter$ReceiverHandler;

    return-object v0
.end method

.method private static isSystemBootCompleted()Z
    .registers 2

    sget-boolean v0, Landroid/app/ReceiverReporter;->sSystemBootCompleted:Z

    if-nez v0, :cond_13

    const-string/jumbo v0, "sys.boot_completed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/app/ReceiverReporter;->sSystemBootCompleted:Z

    :cond_13
    sget-boolean v0, Landroid/app/ReceiverReporter;->sSystemBootCompleted:Z

    return v0
.end method

.method static onReceiverFinished(Landroid/content/Intent;JJJLjava/lang/String;Z)V
    .registers 25

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-object/from16 v6, p7

    sget-boolean v7, Landroid/app/ReceiverReporter;->IS_STABLE_VERSION:Z

    if-eqz v7, :cond_d

    return-void

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_15

    const-string v7, "null"

    :cond_15
    invoke-static {}, Landroid/app/ReceiverReporter;->currentPackageName()Ljava/lang/String;

    move-result-object v8

    sub-long v9, v2, v0

    sget-wide v11, Landroid/app/ReceiverReporter;->mDispatchThreshold:J

    cmp-long v9, v9, v11

    if-gez v9, :cond_2e

    sub-long v9, v4, v2

    sget-wide v11, Landroid/app/ReceiverReporter;->mHandleThreshold:J

    cmp-long v9, v9, v11

    if-ltz v9, :cond_2a

    goto :goto_2e

    :cond_2a
    move/from16 v10, p8

    goto/16 :goto_d4

    :cond_2e
    :goto_2e
    new-instance v9, Lmiui/mqsas/sdk/event/BroadcastEvent;

    invoke-direct {v9}, Lmiui/mqsas/sdk/event/BroadcastEvent;-><init>()V

    const/16 v10, 0x41

    invoke-virtual {v9, v10}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setType(I)V

    invoke-virtual {v9, v7}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setAction(Ljava/lang/String;)V

    invoke-virtual {v9, v0, v1}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setEnTime(J)V

    invoke-virtual {v9, v2, v3}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setDisTime(J)V

    invoke-virtual {v9, v4, v5}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setFinTime(J)V

    invoke-virtual {v9, v6}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setBrReceiver(Ljava/lang/String;)V

    move/from16 v10, p8

    invoke-virtual {v9, v10}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setQuWorked(Z)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-virtual {v9, v11}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setPid(I)V

    invoke-static {}, Landroid/app/ReceiverReporter;->currentProcessName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setProcessName(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setPackageName(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v9, v11, v12}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setTimeStamp(J)V

    const-string v11, "android"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-virtual {v9, v11}, Lmiui/mqsas/sdk/event/BroadcastEvent;->setSystem(Z)V

    sget v11, Landroid/app/ReceiverReporter;->mIndex:I

    const/16 v12, 0x1e

    const/4 v13, 0x0

    if-ltz v11, :cond_76

    if-le v11, v12, :cond_77

    :cond_76
    move v11, v13

    :cond_77
    sput v11, Landroid/app/ReceiverReporter;->mIndex:I

    new-instance v11, Landroid/app/ReceiverReporter$ReceiverObj;

    invoke-direct {v11, v7, v8, v6}, Landroid/app/ReceiverReporter$ReceiverObj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget v14, Landroid/app/ReceiverReporter;->mIndex:I

    if-eqz v14, :cond_98

    if-gt v14, v12, :cond_98

    sget-object v14, Landroid/app/ReceiverReporter;->mReceiverMap:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_98

    sget-object v12, Landroid/app/ReceiverReporter;->mReceiverMap:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    sget-object v13, Landroid/app/ReceiverReporter;->RE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v13, v12, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_d4

    :cond_98
    sget v14, Landroid/app/ReceiverReporter;->mIndex:I

    if-lt v14, v12, :cond_c4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v12

    iput v13, v12, Landroid/os/Message;->what:I

    new-instance v14, Landroid/content/pm/ParceledListSlice;

    sget-object v15, Landroid/app/ReceiverReporter;->RE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    invoke-direct {v14, v15}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    iput-object v14, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Landroid/app/ReceiverReporter;->getReceiverHandler()Landroid/os/Handler;

    move-result-object v14

    invoke-virtual {v14, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object v14, Landroid/app/ReceiverReporter;->RE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    sget-object v14, Landroid/app/ReceiverReporter;->mReceiverMap:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    sput v13, Landroid/app/ReceiverReporter;->mIndex:I

    :cond_c4
    sget v12, Landroid/app/ReceiverReporter;->mIndex:I

    add-int/lit8 v12, v12, 0x1

    sput v12, Landroid/app/ReceiverReporter;->mIndex:I

    sget-object v12, Landroid/app/ReceiverReporter;->mReceiverMap:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v12, Landroid/app/ReceiverReporter;->RE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_d4
    return-void
.end method
