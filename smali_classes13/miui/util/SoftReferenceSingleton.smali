.class public abstract Lmiui/util/SoftReferenceSingleton;
.super Ljava/lang/Object;
.source "SoftReferenceSingleton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mInstance:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/SoftReferenceSingleton;->mInstance:Ljava/lang/ref/SoftReference;

    return-void
.end method


# virtual methods
.method protected abstract createInstance()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final get()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lmiui/util/SoftReferenceSingleton;->mInstance:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lmiui/util/SoftReferenceSingleton;->mInstance:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    if-nez v0, :cond_1a

    :cond_e
    invoke-virtual {p0}, Lmiui/util/SoftReferenceSingleton;->createInstance()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/util/SoftReferenceSingleton;->mInstance:Ljava/lang/ref/SoftReference;

    :cond_1a
    monitor-exit p0

    return-object v1

    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw v0
.end method
