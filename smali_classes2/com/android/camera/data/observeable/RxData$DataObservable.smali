.class public Lcom/android/camera/data/observeable/RxData$DataObservable;
.super Lio/reactivex/Observable;
.source "RxData.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/observeable/RxData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataObservable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Observable<",
        "TT;>;",
        "Landroid/arch/lifecycle/LifecycleObserver;"
    }
.end annotation


# instance fields
.field private final dataCheck:Lcom/android/camera/data/observeable/RxData$DataCheck;

.field private dataObserver:Lcom/android/camera/data/observeable/RxData$DataObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/data/observeable/RxData$DataObserver<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final observable:Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observable;Lcom/android/camera/data/observeable/RxData$DataCheck;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "TT;>;",
            "Lcom/android/camera/data/observeable/RxData$DataCheck;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/observeable/RxData$DataObservable;->observable:Lio/reactivex/Observable;

    iput-object p2, p0, Lcom/android/camera/data/observeable/RxData$DataObservable;->dataCheck:Lcom/android/camera/data/observeable/RxData$DataCheck;

    invoke-static {p2}, Lcom/android/camera/data/observeable/RxData$DataCheck;->access$000(Lcom/android/camera/data/observeable/RxData$DataCheck;)Landroid/arch/lifecycle/LifecycleOwner;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/android/camera/data/observeable/RxData$DataCheck;->access$000(Lcom/android/camera/data/observeable/RxData$DataCheck;)Landroid/arch/lifecycle/LifecycleOwner;

    move-result-object p1

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->DESTROYED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {p1, v0}, Lcom/android/camera/data/observeable/RxData;->access$100(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$State;)Z

    move-result p1

    const-string v0, "RxLiveData"

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataObservable add:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/camera/data/observeable/RxData$DataCheck;->access$000(Lcom/android/camera/data/observeable/RxData$DataCheck;)Landroid/arch/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/camera/data/observeable/RxData$DataCheck;->access$000(Lcom/android/camera/data/observeable/RxData$DataCheck;)Landroid/arch/lifecycle/LifecycleOwner;

    move-result-object p1

    invoke-interface {p1}, Landroid/arch/lifecycle/LifecycleOwner;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/arch/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "DataObservable skip:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/camera/data/observeable/RxData$DataCheck;->access$000(Lcom/android/camera/data/observeable/RxData$DataCheck;)Landroid/arch/lifecycle/LifecycleOwner;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method static toFunction(Lcom/android/camera/data/observeable/RxData$DataCheck;)Lio/reactivex/functions/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/camera/data/observeable/RxData$DataCheck;",
            ")",
            "Lio/reactivex/functions/Function<",
            "Lio/reactivex/Observable<",
            "TT;>;",
            "Lcom/android/camera/data/observeable/RxData$DataObservable<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/camera/data/observeable/RxData$DataObservable$1;

    invoke-direct {v0, p0}, Lcom/android/camera/data/observeable/RxData$DataObservable$1;-><init>(Lcom/android/camera/data/observeable/RxData$DataCheck;)V

    return-object v0
.end method


# virtual methods
.method public onLifecycleDestroy()V
    .locals 2
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/data/observeable/RxData$DataObservable;->dataObserver:Lcom/android/camera/data/observeable/RxData$DataObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/RxData$DataObserver;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/observeable/RxData$DataObservable;->dataObserver:Lcom/android/camera/data/observeable/RxData$DataObserver;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/RxData$DataObserver;->dispose()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/observeable/RxData$DataObservable;->dataCheck:Lcom/android/camera/data/observeable/RxData$DataCheck;

    invoke-static {v0}, Lcom/android/camera/data/observeable/RxData$DataCheck;->access$000(Lcom/android/camera/data/observeable/RxData$DataCheck;)Landroid/arch/lifecycle/LifecycleOwner;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeObserver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/data/observeable/RxData$DataObservable;->dataCheck:Lcom/android/camera/data/observeable/RxData$DataCheck;

    invoke-static {v1}, Lcom/android/camera/data/observeable/RxData$DataCheck;->access$000(Lcom/android/camera/data/observeable/RxData$DataCheck;)Landroid/arch/lifecycle/LifecycleOwner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RxLiveData"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/camera/data/observeable/RxData$DataObservable;->dataCheck:Lcom/android/camera/data/observeable/RxData$DataCheck;

    invoke-static {v0}, Lcom/android/camera/data/observeable/RxData$DataCheck;->access$000(Lcom/android/camera/data/observeable/RxData$DataCheck;)Landroid/arch/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v0}, Landroid/arch/lifecycle/LifecycleOwner;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/Lifecycle;->removeObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_1
    return-void
.end method

.method protected subscribeActual(Lio/reactivex/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/camera/data/observeable/RxData$DataObserver;

    invoke-direct {v0, p1}, Lcom/android/camera/data/observeable/RxData$DataObserver;-><init>(Lio/reactivex/Observer;)V

    iput-object v0, p0, Lcom/android/camera/data/observeable/RxData$DataObservable;->dataObserver:Lcom/android/camera/data/observeable/RxData$DataObserver;

    iget-object p1, p0, Lcom/android/camera/data/observeable/RxData$DataObservable;->observable:Lio/reactivex/Observable;

    iget-object v0, p0, Lcom/android/camera/data/observeable/RxData$DataObservable;->dataObserver:Lcom/android/camera/data/observeable/RxData$DataObserver;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    iget-object p1, p0, Lcom/android/camera/data/observeable/RxData$DataObservable;->dataCheck:Lcom/android/camera/data/observeable/RxData$DataCheck;

    invoke-static {p1}, Lcom/android/camera/data/observeable/RxData$DataCheck;->access$000(Lcom/android/camera/data/observeable/RxData$DataCheck;)Landroid/arch/lifecycle/LifecycleOwner;

    move-result-object p1

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->DESTROYED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {p1, v0}, Lcom/android/camera/data/observeable/RxData;->access$100(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$State;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/data/observeable/RxData$DataObservable;->dataObserver:Lcom/android/camera/data/observeable/RxData$DataObserver;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/data/observeable/RxData$DataObserver;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/data/observeable/RxData$DataObservable;->dataObserver:Lcom/android/camera/data/observeable/RxData$DataObserver;

    invoke-virtual {p0}, Lcom/android/camera/data/observeable/RxData$DataObserver;->dispose()V

    :cond_0
    return-void
.end method
