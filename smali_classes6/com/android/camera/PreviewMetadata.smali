.class public Lcom/android/camera/PreviewMetadata;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/camera/IPreviewMetadata;


# static fields
.field private static final TAG:Ljava/lang/String; = "PreviewMetadata"


# instance fields
.field private mDisposables:Ljava/util/List;

.field private mFlowableEmitters:Ljava/util/List;

.field private mPartialDisposables:Ljava/util/List;

.field private mPartialFlowableEmitters:Ljava/util/List;

.field private mPartialPreviewMeatadataList:Ljava/util/List;

.field private mPreviewMeatadataList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPreviewMeatadataList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPartialPreviewMeatadataList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPartialFlowableEmitters:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPartialDisposables:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PreviewMetadata;->mFlowableEmitters:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PreviewMetadata;->mDisposables:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PreviewMetadata;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/PreviewMetadata;->mPartialFlowableEmitters:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/camera/PreviewMetadata;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/PreviewMetadata;->mFlowableEmitters:Ljava/util/List;

    return-object p0
.end method

.method private initMetadataFlowable()V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPreviewMeatadataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IFuncPreviewMetadataListener;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/camera/PreviewMetadata$2;

    invoke-direct {v2, p0}, Lcom/android/camera/PreviewMetadata$2;-><init>(Lcom/android/camera/PreviewMetadata;)V

    sget-object v3, Lio/reactivex/BackpressureStrategy;->DROP:Lio/reactivex/BackpressureStrategy;

    invoke-static {v2, v3}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v2, v3}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v2

    invoke-interface {v1}, Lcom/android/camera/IPreviewMetadataListener;->getSamplePeriod()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    invoke-interface {v1}, Lcom/android/camera/IPreviewMetadataListener;->getSamplePeriod()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lio/reactivex/Flowable;->sample(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v2

    :cond_1
    invoke-virtual {v2, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v2

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v2

    invoke-virtual {v2}, Lio/reactivex/Flowable;->onTerminateDetach()Lio/reactivex/Flowable;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PreviewMetadata;->mPartialDisposables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/camera/PreviewMetadata;->TAG:Ljava/lang/String;

    const-string v0, "<preview metadata> init metadata flowable"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initPartialMetadataFlowable()V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPartialPreviewMeatadataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/IFuncPreviewMetadataListener;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/camera/PreviewMetadata$1;

    invoke-direct {v2, p0}, Lcom/android/camera/PreviewMetadata$1;-><init>(Lcom/android/camera/PreviewMetadata;)V

    sget-object v3, Lio/reactivex/BackpressureStrategy;->DROP:Lio/reactivex/BackpressureStrategy;

    invoke-static {v2, v3}, Lio/reactivex/Flowable;->create(Lio/reactivex/FlowableOnSubscribe;Lio/reactivex/BackpressureStrategy;)Lio/reactivex/Flowable;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {v2, v3}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v2

    invoke-interface {v1}, Lcom/android/camera/IPreviewMetadataListener;->getSamplePeriod()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    invoke-interface {v1}, Lcom/android/camera/IPreviewMetadataListener;->getSamplePeriod()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lio/reactivex/Flowable;->sample(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object v2

    :cond_1
    invoke-virtual {v2, v1}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object v2

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Flowable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Flowable;

    move-result-object v2

    invoke-virtual {v2}, Lio/reactivex/Flowable;->onTerminateDetach()Lio/reactivex/Flowable;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/reactivex/Flowable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PreviewMetadata;->mDisposables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/camera/PreviewMetadata;->TAG:Ljava/lang/String;

    const-string v0, "<preview metadata> init partial metadata flowable"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onPartialPreviewMetadata(Landroid/hardware/camera2/CaptureResult;)V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPartialFlowableEmitters:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Lcom/android/camera/PreviewMetadata;->mPartialFlowableEmitters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p0, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    instance-of v4, v2, Lio/reactivex/FlowableEmitter;

    if-eqz v4, :cond_2

    move-object v3, v2

    check-cast v3, Lio/reactivex/FlowableEmitter;

    :cond_2
    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v3, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/android/camera/PreviewMetadata;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<preview metadata> update partial preview metadata:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method

.method public bridge synthetic onPartialPreviewMetadata(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/PreviewMetadata;->onPartialPreviewMetadata(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public onPreviewMetadata(Landroid/hardware/camera2/CaptureResult;)V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mFlowableEmitters:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Lcom/android/camera/PreviewMetadata;->mFlowableEmitters:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p0, v1

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    instance-of v4, v2, Lio/reactivex/FlowableEmitter;

    if-eqz v4, :cond_2

    move-object v3, v2

    check-cast v3, Lio/reactivex/FlowableEmitter;

    :cond_2
    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v3, p1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/android/camera/PreviewMetadata;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<preview metadata> update preview metadata:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method

.method public bridge synthetic onPreviewMetadata(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/PreviewMetadata;->onPreviewMetadata(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method public registerPreviewMeatedata(Ljava/util/List;)V
    .locals 2

    sget-object v0, Lcom/android/camera/PreviewMetadata;->TAG:Ljava/lang/String;

    const-string v1, "<preview metadata> register metadata listener"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPreviewMeatadataList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PreviewMetadata;->initMetadataFlowable()V

    return-void
.end method

.method public registerPreviewPartialMetadata(Ljava/util/List;)V
    .locals 2

    sget-object v0, Lcom/android/camera/PreviewMetadata;->TAG:Ljava/lang/String;

    const-string v1, "<preview metadata> register partial metadata listener"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPartialPreviewMeatadataList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PreviewMetadata;->initPartialMetadataFlowable()V

    return-void
.end method

.method public unregisterPreviewMetadata()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPreviewMeatadataList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPreviewMeatadataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPartialPreviewMeatadataList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPartialPreviewMeatadataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPartialFlowableEmitters:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPartialFlowableEmitters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPartialDisposables:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mPartialDisposables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mFlowableEmitters:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mFlowableEmitters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    iget-object v0, p0, Lcom/android/camera/PreviewMetadata;->mDisposables:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/android/camera/PreviewMetadata;->mDisposables:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_5
    sget-object p0, Lcom/android/camera/PreviewMetadata;->TAG:Ljava/lang/String;

    const-string v0, "<preview metadata> unregister all"

    invoke-static {p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
