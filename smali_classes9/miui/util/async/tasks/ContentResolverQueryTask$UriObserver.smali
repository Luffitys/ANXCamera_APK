.class Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;
.super Landroid/database/ContentObserver;
.source ""


# instance fields
.field private final mTask:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lmiui/util/async/tasks/ContentResolverQueryTask;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;->mTask:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p0, p0, Lmiui/util/async/tasks/ContentResolverQueryTask$UriObserver;->mTask:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmiui/util/async/tasks/ContentResolverQueryTask;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmiui/util/async/tasks/ContentResolverQueryTask;->requery()V

    :cond_0
    return-void
.end method
