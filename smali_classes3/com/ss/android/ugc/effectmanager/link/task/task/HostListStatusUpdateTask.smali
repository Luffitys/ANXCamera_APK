.class public Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;
.super Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;
.source "HostListStatusUpdateTask.java"


# static fields
.field private static final MAX_SORT_TIME:J = 0x7fffffffL

.field private static final TAG:Ljava/lang/String; = "HostListStatusUpdateTask"


# instance fields
.field private mHosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/link/model/host/Host;",
            ">;"
        }
    .end annotation
.end field

.field private mLinkSelector:Lcom/ss/android/ugc/effectmanager/link/LinkSelector;

.field private mSpeedApi:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ss/android/ugc/effectmanager/link/LinkSelector;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    const-string v0, "NORMAL"

    invoke-direct {p0, p2, p3, v0}, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;-><init>(Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;->mHosts:Ljava/util/List;

    iget-object p2, p0, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;->mHosts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p2, p0, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;->mHosts:Ljava/util/List;

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->getOriginHosts()Ljava/util/List;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->getSpeedApi()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;->mSpeedApi:Ljava/lang/String;

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;->mLinkSelector:Lcom/ss/android/ugc/effectmanager/link/LinkSelector;

    return-void
.end method

.method private getHostStatus(Lcom/ss/android/ugc/effectmanager/link/model/host/Host;J)V
    .locals 24

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    const-string v0, " "

    const-string v14, "HostListStatusUpdateTask"

    if-nez v13, :cond_0

    return-void

    :cond_0
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;->getSchema()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "://"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v12, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;->mSpeedApi:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v6, v12, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;->mLinkSelector:Lcom/ss/android/ugc/effectmanager/link/LinkSelector;

    invoke-virtual {v6}, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->getSpeedTimeOut()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v6, v12, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;->mLinkSelector:Lcom/ss/android/ugc/effectmanager/link/LinkSelector;

    invoke-virtual {v6}, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->getSpeedTimeOut()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v6, "X-SS-No-Cookie"

    const-string v8, "true"

    invoke-virtual {v7, v6, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long v2, v1, v16

    :try_start_3
    const-string v1, "X-TT-LOGID"

    invoke-virtual {v7, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v1, 0xc8

    if-ne v8, v1, :cond_1

    add-long v9, v2, p2

    :try_start_4
    invoke-virtual {v13, v9, v10}, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;->setSortTime(J)V

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ugc/effectmanager/link/model/blackRoom/BlackRoomItem;->resetStatus()V

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v10, 0x0

    const/16 v21, 0x1

    move-object/from16 v1, p0

    move-wide v5, v2

    move-object v2, v4

    move-object/from16 v3, p1

    move v4, v8

    move-wide/from16 p2, v5

    move-object/from16 v22, v7

    move v9, v8

    move-wide/from16 v7, v16

    move/from16 v23, v9

    move-object/from16 v9, v18

    move-object v12, v11

    move/from16 v11, v21

    :try_start_5
    invoke-direct/range {v1 .. v11}, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;->sendEvent(Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/link/model/host/Host;IJJLjava/lang/String;Ljava/lang/Exception;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sort speed time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-wide/from16 v10, p2

    :try_start_6
    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;->getSchema()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/ss/android/ugc/effectmanager/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sort weight time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;->getWeightTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;->getSchema()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/ss/android/ugc/effectmanager/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-wide/from16 v10, p2

    goto :goto_0

    :catch_2
    move-exception v0

    move-wide v10, v2

    move-object/from16 v22, v7

    move/from16 v23, v8

    :goto_0
    move-wide v5, v10

    move-object/from16 v9, v18

    move/from16 v4, v23

    move-object v10, v0

    goto/16 :goto_5

    :cond_1
    move-wide v10, v2

    move-object/from16 v22, v7

    move/from16 v23, v8

    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sort speed error code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move/from16 v12, v23

    :try_start_8
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/ss/android/ugc/effectmanager/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v7, 0x7fffffff

    invoke-virtual {v13, v7, v8}, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;->setSortTime(J)V

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const/4 v0, 0x0

    const/16 v19, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move v4, v12

    move-wide v5, v10

    move-wide/from16 v7, v16

    move-object/from16 v9, v18

    move-wide/from16 v20, v10

    move-object v10, v0

    move/from16 v11, v19

    :try_start_9
    invoke-direct/range {v1 .. v11}, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;->sendEvent(Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/link/model/host/Host;IJJLjava/lang/String;Ljava/lang/Exception;Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_1
    if-eqz v22, :cond_2

    goto/16 :goto_6

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    move-wide/from16 v20, v10

    goto :goto_2

    :catch_5
    move-exception v0

    move-wide/from16 v20, v10

    move/from16 v12, v23

    :goto_2
    move-object v10, v0

    move v4, v12

    move-object/from16 v9, v18

    goto :goto_3

    :catch_6
    move-exception v0

    move-wide/from16 v20, v2

    move-object/from16 v22, v7

    move v12, v8

    move-object v10, v0

    move-object v9, v4

    move v4, v12

    :goto_3
    move-wide/from16 v5, v20

    goto :goto_5

    :catch_7
    move-exception v0

    move-object/from16 v22, v7

    move v12, v8

    move-object v10, v0

    move-wide v5, v2

    move-object v9, v4

    move v4, v12

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object/from16 v22, v7

    goto :goto_7

    :catch_8
    move-exception v0

    move-object/from16 v22, v7

    move-object v10, v0

    move-wide v5, v2

    move-object v9, v4

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v22, v4

    goto :goto_7

    :catch_9
    move-exception v0

    move-object v10, v0

    move-wide v5, v2

    move-object v9, v4

    move-object/from16 v22, v9

    :goto_4
    move v4, v1

    :goto_5
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sort speed error = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/ss/android/ugc/effectmanager/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/32 v1, 0x7fffffff

    invoke-virtual {v13, v1, v2}, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;->setSortTime(J)V

    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-wide/from16 v7, v16

    invoke-direct/range {v1 .. v11}, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;->sendEvent(Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/link/model/host/Host;IJJLjava/lang/String;Ljava/lang/Exception;Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v22, :cond_2

    :goto_6
    invoke-virtual/range {v22 .. v22}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    return-void

    :catchall_2
    move-exception v0

    :goto_7
    if-eqz v22, :cond_3

    invoke-virtual/range {v22 .. v22}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v0
.end method

.method private sendEvent(Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/link/model/host/Host;IJJLjava/lang/String;Ljava/lang/Exception;Z)V
    .locals 13

    new-instance v0, Lcom/ss/android/ugc/effectmanager/link/task/result/HostStatusUpdateResult;

    new-instance v12, Lcom/ss/android/ugc/effectmanager/link/model/host/HostStatus;

    move-object v1, v12

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/ss/android/ugc/effectmanager/link/model/host/HostStatus;-><init>(Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/link/model/host/Host;IJJLjava/lang/String;Ljava/lang/Exception;Z)V

    const/4 v1, 0x0

    invoke-direct {v0, v12, v1}, Lcom/ss/android/ugc/effectmanager/link/task/result/HostStatusUpdateResult;-><init>(Lcom/ss/android/ugc/effectmanager/link/model/host/HostStatus;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    const/16 v1, 0x1e

    move-object v2, p0

    invoke-virtual {p0, v1, v0}, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->sendMessage(ILcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;)V

    return-void
.end method

.method private sendResults()V
    .locals 3

    new-instance v0, Lcom/ss/android/ugc/effectmanager/link/task/result/HostListStatusUpdateTaskResult;

    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;->mHosts:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/ugc/effectmanager/link/task/result/HostListStatusUpdateTaskResult;-><init>(Ljava/util/List;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    const/16 v1, 0x1f

    invoke-virtual {p0, v1, v0}, Lcom/ss/android/ugc/effectmanager/common/task/NormalTask;->sendMessage(ILcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;)V

    return-void
.end method

.method private sortHost()V
    .locals 7

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;->mHosts:Ljava/util/List;

    new-instance v1, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask$1;

    invoke-direct {v1, p0}, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask$1;-><init>(Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;->mHosts:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;->mHosts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;->mHosts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "HostListStatusUpdateTask"

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;->mHosts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "weight sort = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;->getSortTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;->getSchema()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;->mSpeedApi:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ss/android/ugc/effectmanager/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;->mHosts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;->mHosts:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;

    invoke-virtual {v2}, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;->mHosts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;->mHosts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "speed distinct = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;->mHosts:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " thread = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/ss/android/ugc/effectmanager/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private speedMeasure()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;->mHosts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;->mHosts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;->setSortTime(J)V

    move v2, v0

    :goto_1
    iget-object v3, p0, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;->mLinkSelector:Lcom/ss/android/ugc/effectmanager/link/LinkSelector;

    invoke-virtual {v3}, Lcom/ss/android/ugc/effectmanager/link/LinkSelector;->getRepeatTime()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;->mHosts:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;

    iget-object v4, p0, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;->mHosts:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;

    invoke-virtual {v4}, Lcom/ss/android/ugc/effectmanager/link/model/host/Host;->getSortTime()J

    move-result-wide v4

    invoke-direct {p0, v3, v4, v5}, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;->getHostStatus(Lcom/ss/android/ugc/effectmanager/link/model/host/Host;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;->speedMeasure()V

    invoke-direct {p0}, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;->sortHost()V

    invoke-direct {p0}, Lcom/ss/android/ugc/effectmanager/link/task/task/HostListStatusUpdateTask;->sendResults()V

    return-void
.end method
