.class public Lcom/android/camera/data/observeable/RxData;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "RxLiveData"


# instance fields
.field private data:Ljava/lang/Object;

.field private final dataLock:Ljava/lang/Object;

.field private triggers:Lio/reactivex/subjects/Subject;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/observeable/RxData;->dataLock:Ljava/lang/Object;

    invoke-static {}, Lio/reactivex/subjects/PublishSubject;->create()Lio/reactivex/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/data/observeable/RxData;->triggers:Lio/reactivex/subjects/Subject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/data/observeable/RxData;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/observeable/RxData;->data:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$100(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/camera/data/observeable/RxData;->isLifecycleState(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;)Z

    move-result p0

    return p0
.end method

.method private static isLifecycleState(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;)Z
    .locals 0
    .param p1    # Landroidx/lifecycle/Lifecycle$State;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyChangedInternal(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/data/observeable/RxData;->triggers:Lio/reactivex/subjects/Subject;

    new-instance v0, Lcom/android/camera/data/observeable/RxData$DataWrap;

    invoke-direct {v0, p1}, Lcom/android/camera/data/observeable/RxData$DataWrap;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/observeable/RxData;->data:Ljava/lang/Object;

    return-object p0
.end method

.method public notifyChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/data/observeable/RxData;->dataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/data/observeable/RxData;->data:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/android/camera/data/observeable/RxData;->notifyChangedInternal(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public observable(Landroidx/lifecycle/LifecycleOwner;)Lcom/android/camera/data/observeable/RxData$DataObservable;
    .locals 2

    new-instance v0, Lcom/android/camera/data/observeable/RxData$DataCheck;

    invoke-direct {v0, p1}, Lcom/android/camera/data/observeable/RxData$DataCheck;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object p1, p0, Lcom/android/camera/data/observeable/RxData;->triggers:Lio/reactivex/subjects/Subject;

    new-instance v1, Lcom/android/camera/data/observeable/RxData$DataWrap;

    iget-object p0, p0, Lcom/android/camera/data/observeable/RxData;->data:Ljava/lang/Object;

    invoke-direct {v1, p0}, Lcom/android/camera/data/observeable/RxData$DataWrap;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/RxData$DataCheck;->getPredicateCheck()Lio/reactivex/functions/Predicate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-static {v0}, Lcom/android/camera/data/observeable/RxData$DataObservable;->toFunction(Lcom/android/camera/data/observeable/RxData$DataCheck;)Lio/reactivex/functions/Function;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->to(Lio/reactivex/functions/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/data/observeable/RxData$DataObservable;

    return-object p0
.end method

.method public observableNullLife()Lcom/android/camera/data/observeable/RxData$DataObservable;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/data/observeable/RxData;->observable(Landroidx/lifecycle/LifecycleOwner;)Lcom/android/camera/data/observeable/RxData$DataObservable;

    move-result-object p0

    return-object p0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/observeable/RxData;->dataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/camera/data/observeable/RxData;->data:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/camera/data/observeable/RxData;->notifyChangedInternal(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setSilently(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/observeable/RxData;->dataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/camera/data/observeable/RxData;->data:Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
