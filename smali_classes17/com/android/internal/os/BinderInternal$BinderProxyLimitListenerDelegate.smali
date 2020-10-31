.class Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;
.super Ljava/lang/Object;
.source "BinderInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BinderProxyLimitListenerDelegate"
.end annotation


# instance fields
.field private mBinderProxyLimitListener:Lcom/android/internal/os/BinderInternal$BinderProxyLimitListener;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/BinderInternal$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;)Lcom/android/internal/os/BinderInternal$BinderProxyLimitListener;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;->mBinderProxyLimitListener:Lcom/android/internal/os/BinderInternal$BinderProxyLimitListener;

    return-object v0
.end method


# virtual methods
.method notifyClient(I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;->mBinderProxyLimitListener:Lcom/android/internal/os/BinderInternal$BinderProxyLimitListener;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate$1;-><init>(Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_f
    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw v0
.end method

.method setListener(Lcom/android/internal/os/BinderInternal$BinderProxyLimitListener;Landroid/os/Handler;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;->mBinderProxyLimitListener:Lcom/android/internal/os/BinderInternal$BinderProxyLimitListener;

    iput-object p2, p0, Lcom/android/internal/os/BinderInternal$BinderProxyLimitListenerDelegate;->mHandler:Landroid/os/Handler;

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method
