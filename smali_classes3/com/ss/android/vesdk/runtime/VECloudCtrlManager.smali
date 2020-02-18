.class public Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;
.super Ljava/lang/Object;
.source "VECloudCtrlManager.java"


# static fields
.field private static COMMANDS:[Ljava/lang/String; = null

.field private static TAG:Ljava/lang/String; = "VECloudCtrlManager"

.field private static volatile mTECloudCtrlManager:Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;


# instance fields
.field private mCloudCtrlInvoker:Lcom/ss/android/ttve/common/TECloudCtrlInvoker;

.field private mLogStatus:Z

.field private mWorkpsace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "vesdk_log_command"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->COMMANDS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->mLogStatus:Z

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->mWorkpsace:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->mLogStatus:Z

    new-instance v0, Lcom/ss/android/ttve/common/TECloudCtrlInvoker;

    invoke-direct {v0}, Lcom/ss/android/ttve/common/TECloudCtrlInvoker;-><init>()V

    iput-object v0, p0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->mCloudCtrlInvoker:Lcom/ss/android/ttve/common/TECloudCtrlInvoker;

    return-void
.end method

.method private doCommand(Ljava/lang/String;Ljava/lang/String;)I
    .locals 16
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "sign"

    const-string v3, "level"

    const-string v4, "endtime"

    const-string v5, "starttime"

    const-string v6, "enable"

    const-string v7, ""

    const/4 v8, -0x1

    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v10, p2

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, 0x79ce163c

    const/4 v12, 0x0

    if-eq v10, v11, :cond_0

    goto :goto_0

    :cond_0
    const-string v10, "vesdk_log_command"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v10, v12

    goto :goto_1

    :cond_1
    :goto_0
    move v10, v8

    :goto_1
    if-eqz v10, :cond_2

    sget-object v0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->TAG:Ljava/lang/String;

    const-string v3, " json contail invalid command "

    invoke-static {v0, v3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x2

    move v8, v0

    goto/16 :goto_a

    :cond_2
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, "false"

    if-eqz v10, :cond_3

    :try_start_1
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    move-object v6, v11

    :goto_2
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v13, "2018-12-08 00:00:00"

    if-eqz v10, :cond_4

    :try_start_2
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_4
    move-object v5, v13

    :goto_3
    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_5
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_6
    move-object v3, v7

    :goto_4
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_7
    move-object v0, v7

    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v9, v1, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->mCloudCtrlInvoker:Lcom/ss/android/ttve/common/TECloudCtrlInvoker;

    invoke-virtual {v9, v4, v0}, Lcom/ss/android/ttve/common/TECloudCtrlInvoker;->verifyJson(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {v1, v2, v7}, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->storeCommand(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->TAG:Ljava/lang/String;

    const-string v3, "Cloud Ctrl Command Json is doctored"

    invoke-static {v0, v3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v8

    :cond_8
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v13}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sget-object v0, Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;->LEVEL3:Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v15, 0x44

    if-eq v0, v15, :cond_9

    goto :goto_6

    :cond_9
    const-string v0, "D"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v12

    goto :goto_7

    :cond_a
    :goto_6
    move v0, v8

    :goto_7
    if-eqz v0, :cond_b

    sget-object v0, Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;->LEVEL3:Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;

    goto :goto_8

    :cond_b
    sget-object v0, Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;->LEVEL0:Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;

    :goto_8
    iget-boolean v3, v1, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->mLogStatus:Z

    if-nez v3, :cond_d

    const-string v3, "true"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    cmp-long v3, v13, v4

    if-ltz v3, :cond_d

    cmp-long v3, v13, v9

    if-gez v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->mWorkpsace:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/vesdklog"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->TAG:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ss/android/ttve/common/TESpdLogManager;->getInstance()Lcom/ss/android/ttve/common/TESpdLogManager;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    const/4 v6, 0x3

    invoke-virtual {v4, v3, v5, v6}, Lcom/ss/android/ttve/common/TESpdLogManager;->initSpdLog(Ljava/lang/String;II)I

    move-result v3

    if-gez v3, :cond_c

    sget-object v0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " TESpdLog init fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x3

    return v0

    :cond_c
    invoke-static {}, Lcom/ss/android/ttve/common/TESpdLogManager;->getInstance()Lcom/ss/android/ttve/common/TESpdLogManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/ss/android/ttve/common/TESpdLogManager;->setLevel(Lcom/ss/android/ttve/common/TESpdLogManager$InfoLevel;)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->mLogStatus:Z

    goto :goto_9

    :cond_d
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    cmp-long v0, v13, v4

    if-gez v0, :cond_10

    cmp-long v0, v13, v9

    if-ltz v0, :cond_10

    :cond_e
    iget-boolean v0, v1, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->mLogStatus:Z

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/ss/android/ttve/common/TESpdLogManager;->getInstance()Lcom/ss/android/ttve/common/TESpdLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TESpdLogManager;->close()V

    iput-boolean v12, v1, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->mLogStatus:Z

    :cond_f
    sget-object v0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " expired"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v7}, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->storeCommand(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_10
    :goto_9
    move v8, v12

    goto :goto_a

    :catch_0
    move-exception v0

    sget-object v3, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " json parse failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v7}, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->storeCommand(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    return v8
.end method

.method public static getInstance()Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;
    .locals 2

    sget-object v0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->mTECloudCtrlManager:Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->mTECloudCtrlManager:Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;

    invoke-direct {v1}, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;-><init>()V

    sput-object v1, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->mTECloudCtrlManager:Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->mTECloudCtrlManager:Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;

    return-object v0
.end method

.method private storeCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->getInstance()Lcom/ss/android/vesdk/runtime/persistence/VESP;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public closeCloudControlRes()V
    .locals 1

    iget-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->mLogStatus:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/ss/android/ttve/common/TESpdLogManager;->getInstance()Lcom/ss/android/ttve/common/TESpdLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/ttve/common/TESpdLogManager;->close()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->mLogStatus:Z

    :cond_0
    return-void
.end method

.method public execStoredCommands(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->mWorkpsace:Ljava/lang/String;

    sget-object p1, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->COMMANDS:[Ljava/lang/String;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-static {}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->getInstance()Lcom/ss/android/vesdk/runtime/persistence/VESP;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-direct {p0, v2, v3}, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->doCommand(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public storeCloudControlCommand(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/ss/android/vesdk/VELogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "command"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->getInstance()Lcom/ss/android/vesdk/runtime/persistence/VESP;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ss/android/vesdk/runtime/persistence/VESP;->init(Landroid/content/Context;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->storeCommand(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/ss/android/vesdk/runtime/VECloudCtrlManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " json parse failed "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ss/android/vesdk/VELogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
