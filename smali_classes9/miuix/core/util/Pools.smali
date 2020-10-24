.class public final Lmiuix/core/util/Pools;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final mInstanceHolderMap:Ljava/util/HashMap;

.field private static final mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;

.field private static final mStringBuilderPool:Lmiuix/core/util/Pools$Pool;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiuix/core/util/Pools;->mInstanceHolderMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiuix/core/util/Pools;->mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;

    new-instance v0, Lmiuix/core/util/Pools$1;

    invoke-direct {v0}, Lmiuix/core/util/Pools$1;-><init>()V

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lmiuix/core/util/Pools;->createSoftReferencePool(Lmiuix/core/util/Pools$Manager;I)Lmiuix/core/util/Pools$SoftReferencePool;

    move-result-object v0

    sput-object v0, Lmiuix/core/util/Pools;->mStringBuilderPool:Lmiuix/core/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lmiuix/core/util/Pools;->mInstanceHolderMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lmiuix/core/util/Pools;->mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static createSimplePool(Lmiuix/core/util/Pools$Manager;I)Lmiuix/core/util/Pools$SimplePool;
    .locals 1

    new-instance v0, Lmiuix/core/util/Pools$SimplePool;

    invoke-direct {v0, p0, p1}, Lmiuix/core/util/Pools$SimplePool;-><init>(Lmiuix/core/util/Pools$Manager;I)V

    return-object v0
.end method

.method public static createSoftReferencePool(Lmiuix/core/util/Pools$Manager;I)Lmiuix/core/util/Pools$SoftReferencePool;
    .locals 1

    new-instance v0, Lmiuix/core/util/Pools$SoftReferencePool;

    invoke-direct {v0, p0, p1}, Lmiuix/core/util/Pools$SoftReferencePool;-><init>(Lmiuix/core/util/Pools$Manager;I)V

    return-object v0
.end method

.method public static getStringBuilderPool()Lmiuix/core/util/Pools$Pool;
    .locals 1

    sget-object v0, Lmiuix/core/util/Pools;->mStringBuilderPool:Lmiuix/core/util/Pools$Pool;

    return-object v0
.end method

.method static onPoolClose(Lmiuix/core/util/Pools$InstanceHolder;I)V
    .locals 1

    sget-object v0, Lmiuix/core/util/Pools;->mInstanceHolderMap:Ljava/util/HashMap;

    monitor-enter v0

    neg-int p1, p1

    :try_start_0
    invoke-virtual {p0, p1}, Lmiuix/core/util/Pools$InstanceHolder;->resize(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static onPoolCreate(Ljava/lang/Class;I)Lmiuix/core/util/Pools$InstanceHolder;
    .locals 2

    sget-object v0, Lmiuix/core/util/Pools;->mInstanceHolderMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lmiuix/core/util/Pools;->mInstanceHolderMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/core/util/Pools$InstanceHolder;

    if-nez v1, :cond_0

    new-instance v1, Lmiuix/core/util/Pools$InstanceHolder;

    invoke-direct {v1, p0, p1}, Lmiuix/core/util/Pools$InstanceHolder;-><init>(Ljava/lang/Class;I)V

    sget-object p1, Lmiuix/core/util/Pools;->mInstanceHolderMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Lmiuix/core/util/Pools$InstanceHolder;->resize(I)V

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static onSoftReferencePoolClose(Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;I)V
    .locals 1

    sget-object v0, Lmiuix/core/util/Pools;->mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;

    monitor-enter v0

    neg-int p1, p1

    :try_start_0
    invoke-virtual {p0, p1}, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->resize(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static onSoftReferencePoolCreate(Ljava/lang/Class;I)Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;
    .locals 2

    sget-object v0, Lmiuix/core/util/Pools;->mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lmiuix/core/util/Pools;->mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;

    if-nez v1, :cond_0

    new-instance v1, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;

    invoke-direct {v1, p0, p1}, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;-><init>(Ljava/lang/Class;I)V

    sget-object p1, Lmiuix/core/util/Pools;->mSoftReferenceInstanceHolderMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Lmiuix/core/util/Pools$SoftReferenceInstanceHolder;->resize(I)V

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
