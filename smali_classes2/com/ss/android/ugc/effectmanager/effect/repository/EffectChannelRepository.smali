.class public Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;
.super Ljava/lang/Object;
.source "EffectChannelRepository.java"

# interfaces
.implements Lcom/ss/android/ugc/effectmanager/common/WeakHandler$IHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository$EffectListListener;
    }
.end annotation


# instance fields
.field private mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

.field private mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

.field private mEffectListListener:Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository$EffectListListener;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/ss/android/ugc/effectmanager/context/EffectContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    iget-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/context/EffectContext;->getEffectConfiguration()Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    new-instance p1, Lcom/ss/android/ugc/effectmanager/common/WeakHandler;

    invoke-direct {p1, p0}, Lcom/ss/android/ugc/effectmanager/common/WeakHandler;-><init>(Lcom/ss/android/ugc/effectmanager/common/WeakHandler$IHandler;)V

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public checkUpdate(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    new-instance v7, Lcom/ss/android/ugc/effectmanager/effect/task/task/CheckUpdateTask;

    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    iget-object v3, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mHandler:Landroid/os/Handler;

    move-object v0, v7

    move-object v2, p4

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ugc/effectmanager/effect/task/task/CheckUpdateTask;-><init>(Lcom/ss/android/ugc/effectmanager/context/EffectContext;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {p0}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getTaskManager()Lcom/ss/android/ugc/effectmanager/common/TaskManager;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/ss/android/ugc/effectmanager/common/TaskManager;->commit(Lcom/ss/android/ugc/effectmanager/common/task/BaseTask;)V

    return-void
.end method

.method public fetchCategoryEffect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Z)V
    .locals 22

    move-object/from16 v0, p0

    if-eqz p8, :cond_0

    new-instance v11, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchCategoryEffectCacheTask;

    iget-object v2, v0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    iget-object v10, v0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mHandler:Landroid/os/Handler;

    move-object v1, v11

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v10}, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchCategoryEffectCacheTask;-><init>(Lcom/ss/android/ugc/effectmanager/context/EffectContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchCategoryEffectTask;

    iget-object v13, v0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    iget-object v2, v0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mHandler:Landroid/os/Handler;

    move-object v12, v1

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move/from16 v17, p4

    move/from16 v18, p5

    move/from16 v19, p6

    move-object/from16 v20, p7

    move-object/from16 v21, v2

    invoke-direct/range {v12 .. v21}, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchCategoryEffectTask;-><init>(Lcom/ss/android/ugc/effectmanager/context/EffectContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Landroid/os/Handler;)V

    move-object v11, v1

    :goto_0
    iget-object v0, v0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getTaskManager()Lcom/ss/android/ugc/effectmanager/common/TaskManager;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/ss/android/ugc/effectmanager/common/TaskManager;->commit(Lcom/ss/android/ugc/effectmanager/common/task/BaseTask;)V

    return-void
.end method

.method public fetchExistEffectList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getTaskManager()Lcom/ss/android/ugc/effectmanager/common/TaskManager;

    move-result-object v0

    new-instance v1, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchExistEffectListTask;

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p1, p2, v2, p0}, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchExistEffectListTask;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/context/EffectContext;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/ugc/effectmanager/common/TaskManager;->commit(Lcom/ss/android/ugc/effectmanager/common/task/BaseTask;)V

    return-void
.end method

.method public fetchList(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    if-eqz p3, :cond_0

    new-instance p3, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchEffectChannelCacheTask;

    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    iget-object v4, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    move-object v0, p3

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchEffectChannelCacheTask;-><init>(Lcom/ss/android/ugc/effectmanager/context/EffectContext;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Z)V

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchEffectChannelTask;

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mHandler:Landroid/os/Handler;

    invoke-direct {p3, v0, p1, p2, v1}, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchEffectChannelTask;-><init>(Lcom/ss/android/ugc/effectmanager/context/EffectContext;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    :goto_0
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {p0}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getTaskManager()Lcom/ss/android/ugc/effectmanager/common/TaskManager;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/ss/android/ugc/effectmanager/common/TaskManager;->commit(Lcom/ss/android/ugc/effectmanager/common/task/BaseTask;)V

    return-void
.end method

.method public fetchPanelInfo(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IIZLcom/ss/android/ugc/effectmanager/effect/listener/IFetchPanelInfoListener;)V
    .locals 13

    move-object v0, p0

    if-eqz p7, :cond_0

    new-instance v1, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchPanelInfoCacheTask;

    iget-object v2, v0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    iget-object v3, v0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mHandler:Landroid/os/Handler;

    move-object v6, p1

    move-object v7, p2

    invoke-direct {v1, v2, p1, p2, v3}, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchPanelInfoCacheTask;-><init>(Lcom/ss/android/ugc/effectmanager/context/EffectContext;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    move-object v6, p1

    move-object v7, p2

    new-instance v1, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchPanelInfoTask;

    iget-object v5, v0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    iget-object v12, v0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mHandler:Landroid/os/Handler;

    move-object v4, v1

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-direct/range {v4 .. v12}, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchPanelInfoTask;-><init>(Lcom/ss/android/ugc/effectmanager/context/EffectContext;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILandroid/os/Handler;)V

    :goto_0
    iget-object v0, v0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getTaskManager()Lcom/ss/android/ugc/effectmanager/common/TaskManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ss/android/ugc/effectmanager/common/TaskManager;->commit(Lcom/ss/android/ugc/effectmanager/common/task/BaseTask;)V

    return-void
.end method

.method public fetchProviderEffectList(Ljava/lang/String;IILjava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v7, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;

    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    iget-object v6, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mHandler:Landroid/os/Handler;

    move-object v0, v7

    move-object v2, p4

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/ugc/effectmanager/effect/task/task/FetchProviderEffectTask;-><init>(Lcom/ss/android/ugc/effectmanager/context/EffectContext;Ljava/lang/String;Ljava/lang/String;IILandroid/os/Handler;)V

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {p0}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getTaskManager()Lcom/ss/android/ugc/effectmanager/common/TaskManager;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/ss/android/ugc/effectmanager/common/TaskManager;->commit(Lcom/ss/android/ugc/effectmanager/common/task/BaseTask;)V

    return-void
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mEffectListListener:Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository$EffectListListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectChannelTaskResult;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectChannelTaskResult;

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectChannelTaskResult;->getException()Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mEffectListListener:Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository$EffectListListener;

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;->getTaskID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectChannelTaskResult;->getEffectChannels()Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;

    move-result-object v0

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository$EffectListListener;->updateEffectChannel(Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;ILcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mEffectListListener:Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository$EffectListListener;

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;->getTaskID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectChannelTaskResult;->getEffectChannels()Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;

    move-result-object v0

    const/16 v4, 0x1b

    invoke-interface {v2, v3, v0, v4, v1}, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository$EffectListListener;->updateEffectChannel(Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;ILcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    :cond_2
    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/ss/android/ugc/effectmanager/effect/task/result/FetchPanelInfoTaskResult;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/ss/android/ugc/effectmanager/effect/task/result/FetchPanelInfoTaskResult;

    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v1}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getListenerManger()Lcom/ss/android/ugc/effectmanager/ListenerManger;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;->getTaskID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ss/android/ugc/effectmanager/ListenerManger;->getFetchPanelInfoListener(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchPanelInfoListener;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/task/result/FetchPanelInfoTaskResult;->getException()Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/task/result/FetchPanelInfoTaskResult;->getPanelInfoModel()Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchPanelInfoListener;->onSuccess(Lcom/ss/android/ugc/effectmanager/effect/model/PanelInfoModel;)V

    goto :goto_1

    :cond_3
    invoke-interface {v1, v2}, Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchPanelInfoListener;->onFail(Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    :cond_4
    :goto_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_6

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/ss/android/ugc/effectmanager/effect/task/result/ProviderEffectTaskResult;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/ss/android/ugc/effectmanager/effect/task/result/ProviderEffectTaskResult;

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/task/result/ProviderEffectTaskResult;->getException()Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v2}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getListenerManger()Lcom/ss/android/ugc/effectmanager/ListenerManger;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;->getTaskID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/ugc/effectmanager/ListenerManger;->getFetchProviderEffectListener(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchProviderEffect;

    move-result-object v2

    if-eqz v2, :cond_6

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/task/result/ProviderEffectTaskResult;->getEffectListResponse()Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchProviderEffect;->onSuccess(Lcom/ss/android/ugc/effectmanager/effect/model/ProviderEffectModel;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/task/result/ProviderEffectTaskResult;->getException()Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchProviderEffect;->onFail(Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    :cond_6
    :goto_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_8

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Lcom/ss/android/ugc/effectmanager/effect/task/result/FetchCategoryEffectTaskResult;

    if-eqz v1, :cond_8

    check-cast v0, Lcom/ss/android/ugc/effectmanager/effect/task/result/FetchCategoryEffectTaskResult;

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/task/result/FetchCategoryEffectTaskResult;->getException()Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {v2}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getListenerManger()Lcom/ss/android/ugc/effectmanager/ListenerManger;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;->getTaskID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ss/android/ugc/effectmanager/ListenerManger;->getFetchCategoryEffectListener(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchCategoryEffectListener;

    move-result-object v2

    if-eqz v2, :cond_8

    if-nez v1, :cond_7

    invoke-virtual {v0}, Lcom/ss/android/ugc/effectmanager/effect/task/result/FetchCategoryEffectTaskResult;->getEffectChannels()Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchCategoryEffectListener;->onSuccess(Lcom/ss/android/ugc/effectmanager/effect/model/CategoryEffectModel;)V

    goto :goto_3

    :cond_7
    invoke-interface {v2, v1}, Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchCategoryEffectListener;->onFail(Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    :cond_8
    :goto_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_a

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectCheckUpdateResult;

    if-eqz v0, :cond_a

    check-cast p1, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectCheckUpdateResult;

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectCheckUpdateResult;->getException()Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;

    move-result-object v0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {p0}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getListenerManger()Lcom/ss/android/ugc/effectmanager/ListenerManger;

    move-result-object p0

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/common/task/BaseTaskResult;->getTaskID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ss/android/ugc/effectmanager/ListenerManger;->getCheckChannelListener(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/effect/listener/ICheckChannelListener;

    move-result-object p0

    if-eqz p0, :cond_a

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/effect/task/result/EffectCheckUpdateResult;->isUpdate()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/ss/android/ugc/effectmanager/effect/listener/ICheckChannelListener;->checkChannelSuccess(Z)V

    goto :goto_4

    :cond_9
    invoke-interface {p0, v0}, Lcom/ss/android/ugc/effectmanager/effect/listener/ICheckChannelListener;->checkChannelFailed(Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    :cond_a
    :goto_4
    return-void
.end method

.method public searchProviderEffectList(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v8, Lcom/ss/android/ugc/effectmanager/effect/task/task/SearchProviderEffectTask;

    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mEffectContext:Lcom/ss/android/ugc/effectmanager/context/EffectContext;

    iget-object v7, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mHandler:Landroid/os/Handler;

    move-object v0, v8

    move-object v2, p5

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/ss/android/ugc/effectmanager/effect/task/task/SearchProviderEffectTask;-><init>(Lcom/ss/android/ugc/effectmanager/context/EffectContext;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/os/Handler;)V

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {p0}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getTaskManager()Lcom/ss/android/ugc/effectmanager/common/TaskManager;

    move-result-object p0

    invoke-virtual {p0, v8}, Lcom/ss/android/ugc/effectmanager/common/TaskManager;->commit(Lcom/ss/android/ugc/effectmanager/common/task/BaseTask;)V

    return-void
.end method

.method public setOnEffectListListener(Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository$EffectListListener;)V
    .locals 0

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository;->mEffectListListener:Lcom/ss/android/ugc/effectmanager/effect/repository/EffectChannelRepository$EffectListListener;

    return-void
.end method
