.class public Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;
.super Ljava/lang/Object;
.source "ExecutorLab.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExecutorLab"

.field private static final THREAD_SIZE:I = 0x3

.field private static instance:Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;


# instance fields
.field private pool:Ljava/util/concurrent/ExecutorService;

.field private volatile running:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->instance:Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->pool:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->running:Z

    return-void
.end method

.method public static getInstance()Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;
    .registers 1

    sget-object v0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->instance:Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    if-nez v0, :cond_b

    new-instance v0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    invoke-direct {v0}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;-><init>()V

    sput-object v0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->instance:Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    :cond_b
    sget-object v0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->instance:Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    return-object v0
.end method

.method public static releaseInstance()V
    .registers 1

    sget-object v0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->instance:Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    if-eqz v0, :cond_a

    invoke-direct {v0}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->shutDown()V

    const/4 v0, 0x0

    sput-object v0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->instance:Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    :cond_a
    return-void
.end method

.method private shutDown()V
    .registers 3

    iget-object v0, p0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->running:Z

    iget-object v0, p0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :goto_10
    iget-object v0, p0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_23

    const-wide/16 v0, 0x64

    :try_start_1a
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_1e

    :goto_1d
    goto :goto_10

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1d

    :cond_23
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->pool:Ljava/util/concurrent/ExecutorService;

    :cond_26
    return-void
.end method


# virtual methods
.method public addTask(Ljava/lang/Runnable;)V
    .registers 4

    iget-boolean v0, p0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->running:Z

    if-nez v0, :cond_c

    const-string v0, "ExecutorLab"

    const-string v1, "ExecutorLab is stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-object v0, p0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->pool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isRunning()Z
    .registers 2

    iget-boolean v0, p0, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->running:Z

    return v0
.end method
