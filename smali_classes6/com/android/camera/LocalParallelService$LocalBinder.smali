.class public Lcom/android/camera/LocalParallelService$LocalBinder;
.super Landroid/os/Binder;
.source ""


# instance fields
.field private mAlivePostProcessor:Ljava/util/List;

.field private mCurrentBufferFormat:Lcom/xiaomi/engine/BufferFormat;

.field private mCurrentParams:Ljava/util/List;

.field private mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

.field final synthetic this$0:Lcom/android/camera/LocalParallelService;


# direct methods
.method constructor <init>(Lcom/android/camera/LocalParallelService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mAlivePostProcessor:Ljava/util/List;

    invoke-static {p1}, Lcom/xiaomi/camera/imagecodec/ReprocessorFactory;->init(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/camera/LocalParallelService$LocalBinder;->updateVirtualCameraIds()V

    invoke-static {}, Lcom/android/camera/LocalParallelService;->getReprocessor()Lcom/xiaomi/camera/imagecodec/Reprocessor;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/xiaomi/camera/imagecodec/Reprocessor;->init(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/xiaomi/engine/MiCameraAlgo;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/LocalParallelService$LocalBinder;Lcom/xiaomi/camera/core/PostProcessor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/LocalParallelService$LocalBinder;->onPostProcessorClosed(Lcom/xiaomi/camera/core/PostProcessor;)V

    return-void
.end method

.method private initCurrentPostProcessor(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentParams:Ljava/util/List;

    new-instance v0, Lcom/xiaomi/camera/core/PostProcessor;

    iget-object v1, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {v1}, Lcom/android/camera/LocalParallelService;->access$700(Lcom/android/camera/LocalParallelService;)Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/camera/core/PostProcessor;-><init>(Landroid/content/Context;Lcom/xiaomi/camera/core/PostProcessor$PostProcessStatusCallback;)V

    iput-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    iget-object v1, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {v1}, Lcom/android/camera/LocalParallelService;->access$300(Lcom/android/camera/LocalParallelService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PostProcessor;->setMaxParallelRequestNumber(I)V

    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    iget-object v1, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {v1}, Lcom/android/camera/LocalParallelService;->access$500(Lcom/android/camera/LocalParallelService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PostProcessor;->setSRRequireReprocess(Z)V

    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCurrentPostProcessor: create a new PostProcessor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " | maxParallelRequestNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {v2}, Lcom/android/camera/LocalParallelService;->access$300(Lcom/android/camera/LocalParallelService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/core/PostProcessor;->setParams(Ljava/util/List;)V

    iget-object p1, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {p1}, Lcom/android/camera/LocalParallelService;->access$600(Lcom/android/camera/LocalParallelService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mAlivePostProcessor:Ljava/util/List;

    iget-object p0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private isSetsEquals(Ljava/util/List;Ljava/util/List;)Z
    .locals 5

    const/4 p0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    return p0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, p0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    invoke-virtual {v2, v4}, Lcom/xiaomi/protocol/IImageReaderParameterSets;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_5

    const/4 p0, 0x1

    :cond_5
    :goto_1
    return p0
.end method

.method private onPostProcessorClosed(Lcom/xiaomi/camera/core/PostProcessor;)V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {v0}, Lcom/android/camera/LocalParallelService;->access$600(Lcom/android/camera/LocalParallelService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPostProcessorClosed: processor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mAlivePostProcessor:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public configCaptureOutputBuffer(Ljava/util/List;I)Ljava/util/List;
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentParams:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/android/camera/LocalParallelService$LocalBinder;->isSetsEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/PostProcessor;->isStopping()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/PostProcessor;->getSurfaceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "configCaptureOutputBuffer: sets is not changed, return the old."

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {p1, p2}, Lcom/xiaomi/camera/core/PostProcessor;->setToken(I)V

    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->getSurfaceList()Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_0
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configCaptureOutputBuffer: sets is changed, mAlivePostProcessor.size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mAlivePostProcessor:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {v1}, Lcom/android/camera/LocalParallelService;->access$600(Lcom/android/camera/LocalParallelService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mAlivePostProcessor:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mAlivePostProcessor:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/PostProcessor;->getParams()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/android/camera/LocalParallelService$LocalBinder;->isSetsEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/xiaomi/camera/core/PostProcessor;->getSurfaceList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configCaptureOutputBuffer: ready to reuse activeProcessor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    iput-object p1, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentParams:Ljava/util/List;

    iput-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/PostProcessor;->tryToReuse()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$400()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "configCaptureOutputBuffer: success to reuse activeProcessor:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->getSurfaceList()Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1

    :cond_3
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "configCaptureOutputBuffer: failed to reuse activeProcessor, need to create new one"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/PostProcessor;->isStopping()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {v0, p2}, Lcom/xiaomi/camera/core/PostProcessor;->destroyWhenTasksFinished(I)V

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/camera/LocalParallelService$LocalBinder;->initCurrentPostProcessor(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {v0, p2}, Lcom/xiaomi/camera/core/PostProcessor;->setToken(I)V

    iget-object p0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/PostProcessor;->configHALOutputSurface(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_6
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "List is empty"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public configCaptureSession(Lcom/xiaomi/engine/BufferFormat;Lcom/android/camera/CameraSize;)V
    .locals 4
    .param p1    # Lcom/xiaomi/engine/BufferFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    invoke-virtual {p1, v0}, Lcom/xiaomi/engine/BufferFormat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    iget-object p0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentBufferFormat:Lcom/xiaomi/engine/BufferFormat;

    invoke-virtual {p1, p0, p2}, Lcom/xiaomi/camera/core/PostProcessor;->configCaptureSession(Lcom/xiaomi/engine/BufferFormat;Lcom/android/camera/CameraSize;)V

    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$400()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "configCaptureSession: cost: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$400()Ljava/lang/String;

    move-result-object p0

    const-string p1, "configCaptureSession: bufferFormat keeps unchanged"

    :goto_0
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public configMaxParallelRequestNumber(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {v0, p1}, Lcom/android/camera/LocalParallelService;->access$302(Lcom/android/camera/LocalParallelService;I)I

    iget-object p1, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {p0}, Lcom/android/camera/LocalParallelService;->access$300(Lcom/android/camera/LocalParallelService;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/xiaomi/camera/core/PostProcessor;->setMaxParallelRequestNumber(I)V

    :cond_0
    return-void
.end method

.method public customizeReprocessor(Ljava/util/HashMap;)V
    .locals 0

    invoke-static {}, Lcom/android/camera/LocalParallelService;->getReprocessor()Lcom/xiaomi/camera/imagecodec/Reprocessor;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/xiaomi/camera/imagecodec/Reprocessor;->customize(Ljava/util/HashMap;)V

    return-void
.end method

.method public getFrontProcessingCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->getFrontProcessingCount()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAnyRequestBlocked()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->isAnyRequestBlocked()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAnyRequestIsHWMFNRProcessing()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->isAnyRequestIsHWMFNRProcessing()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isIdle()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {v0}, Lcom/android/camera/LocalParallelService;->access$600(Lcom/android/camera/LocalParallelService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mAlivePostProcessor:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {v1}, Lcom/xiaomi/camera/core/PostProcessor;->isIdle()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_1
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public needWaitProcess()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/PostProcessor;->needWaitImageClose()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->needWaitAlgorithmEngine()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    move v1, p0

    :cond_1
    return v1
.end method

.method public onCameraClosed()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->clearFrontProcessingTask()V

    :cond_0
    return-void
.end method

.method public onCaptureCompleted(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->getCaptureStatusListener()Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;->onCaptureCompleted(Lcom/xiaomi/protocol/ICustomCaptureResult;Z)V

    return-void
.end method

.method public onCaptureFailed(JI)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->getCaptureStatusListener()Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;->onCaptureFailed(JI)V

    return-void
.end method

.method public onCaptureStarted(Lcom/xiaomi/camera/core/ParallelTaskData;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/PostProcessor;->getCaptureStatusListener()Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/PostProcessor$CaptureStatusListener;->onCaptureStarted(Lcom/xiaomi/camera/core/ParallelTaskData;)V

    return-void
.end method

.method public onServiceDestroy()V
    .locals 0

    invoke-static {}, Lcom/android/camera/LocalParallelService;->getReprocessor()Lcom/xiaomi/camera/imagecodec/Reprocessor;

    move-result-object p0

    invoke-interface {p0}, Lcom/xiaomi/camera/imagecodec/Reprocessor;->deInit()V

    invoke-static {}, Lcom/xiaomi/engine/MiCameraAlgo;->deInit()V

    return-void
.end method

.method public prepareParallelCapture()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/core/PostProcessor;->configParallelCaptureSession(Z)Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public queryFeatureSetting(Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/os/Parcelable;Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;Z)Lcom/xiaomi/camera/imagecodec/FeatureSetting;
    .locals 0
    .param p1    # Lcom/xiaomi/camera/isp/IspInterfaceIO;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/android/camera/LocalParallelService;->getReprocessor()Lcom/xiaomi/camera/imagecodec/Reprocessor;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/xiaomi/camera/imagecodec/Reprocessor;->queryFeatureSetting(Lcom/xiaomi/camera/isp/IspInterfaceIO;Landroid/os/Parcelable;Lcom/xiaomi/camera/imagecodec/QueryFeatureSettingParameter;Z)Lcom/xiaomi/camera/imagecodec/FeatureSetting;

    move-result-object p0

    return-object p0
.end method

.method public setImageSaver(Lcom/android/camera/storage/ImageSaver;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/PostProcessor;->setImageSaver(Lcom/android/camera/storage/ImageSaver;)V

    return-void
.end method

.method public setOnPictureTakenListener(Lcom/android/camera/LocalParallelService$ServiceStatusListener;)V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->this$0:Lcom/android/camera/LocalParallelService;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v0}, Lcom/android/camera/LocalParallelService;->access$002(Lcom/android/camera/LocalParallelService;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setOnSessionStatusCallBackListener(Lcom/xiaomi/protocol/ISessionStatusCallBackListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/PostProcessor;->setOnSessionStatusCallBackListener(Lcom/xiaomi/protocol/ISessionStatusCallBackListener;)V

    :cond_0
    return-void
.end method

.method public setOutputPictureSpec(III)V
    .locals 0

    invoke-static {}, Lcom/android/camera/LocalParallelService;->getReprocessor()Lcom/xiaomi/camera/imagecodec/Reprocessor;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/xiaomi/camera/imagecodec/Reprocessor;->setOutputPictureSpec(III)V

    return-void
.end method

.method public setSRRequireReprocess(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->this$0:Lcom/android/camera/LocalParallelService;

    invoke-static {v0, p1}, Lcom/android/camera/LocalParallelService;->access$502(Lcom/android/camera/LocalParallelService;Z)Z

    iget-object p0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/core/PostProcessor;->setSRRequireReprocess(Z)V

    :cond_0
    return-void
.end method

.method public stopPostProcessor(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {v0}, Lcom/xiaomi/camera/core/PostProcessor;->isStopping()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/LocalParallelService;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPostProcessor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/LocalParallelService$LocalBinder;->mCurrentPostProcessor:Lcom/xiaomi/camera/core/PostProcessor;

    invoke-virtual {v0, p1}, Lcom/xiaomi/camera/core/PostProcessor;->destroyWhenTasksFinished(I)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateVirtualCameraIds()V
    .locals 2

    sget-boolean p0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOOO0:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/LocalParallelService;->getReprocessor()Lcom/xiaomi/camera/imagecodec/Reprocessor;

    move-result-object p0

    const-string v0, "5"

    const-string v1, "6"

    invoke-interface {p0, v0, v1}, Lcom/xiaomi/camera/imagecodec/Reprocessor;->setVirtualCameraIds(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->Oooooo0()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getVirtualBackCameraId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getVirtualFrontCameraId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/LocalParallelService;->getReprocessor()Lcom/xiaomi/camera/imagecodec/Reprocessor;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lcom/xiaomi/camera/imagecodec/Reprocessor;->setVirtualCameraIds(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
