.class abstract Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"

# interfaces
.implements Landroid/app/SystemServiceRegistry$ServiceFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CachedServiceFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mCacheIndex:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # operator++ for: Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I
    invoke-static {}, Landroid/app/SystemServiceRegistry;->access$008()I

    move-result v0

    iput v0, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    return-void
.end method


# virtual methods
.method public abstract createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ContextImpl;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation
.end method

.method public final getService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ContextImpl;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p1, Landroid/app/ContextImpl;->mServiceCache:[Ljava/lang/Object;

    iget-object v1, p1, Landroid/app/ContextImpl;->mServiceInitializationStateArray:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_6
    const/4 v4, 0x0

    monitor-enter v0

    :try_start_8
    iget v5, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aget-object v5, v0, v5

    if-nez v5, :cond_96

    iget v6, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aget v6, v1, v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_17

    goto/16 :goto_96

    :cond_17
    iget v6, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aget v6, v1, v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_23

    iget v6, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    const/4 v8, 0x0

    aput v8, v1, v6

    :cond_23
    iget v6, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aget v6, v1, v6

    if-nez v6, :cond_2f

    const/4 v4, 0x1

    iget v6, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    const/4 v8, 0x1

    aput v8, v1, v6

    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_a2

    if-eqz v4, :cond_76

    const/4 v5, 0x0

    const/4 v6, 0x3

    :try_start_34
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->createService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object v7
    :try_end_38
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_34 .. :try_end_38} :catch_4e
    .catchall {:try_start_34 .. :try_end_38} :catchall_4c

    const/4 v8, 0x2

    monitor-enter v0

    :try_start_3a
    iget v5, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput-object v7, v0, v5

    iget v5, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput v8, v1, v5

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    move-object v5, v7

    move v6, v8

    goto :goto_60

    :catchall_49
    move-exception v5

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3a .. :try_end_4b} :catchall_49

    throw v5

    :catchall_4c
    move-exception v7

    goto :goto_65

    :catch_4e
    move-exception v7

    :try_start_4f
    invoke-static {v7}, Landroid/app/SystemServiceRegistry;->onServiceNotFound(Landroid/os/ServiceManager$ServiceNotFoundException;)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_4c

    monitor-enter v0

    :try_start_53
    iget v7, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput-object v5, v0, v7

    iget v7, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput v6, v1, v7

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    nop

    :goto_60
    move-object v3, v5

    goto :goto_98

    :catchall_62
    move-exception v7

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_53 .. :try_end_64} :catchall_62

    throw v7

    :goto_65
    monitor-enter v0

    :try_start_66
    iget v8, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput-object v5, v0, v8

    iget v8, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput v6, v1, v8

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_72
    .catchall {:try_start_66 .. :try_end_72} :catchall_73

    throw v7

    :catchall_73
    move-exception v7

    :try_start_74
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw v7

    :cond_76
    monitor-enter v0

    :goto_77
    :try_start_77
    iget v5, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aget v5, v1, v5
    :try_end_7b
    .catchall {:try_start_77 .. :try_end_7b} :catchall_93

    if-ge v5, v7, :cond_90

    :try_start_7d
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    or-int/2addr v2, v5

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_85
    .catch Ljava/lang/InterruptedException; {:try_start_7d .. :try_end_85} :catch_86
    .catchall {:try_start_7d .. :try_end_85} :catchall_93

    :goto_85
    goto :goto_77

    :catch_86
    move-exception v5

    :try_start_87
    const-string v6, "SystemServiceRegistry"

    const-string v8, "getService() interrupted"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_85

    :cond_90
    monitor-exit v0

    goto/16 :goto_6

    :catchall_93
    move-exception v5

    monitor-exit v0
    :try_end_95
    .catchall {:try_start_87 .. :try_end_95} :catchall_93

    throw v5

    :cond_96
    :goto_96
    move-object v3, v5

    :try_start_97
    monitor-exit v0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_a2

    :goto_98
    if-eqz v2, :cond_a1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    :cond_a1
    return-object v3

    :catchall_a2
    move-exception v5

    :try_start_a3
    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    throw v5
.end method
