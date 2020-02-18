.class public final Lmiui/util/Pools;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/Pools$SoftReferencePool;,
        Lmiui/util/Pools$SimplePool;,
        Lmiui/util/Pools$a;,
        Lmiui/util/Pools$d;,
        Lmiui/util/Pools$c;,
        Lmiui/util/Pools$b;,
        Lmiui/util/Pools$Manager;,
        Lmiui/util/Pools$Pool;
    }
.end annotation


# static fields
.field private static final pS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lmiui/util/Pools$c<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final qS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lmiui/util/Pools$d<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final rS:Lmiui/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/util/Pools$Pool<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/Pools;->pS:Ljava/util/HashMap;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/Pools;->qS:Ljava/util/HashMap;

    .line 3
    new-instance v0, Lmiui/util/Pools$1;

    invoke-direct {v0}, Lmiui/util/Pools$1;-><init>()V

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lmiui/util/Pools;->createSoftReferencePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SoftReferencePool;

    move-result-object v0

    sput-object v0, Lmiui/util/Pools;->rS:Lmiui/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lmiui/util/Pools$c;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmiui/util/Pools$c<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lmiui/util/Pools;->pS:Ljava/util/HashMap;

    monitor-enter v0

    neg-int p1, p1

    .line 2
    :try_start_4
    invoke-virtual {p0, p1}, Lmiui/util/Pools$c;->resize(I)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw p0
.end method

.method static a(Lmiui/util/Pools$d;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmiui/util/Pools$d<",
            "TT;>;I)V"
        }
    .end annotation

    .line 4
    sget-object v0, Lmiui/util/Pools;->qS:Ljava/util/HashMap;

    monitor-enter v0

    neg-int p1, p1

    .line 5
    :try_start_4
    invoke-virtual {p0, p1}, Lmiui/util/Pools$d;->resize(I)V

    .line 6
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw p0
.end method

.method static c(Ljava/lang/Class;I)Lmiui/util/Pools$c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lmiui/util/Pools$c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lmiui/util/Pools;->pS:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Lmiui/util/Pools;->pS:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/Pools$c;

    if-nez v1, :cond_18

    .line 4
    new-instance v1, Lmiui/util/Pools$c;

    invoke-direct {v1, p0, p1}, Lmiui/util/Pools$c;-><init>(Ljava/lang/Class;I)V

    .line 5
    sget-object p1, Lmiui/util/Pools;->pS:Ljava/util/HashMap;

    invoke-virtual {p1, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 6
    :cond_18
    invoke-virtual {v1, p1}, Lmiui/util/Pools$c;->resize(I)V

    .line 7
    :goto_1b
    monitor-exit v0

    return-object v1

    :catchall_1d
    move-exception p0

    .line 8
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public static createSimplePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SimplePool;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmiui/util/Pools$Manager<",
            "TT;>;I)",
            "Lmiui/util/Pools$SimplePool<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lmiui/util/Pools$SimplePool;

    invoke-direct {v0, p0, p1}, Lmiui/util/Pools$SimplePool;-><init>(Lmiui/util/Pools$Manager;I)V

    return-object v0
.end method

.method public static createSoftReferencePool(Lmiui/util/Pools$Manager;I)Lmiui/util/Pools$SoftReferencePool;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmiui/util/Pools$Manager<",
            "TT;>;I)",
            "Lmiui/util/Pools$SoftReferencePool<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lmiui/util/Pools$SoftReferencePool;

    invoke-direct {v0, p0, p1}, Lmiui/util/Pools$SoftReferencePool;-><init>(Lmiui/util/Pools$Manager;I)V

    return-object v0
.end method

.method static d(Ljava/lang/Class;I)Lmiui/util/Pools$d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lmiui/util/Pools$d<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lmiui/util/Pools;->qS:Ljava/util/HashMap;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Lmiui/util/Pools;->qS:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/Pools$d;

    if-nez v1, :cond_18

    .line 4
    new-instance v1, Lmiui/util/Pools$d;

    invoke-direct {v1, p0, p1}, Lmiui/util/Pools$d;-><init>(Ljava/lang/Class;I)V

    .line 5
    sget-object p1, Lmiui/util/Pools;->qS:Ljava/util/HashMap;

    invoke-virtual {p1, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    .line 6
    :cond_18
    invoke-virtual {v1, p1}, Lmiui/util/Pools$d;->resize(I)V

    .line 7
    :goto_1b
    monitor-exit v0

    return-object v1

    :catchall_1d
    move-exception p0

    .line 8
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public static getStringBuilderPool()Lmiui/util/Pools$Pool;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/util/Pools$Pool<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lmiui/util/Pools;->rS:Lmiui/util/Pools$Pool;

    return-object v0
.end method

.method static synthetic p()Ljava/util/HashMap;
    .registers 1

    .line 1
    sget-object v0, Lmiui/util/Pools;->qS:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic x()Ljava/util/HashMap;
    .registers 1

    .line 1
    sget-object v0, Lmiui/util/Pools;->pS:Ljava/util/HashMap;

    return-object v0
.end method
