.class public Lcom/ss/android/ugc/effectmanager/effect/repository/EffectStore;
.super Ljava/lang/Object;
.source "EffectStore.java"


# instance fields
.field private mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

.field private final mCurDownloadingEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectChannels:Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;


# direct methods
.method public constructor <init>(Lcom/ss/android/ugc/effectmanager/EffectConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectStore;->mCurDownloadingEffects:Ljava/util/List;

    iput-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectStore;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    return-void
.end method


# virtual methods
.method public getCurrentDownloadingEffectList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectStore;->mCurDownloadingEffects:Ljava/util/List;

    return-object p0
.end method

.method public getCurrentEffectChannel()Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;
    .locals 0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectStore;->mEffectChannels:Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;

    if-nez p0, :cond_0

    new-instance p0, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;

    invoke-direct {p0}, Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;-><init>()V

    :cond_0
    return-object p0
.end method

.method public isDownloaded(Lcom/ss/android/ugc/effectmanager/effect/model/Effect;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectStore;->isDownloading(Lcom/ss/android/ugc/effectmanager/effect/model/Effect;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->getUnzipPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ss/android/ugc/effectmanager/common/utils/FileUtils;->checkFileExists(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isDownloading(Lcom/ss/android/ugc/effectmanager/effect/model/Effect;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectStore;->mCurDownloadingEffects:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectStore;->mCurDownloadingEffects:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;

    invoke-virtual {v2}, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->getEffectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ss/android/ugc/effectmanager/effect/model/Effect;->getEffectId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    monitor-exit v1

    return p0

    :cond_2
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateEffectChannel(Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;ILcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V
    .locals 0

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectStore;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {p0}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getListenerManger()Lcom/ss/android/ugc/effectmanager/ListenerManger;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ss/android/ugc/effectmanager/ListenerManger;->getFetchEffectChannelListener(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectChannelListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p4}, Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectChannelListener;->onFail(Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    goto :goto_0

    :pswitch_2
    iput-object p2, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectStore;->mEffectChannels:Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectStore;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {p0}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getListenerManger()Lcom/ss/android/ugc/effectmanager/ListenerManger;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ss/android/ugc/effectmanager/ListenerManger;->getFetchEffectChannelListener(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectChannelListener;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectChannelListener;->onSuccess(Lcom/ss/android/ugc/effectmanager/effect/model/EffectChannelResponse;)V

    :cond_0
    :goto_0
    :pswitch_3
    return-void

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateEffectDownloadStatus(Ljava/lang/String;Lcom/ss/android/ugc/effectmanager/effect/model/Effect;ILcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V
    .locals 1

    const/16 v0, 0x1a

    if-eq p3, v0, :cond_0

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectStore;->mCurDownloadingEffects:Ljava/util/List;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectStore;->mCurDownloadingEffects:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_1
    iget-object p3, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectStore;->mCurDownloadingEffects:Ljava/util/List;

    monitor-enter p3

    :try_start_1
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectStore;->mCurDownloadingEffects:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p3

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :pswitch_2
    iget-object p3, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectStore;->mCurDownloadingEffects:Ljava/util/List;

    monitor-enter p3

    :try_start_2
    iget-object p4, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectStore;->mCurDownloadingEffects:Ljava/util/List;

    invoke-interface {p4, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectStore;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {p0}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getListenerManger()Lcom/ss/android/ugc/effectmanager/ListenerManger;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ss/android/ugc/effectmanager/ListenerManger;->getFetchEffectListener(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListener;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0, p2}, Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListener;->onSuccess(Lcom/ss/android/ugc/effectmanager/effect/model/Effect;)V

    goto :goto_0

    :catchall_2
    move-exception p0

    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :cond_0
    iget-object p3, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectStore;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {p3}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getListenerManger()Lcom/ss/android/ugc/effectmanager/ListenerManger;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/ss/android/ugc/effectmanager/ListenerManger;->getFetchEffectListener(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListener;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1, p2, p4}, Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListener;->onFail(Lcom/ss/android/ugc/effectmanager/effect/model/Effect;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    :cond_1
    iget-object p1, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectStore;->mCurDownloadingEffects:Ljava/util/List;

    monitor-enter p1

    :try_start_4
    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectStore;->mCurDownloadingEffects:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit p1

    :cond_2
    :goto_0
    return-void

    :catchall_3
    move-exception p0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw p0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateEffectListDownloadStatus(Ljava/lang/String;Ljava/util/List;Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ss/android/ugc/effectmanager/effect/model/Effect;",
            ">;",
            "Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectStore;->mCurDownloadingEffects:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectStore;->mCurDownloadingEffects:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/ss/android/ugc/effectmanager/effect/repository/EffectStore;->mConfiguration:Lcom/ss/android/ugc/effectmanager/EffectConfiguration;

    invoke-virtual {p0}, Lcom/ss/android/ugc/effectmanager/EffectConfiguration;->getListenerManger()Lcom/ss/android/ugc/effectmanager/ListenerManger;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/ss/android/ugc/effectmanager/ListenerManger;->getFetchEffectLisListener(Ljava/lang/String;)Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListListener;

    move-result-object p0

    if-eqz p0, :cond_1

    if-nez p3, :cond_0

    invoke-interface {p0, p2}, Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListListener;->onSuccess(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0, p3}, Lcom/ss/android/ugc/effectmanager/effect/listener/IFetchEffectListListener;->onFail(Lcom/ss/android/ugc/effectmanager/common/task/ExceptionResult;)V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
