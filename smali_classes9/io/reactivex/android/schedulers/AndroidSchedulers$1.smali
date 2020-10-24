.class final Lio/reactivex/android/schedulers/AndroidSchedulers$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/reactivex/Scheduler;
    .locals 0

    sget-object p0, Lio/reactivex/android/schedulers/AndroidSchedulers$MainHolder;->DEFAULT:Lio/reactivex/Scheduler;

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lio/reactivex/android/schedulers/AndroidSchedulers$1;->call()Lio/reactivex/Scheduler;

    move-result-object p0

    return-object p0
.end method
