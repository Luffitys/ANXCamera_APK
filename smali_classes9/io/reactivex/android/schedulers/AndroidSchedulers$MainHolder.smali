.class final Lio/reactivex/android/schedulers/AndroidSchedulers$MainHolder;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final DEFAULT:Lio/reactivex/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lio/reactivex/android/schedulers/HandlerScheduler;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lio/reactivex/android/schedulers/HandlerScheduler;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lio/reactivex/android/schedulers/AndroidSchedulers$MainHolder;->DEFAULT:Lio/reactivex/Scheduler;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
