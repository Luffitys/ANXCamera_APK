.class abstract Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;
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
    name = "StaticApplicationContextServiceFetcher"
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
.field private mCachedInstance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract createService(Landroid/content/Context;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ContextImpl;",
            ")TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;->mCachedInstance:Ljava/lang/Object;

    if-nez v0, :cond_19

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1d

    if-eqz v0, :cond_d

    move-object v1, v0

    goto :goto_e

    :cond_d
    move-object v1, p1

    :goto_e
    :try_start_e
    invoke-virtual {p0, v1}, Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;->createService(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;->mCachedInstance:Ljava/lang/Object;
    :try_end_14
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_e .. :try_end_14} :catch_15
    .catchall {:try_start_e .. :try_end_14} :catchall_1d

    goto :goto_19

    :catch_15
    move-exception v1

    :try_start_16
    invoke-static {v1}, Landroid/app/SystemServiceRegistry;->onServiceNotFound(Landroid/os/ServiceManager$ServiceNotFoundException;)V

    :cond_19
    :goto_19
    iget-object v0, p0, Landroid/app/SystemServiceRegistry$StaticApplicationContextServiceFetcher;->mCachedInstance:Ljava/lang/Object;

    monitor-exit p0

    return-object v0

    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_1d

    throw v0
.end method
