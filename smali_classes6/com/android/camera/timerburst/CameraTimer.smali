.class public Lcom/android/camera/timerburst/CameraTimer;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraTimer"


# instance fields
.field private mConsumedTakeTimes:J

.field private mCountdownDisposable:Lio/reactivex/disposables/Disposable;

.field private mInitialCount:I

.field private mInitialRepeatTimes:I

.field private mOutdoorObserver:Lio/reactivex/Observer;

.field private mTotalTakeTimes:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/timerburst/CameraTimer;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/timerburst/CameraTimer;->mCountdownDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/camera/timerburst/CameraTimer;)Lio/reactivex/Observer;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/timerburst/CameraTimer;->mOutdoorObserver:Lio/reactivex/Observer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/camera/timerburst/CameraTimer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/timerburst/CameraTimer;->notifyNumber()V

    return-void
.end method

.method static synthetic access$314(Lcom/android/camera/timerburst/CameraTimer;J)J
    .locals 2

    iget-wide v0, p0, Lcom/android/camera/timerburst/CameraTimer;->mConsumedTakeTimes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/camera/timerburst/CameraTimer;->mConsumedTakeTimes:J

    return-wide v0
.end method

.method private notifyNumber()V
    .locals 7

    iget-wide v0, p0, Lcom/android/camera/timerburst/CameraTimer;->mConsumedTakeTimes:J

    iget v2, p0, Lcom/android/camera/timerburst/CameraTimer;->mInitialCount:I

    int-to-long v3, v2

    rem-long/2addr v0, v3

    int-to-long v2, v2

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    sub-long/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyNumber: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/camera/timerburst/CameraTimer;->mConsumedTakeTimes:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraTimer"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/camera/timerburst/CameraTimer;->mOutdoorObserver:Lio/reactivex/Observer;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/timerburst/CameraTimer;->mCountdownDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/timerburst/CameraTimer;->mCountdownDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/timerburst/CameraTimer;->mCountdownDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/timerburst/CameraTimer;->mCountdownDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public pause()V
    .locals 2

    const-string v0, "CameraTimer"

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/timerburst/CameraTimer;->dispose()V

    return-void
.end method

.method public resume()V
    .locals 6

    const-string v0, "CameraTimer"

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/android/camera/timerburst/CameraTimer;->mTotalTakeTimes:J

    iget-wide v2, p0, Lcom/android/camera/timerburst/CameraTimer;->mConsumedTakeTimes:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_0

    return-void

    :cond_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, v4}, Lio/reactivex/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/android/camera/timerburst/CameraTimer$1;

    invoke-direct {v1, p0}, Lcom/android/camera/timerburst/CameraTimer$1;-><init>(Lcom/android/camera/timerburst/CameraTimer;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public setCount(I)Lcom/android/camera/timerburst/CameraTimer;
    .locals 0

    iput p1, p0, Lcom/android/camera/timerburst/CameraTimer;->mInitialCount:I

    return-object p0
.end method

.method public setRepeatTimes(I)Lcom/android/camera/timerburst/CameraTimer;
    .locals 0

    iput p1, p0, Lcom/android/camera/timerburst/CameraTimer;->mInitialRepeatTimes:I

    return-object p0
.end method

.method public start(Lio/reactivex/Observer;)V
    .locals 2

    iput-object p1, p0, Lcom/android/camera/timerburst/CameraTimer;->mOutdoorObserver:Lio/reactivex/Observer;

    iget p1, p0, Lcom/android/camera/timerburst/CameraTimer;->mInitialCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/camera/timerburst/CameraTimer;->mInitialCount:I

    iget v0, p0, Lcom/android/camera/timerburst/CameraTimer;->mInitialRepeatTimes:I

    mul-int/2addr p1, v0

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/camera/timerburst/CameraTimer;->mTotalTakeTimes:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/timerburst/CameraTimer;->mConsumedTakeTimes:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "start: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/timerburst/CameraTimer;->mInitialCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " | "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/camera/timerburst/CameraTimer;->mInitialRepeatTimes:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraTimer"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/camera/timerburst/CameraTimer;->resume()V

    return-void
.end method
