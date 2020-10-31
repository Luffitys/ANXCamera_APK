.class public Landroid/view/SurfaceControl$Transaction;
.super Ljava/lang/Object;
.source "SurfaceControl.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transaction"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private static final INVALID_COLOR:[F

.field public static final sRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field mFreeNativeResources:Ljava/lang/Runnable;

.field public mNativeObject:J

.field private final mReparentedSurfaces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;"
        }
    .end annotation
.end field

.field private final mResizedSurfaces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v6, Llibcore/util/NativeAllocationRegistry;

    const-class v0, Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    # invokes: Landroid/view/SurfaceControl;->nativeGetNativeTransactionFinalizer()J
    invoke-static {}, Landroid/view/SurfaceControl;->access$300()J

    move-result-wide v2

    const-wide/16 v4, 0x200

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v6, Landroid/view/SurfaceControl$Transaction;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_24

    sput-object v0, Landroid/view/SurfaceControl$Transaction;->INVALID_COLOR:[F

    new-instance v0, Landroid/view/SurfaceControl$Transaction$1;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction$1;-><init>()V

    sput-object v0, Landroid/view/SurfaceControl$Transaction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_24
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    # invokes: Landroid/view/SurfaceControl;->nativeCreateTransaction()J
    invoke-static {}, Landroid/view/SurfaceControl;->access$500()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    sget-object v2, Landroid/view/SurfaceControl$Transaction;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mFreeNativeResources:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-direct {p0, p1}, Landroid/view/SurfaceControl$Transaction;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/SurfaceControl$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/SurfaceControl$Transaction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private applyResizedSurfaces()V
    .registers 6

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_30

    iget-object v1, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget-object v2, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    # getter for: Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/view/SurfaceControl;->access$700(Landroid/view/SurfaceControl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_1f
    iget v4, v1, Landroid/graphics/Point;->x:I

    # setter for: Landroid/view/SurfaceControl;->mWidth:I
    invoke-static {v2, v4}, Landroid/view/SurfaceControl;->access$802(Landroid/view/SurfaceControl;I)I

    iget v4, v1, Landroid/graphics/Point;->y:I

    # setter for: Landroid/view/SurfaceControl;->mHeight:I
    invoke-static {v2, v4}, Landroid/view/SurfaceControl;->access$902(Landroid/view/SurfaceControl;I)I

    monitor-exit v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :catchall_2d
    move-exception v4

    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_2d

    throw v4

    :cond_30
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method private notifyReparentedSurfaces()V
    .registers 9

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_8
    if-ltz v1, :cond_4f

    iget-object v2, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    # getter for: Landroid/view/SurfaceControl;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/view/SurfaceControl;->access$700(Landroid/view/SurfaceControl;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_17
    # getter for: Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/view/SurfaceControl;->access$1000(Landroid/view/SurfaceControl;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_26

    # getter for: Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/view/SurfaceControl;->access$1000(Landroid/view/SurfaceControl;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_27

    :cond_26
    const/4 v4, 0x0

    :goto_27
    const/4 v5, 0x0

    :goto_28
    if-ge v5, v4, :cond_42

    # getter for: Landroid/view/SurfaceControl;->mReparentListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/view/SurfaceControl;->access$1000(Landroid/view/SurfaceControl;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/SurfaceControl$OnReparentListener;

    iget-object v7, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/SurfaceControl;

    invoke-interface {v6, p0, v7}, Landroid/view/SurfaceControl$OnReparentListener;->onReparent(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    :cond_42
    iget-object v5, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    nop

    monitor-exit v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :catchall_4c
    move-exception v4

    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_17 .. :try_end_4e} :catchall_4c

    throw v4

    :cond_4f
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_18

    # invokes: Landroid/view/SurfaceControl;->nativeReadTransactionFromParcel(Landroid/os/Parcel;)J
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$5400(Landroid/os/Parcel;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    sget-object v2, Landroid/view/SurfaceControl$Transaction;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v2, p0, v0, v1}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mFreeNativeResources:Ljava/lang/Runnable;

    :cond_18
    return-void
.end method


# virtual methods
.method public apply()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    return-void
.end method

.method public apply(Z)V
    .registers 4

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;->applyResizedSurfaces()V

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;->notifyReparentedSurfaces()V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    # invokes: Landroid/view/SurfaceControl;->nativeApplyTransaction(JZ)V
    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->access$600(JZ)V

    return-void
.end method

.method protected checkPreconditions(Landroid/view/SurfaceControl;)V
    .registers 2

    # invokes: Landroid/view/SurfaceControl;->checkNotReleased()V
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$400(Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public close()V
    .registers 3

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mFreeNativeResources:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    return-void
.end method

.method public deferTransactionUntil(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;J)Landroid/view/SurfaceControl$Transaction;
    .registers 14

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_7

    return-object p0

    :cond_7
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v3, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    iget-wide v5, p2, Landroid/view/SurfaceControl;->mNativeObject:J

    move-wide v7, p3

    # invokes: Landroid/view/SurfaceControl;->nativeDeferTransactionUntil(JJJJ)V
    invoke-static/range {v1 .. v8}, Landroid/view/SurfaceControl;->access$3000(JJJJ)V

    return-object p0
.end method

.method public deferTransactionUntilSurface(Landroid/view/SurfaceControl;Landroid/view/Surface;J)Landroid/view/SurfaceControl$Transaction;
    .registers 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_7

    return-object p0

    :cond_7
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v3, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    iget-wide v5, p2, Landroid/view/Surface;->mNativeObject:J

    move-wide v7, p3

    # invokes: Landroid/view/SurfaceControl;->nativeDeferTransactionUntilSurface(JJJJ)V
    invoke-static/range {v1 .. v8}, Landroid/view/SurfaceControl;->access$3100(JJJJ)V

    return-object p0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public detachChildren(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 6

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    # invokes: Landroid/view/SurfaceControl;->nativeSeverChildren(JJ)V
    invoke-static {v0, v1, v2, v3}, Landroid/view/SurfaceControl;->access$3400(JJ)V

    return-object p0
.end method

.method public hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 8

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v4, 0x1

    const/4 v5, 0x1

    # invokes: Landroid/view/SurfaceControl;->nativeSetFlags(JJII)V
    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->access$1200(JJII)V

    return-object p0
.end method

.method public merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;
    .registers 6

    if-ne p0, p1, :cond_3

    return-object p0

    :cond_3
    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    iget-object v0, p1, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    iget-object v0, p1, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    # invokes: Landroid/view/SurfaceControl;->nativeMergeTransaction(JJ)V
    invoke-static {v0, v1, v2, v3}, Landroid/view/SurfaceControl;->access$4800(JJ)V

    return-object p0
.end method

.method public remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->release()V

    return-object p0
.end method

.method public reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 11

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_c

    # invokes: Landroid/view/SurfaceControl;->checkNotReleased()V
    invoke-static {p2}, Landroid/view/SurfaceControl;->access$400(Landroid/view/SurfaceControl;)V

    iget-wide v0, p2, Landroid/view/SurfaceControl;->mNativeObject:J

    :cond_c
    iget-wide v2, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v4, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move-wide v6, v0

    # invokes: Landroid/view/SurfaceControl;->nativeReparent(JJJ)V
    invoke-static/range {v2 .. v7}, Landroid/view/SurfaceControl;->access$3300(JJJ)V

    iget-object v2, p0, Landroid/view/SurfaceControl$Transaction;->mReparentedSurfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public reparentChildren(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 9

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    iget-wide v4, p2, Landroid/view/SurfaceControl;->mNativeObject:J

    # invokes: Landroid/view/SurfaceControl;->nativeReparentChildren(JJJ)V
    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->access$3200(JJJ)V

    return-object p0
.end method

.method public setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    # invokes: Landroid/view/SurfaceControl;->nativeSetAlpha(JJF)V
    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->access$1900(JJF)V

    return-object p0
.end method

.method public setAnimationTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 3

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    # invokes: Landroid/view/SurfaceControl;->nativeSetAnimationTransaction(J)V
    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->access$4100(J)V

    return-object p0
.end method

.method public setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    # invokes: Landroid/view/SurfaceControl;->nativeSetBackgroundBlurRadius(JJI)V
    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->access$2800(JJI)V

    return-object p0
.end method

.method public setBlur(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 9

    # invokes: Landroid/view/SurfaceControl;->checkNotReleased()V
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$400(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    if-eqz p2, :cond_c

    const/16 v4, 0x10

    goto :goto_d

    :cond_c
    const/4 v4, 0x0

    :goto_d
    const/16 v5, 0x10

    # invokes: Landroid/view/SurfaceControl;->nativeSetFlags(JJII)V
    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->access$1200(JJII)V

    return-object p0
.end method

.method public setBlurCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .registers 10

    # invokes: Landroid/view/SurfaceControl;->checkNotReleased()V
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$400(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move-object v4, p2

    move-object v5, p3

    # invokes: Landroid/view/SurfaceControl;->nativeSetBlurCrop(JJLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->access$4900(JJLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object p0
.end method

.method public setBlurCurrent(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 9

    # invokes: Landroid/view/SurfaceControl;->checkNotReleased()V
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$400(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    if-eqz p2, :cond_c

    const/16 v4, 0x8

    goto :goto_d

    :cond_c
    const/4 v4, 0x0

    :goto_d
    const/16 v5, 0x8

    # invokes: Landroid/view/SurfaceControl;->nativeSetFlags(JJII)V
    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->access$1200(JJII)V

    return-object p0
.end method

.method public setBlurMode(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    # invokes: Landroid/view/SurfaceControl;->checkNotReleased()V
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$400(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    # invokes: Landroid/view/SurfaceControl;->nativeSetBlurMode(JJI)V
    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->access$5100(JJI)V

    return-object p0
.end method

.method public setBlurRatio(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    # invokes: Landroid/view/SurfaceControl;->checkNotReleased()V
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$400(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    # invokes: Landroid/view/SurfaceControl;->nativeSetBlurRatio(JJF)V
    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->access$5000(JJF)V

    return-object p0
.end method

.method public setBufferSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;
    .registers 12

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-object v0, p0, Landroid/view/SurfaceControl$Transaction;->mResizedSurfaces:Landroid/util/ArrayMap;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v4, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v6, p2

    move v7, p3

    # invokes: Landroid/view/SurfaceControl;->nativeSetSize(JJII)V
    invoke-static/range {v2 .. v7}, Landroid/view/SurfaceControl;->access$1400(JJII)V

    return-object p0
.end method

.method public setCastLayer(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 9

    # invokes: Landroid/view/SurfaceControl;->checkNotReleased()V
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$400(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    if-eqz p2, :cond_c

    const/16 v4, 0x40

    goto :goto_d

    :cond_c
    const/4 v4, 0x0

    :goto_d
    const/16 v5, 0x40

    # invokes: Landroid/view/SurfaceControl;->nativeSetFlags(JJII)V
    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->access$1200(JJII)V

    return-object p0
.end method

.method public setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    # invokes: Landroid/view/SurfaceControl;->nativeSetColor(JJ[F)V
    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->access$3600(JJ[F)V

    return-object p0
.end method

.method public setColorSpaceAgnostic(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    # invokes: Landroid/view/SurfaceControl;->nativeSetColorSpaceAgnostic(JJZ)V
    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->access$2500(JJZ)V

    return-object p0
.end method

.method public setColorTransform(Landroid/view/SurfaceControl;[F[F)Landroid/view/SurfaceControl$Transaction;
    .registers 10

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move-object v4, p2

    move-object v5, p3

    # invokes: Landroid/view/SurfaceControl;->nativeSetColorTransform(JJ[F[F)V
    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->access$2400(JJ[F[F)V

    return-object p0
.end method

.method public setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    # invokes: Landroid/view/SurfaceControl;->nativeSetCornerRadius(JJF)V
    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->access$2700(JJF)V

    return-object p0
.end method

.method public setDisplayLayerStack(Landroid/os/IBinder;I)Landroid/view/SurfaceControl$Transaction;
    .registers 5

    if-eqz p1, :cond_8

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    # invokes: Landroid/view/SurfaceControl;->nativeSetDisplayLayerStack(JLandroid/os/IBinder;I)V
    invoke-static {v0, v1, p1, p2}, Landroid/view/SurfaceControl;->access$3800(JLandroid/os/IBinder;I)V

    return-object p0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .registers 20

    move-object v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    if-eqz p1, :cond_35

    if-eqz v1, :cond_2d

    if-eqz v2, :cond_25

    iget-wide v3, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget v7, v1, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    iget v9, v1, Landroid/graphics/Rect;->right:I

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    iget v11, v2, Landroid/graphics/Rect;->left:I

    iget v12, v2, Landroid/graphics/Rect;->top:I

    iget v13, v2, Landroid/graphics/Rect;->right:I

    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v5, p1

    move/from16 v6, p2

    # invokes: Landroid/view/SurfaceControl;->nativeSetDisplayProjection(JLandroid/os/IBinder;IIIIIIIII)V
    invoke-static/range {v3 .. v14}, Landroid/view/SurfaceControl;->access$3900(JLandroid/os/IBinder;IIIIIIIII)V

    return-object v0

    :cond_25
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "displayRect must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "layerStackRect must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_35
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "displayToken must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setDisplaySize(Landroid/os/IBinder;II)Landroid/view/SurfaceControl$Transaction;
    .registers 6

    if-eqz p1, :cond_15

    if-lez p2, :cond_c

    if-lez p3, :cond_c

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    # invokes: Landroid/view/SurfaceControl;->nativeSetDisplaySize(JLandroid/os/IBinder;II)V
    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/SurfaceControl;->access$4000(JLandroid/os/IBinder;II)V

    return-object p0

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width and height must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDisplaySurface(Landroid/os/IBinder;Landroid/view/Surface;)Landroid/view/SurfaceControl$Transaction;
    .registers 8

    if-eqz p1, :cond_1b

    if-eqz p2, :cond_13

    iget-object v0, p2, Landroid/view/Surface;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-wide v1, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v3, p2, Landroid/view/Surface;->mNativeObject:J

    # invokes: Landroid/view/SurfaceControl;->nativeSetDisplaySurface(JLandroid/os/IBinder;J)V
    invoke-static {v1, v2, p1, v3, v4}, Landroid/view/SurfaceControl;->access$3700(JLandroid/os/IBinder;J)V

    monitor-exit v0

    goto :goto_1a

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1

    :cond_13
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    const-wide/16 v2, 0x0

    # invokes: Landroid/view/SurfaceControl;->nativeSetDisplaySurface(JLandroid/os/IBinder;J)V
    invoke-static {v0, v1, p1, v2, v3}, Landroid/view/SurfaceControl;->access$3700(JLandroid/os/IBinder;J)V

    :goto_1a
    return-object p0

    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "displayToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEarlyWakeup()Landroid/view/SurfaceControl$Transaction;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    # invokes: Landroid/view/SurfaceControl;->nativeSetEarlyWakeup(J)V
    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->access$4200(J)V

    return-object p0
.end method

.method public setEarlyWakeupEnd()Landroid/view/SurfaceControl$Transaction;
    .registers 3

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    # invokes: Landroid/view/SurfaceControl;->nativeSetEarlyWakeupEnd(J)V
    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->access$4400(J)V

    return-object p0
.end method

.method public setEarlyWakeupStart()Landroid/view/SurfaceControl$Transaction;
    .registers 3

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    # invokes: Landroid/view/SurfaceControl;->nativeSetEarlyWakeupStart(J)V
    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->access$4300(J)V

    return-object p0
.end method

.method public setFixedTransformHint(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    # invokes: Landroid/view/SurfaceControl;->nativeSetFixedTransformHint(JJI)V
    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->access$1500(JJI)V

    return-object p0
.end method

.method public setFrameRate(Landroid/view/SurfaceControl;FI)Landroid/view/SurfaceControl$Transaction;
    .registers 10

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v4, p2

    move v5, p3

    # invokes: Landroid/view/SurfaceControl;->nativeSetFrameRate(JJFI)V
    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->access$4700(JJFI)V

    return-object p0
.end method

.method public setFrameRateSelectionPriority(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    # invokes: Landroid/view/SurfaceControl;->checkNotReleased()V
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$400(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    # invokes: Landroid/view/SurfaceControl;->nativeSetFrameRateSelectionPriority(JJI)V
    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->access$1100(JJI)V

    return-object p0
.end method

.method public setGeometry(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/SurfaceControl$Transaction;
    .registers 13

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    int-to-long v6, p4

    move-object v4, p2

    move-object v5, p3

    # invokes: Landroid/view/SurfaceControl;->nativeSetGeometry(JJLandroid/graphics/Rect;Landroid/graphics/Rect;J)V
    invoke-static/range {v0 .. v7}, Landroid/view/SurfaceControl;->access$2200(JJLandroid/graphics/Rect;Landroid/graphics/Rect;J)V

    return-object p0
.end method

.method public setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    # invokes: Landroid/view/SurfaceControl;->nativeSetInputWindowInfo(JJLandroid/view/InputWindowHandle;)V
    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->access$2000(JJLandroid/view/InputWindowHandle;)V

    return-object p0
.end method

.method public setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    # invokes: Landroid/view/SurfaceControl;->nativeSetLayer(JJI)V
    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->access$1600(JJI)V

    return-object p0
.end method

.method public setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    # invokes: Landroid/view/SurfaceControl;->nativeSetLayerStack(JJI)V
    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->access$2900(JJI)V

    return-object p0
.end method

.method public setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;
    .registers 14

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    # invokes: Landroid/view/SurfaceControl;->nativeSetMatrix(JJFFFF)V
    invoke-static/range {v0 .. v7}, Landroid/view/SurfaceControl;->access$2300(JJFFFF)V

    return-object p0
.end method

.method public setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;
    .registers 11

    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v0, 0x0

    aget v3, p3, v0

    const/4 v0, 0x3

    aget v4, p3, v0

    const/4 v0, 0x1

    aget v5, p3, v0

    const/4 v0, 0x4

    aget v6, p3, v0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    const/4 v0, 0x2

    aget v0, p3, v0

    const/4 v1, 0x5

    aget v1, p3, v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public setMetadata(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;
    .registers 6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    :try_start_7
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setMetadata(Landroid/view/SurfaceControl;ILandroid/os/Parcel;)Landroid/view/SurfaceControl$Transaction;
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_f

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    return-object p0

    :catchall_f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public setMetadata(Landroid/view/SurfaceControl;ILandroid/os/Parcel;)Landroid/view/SurfaceControl$Transaction;
    .registers 10

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v4, p2

    move-object v5, p3

    # invokes: Landroid/view/SurfaceControl;->nativeSetMetadata(JJILandroid/os/Parcel;)V
    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->access$4500(JJILandroid/os/Parcel;)V

    return-object p0
.end method

.method public setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 15

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    if-eqz p2, :cond_f

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v4, 0x2

    const/4 v5, 0x2

    # invokes: Landroid/view/SurfaceControl;->nativeSetFlags(JJII)V
    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->access$1200(JJII)V

    goto :goto_18

    :cond_f
    iget-wide v6, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v8, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v10, 0x0

    const/4 v11, 0x2

    # invokes: Landroid/view/SurfaceControl;->nativeSetFlags(JJII)V
    invoke-static/range {v6 .. v11}, Landroid/view/SurfaceControl;->access$1200(JJII)V

    :goto_18
    return-object p0
.end method

.method public setOverrideScalingMode(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    # invokes: Landroid/view/SurfaceControl;->nativeSetOverrideScalingMode(JJI)V
    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->access$3500(JJI)V

    return-object p0
.end method

.method public setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;
    .registers 10

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    move v4, p2

    move v5, p3

    # invokes: Landroid/view/SurfaceControl;->nativeSetPosition(JJFF)V
    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->access$1300(JJFF)V

    return-object p0
.end method

.method public setRecordHide(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 9

    # invokes: Landroid/view/SurfaceControl;->checkNotReleased()V
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$400(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    if-eqz p2, :cond_c

    const/16 v4, 0x20

    goto :goto_d

    :cond_c
    const/4 v4, 0x0

    :goto_d
    const/16 v5, 0x20

    # invokes: Landroid/view/SurfaceControl;->nativeSetFlags(JJII)V
    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->access$1200(JJII)V

    return-object p0
.end method

.method public setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 11

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    iget-wide v4, p2, Landroid/view/SurfaceControl;->mNativeObject:J

    move v6, p3

    # invokes: Landroid/view/SurfaceControl;->nativeSetRelativeLayer(JJJI)V
    invoke-static/range {v0 .. v6}, Landroid/view/SurfaceControl;->access$1700(JJJI)V

    return-object p0
.end method

.method public setScreenProjection(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    # invokes: Landroid/view/SurfaceControl;->checkNotReleased()V
    invoke-static {p1}, Landroid/view/SurfaceControl;->access$400(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    # invokes: Landroid/view/SurfaceControl;->nativeSetScreenProjection(JJI)V
    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->access$5200(JJI)V

    return-object p0
.end method

.method public setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 15

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    if-eqz p2, :cond_11

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/16 v4, 0x80

    const/16 v5, 0x80

    # invokes: Landroid/view/SurfaceControl;->nativeSetFlags(JJII)V
    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->access$1200(JJII)V

    goto :goto_1b

    :cond_11
    iget-wide v6, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v8, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v10, 0x0

    const/16 v11, 0x80

    # invokes: Landroid/view/SurfaceControl;->nativeSetFlags(JJII)V
    invoke-static/range {v6 .. v11}, Landroid/view/SurfaceControl;->access$1200(JJII)V

    :goto_1b
    return-object p0
.end method

.method public setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    # invokes: Landroid/view/SurfaceControl;->nativeSetShadowRadius(JJF)V
    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->access$4600(JJF)V

    return-object p0
.end method

.method public setTransparentRegionHint(Landroid/view/SurfaceControl;Landroid/graphics/Region;)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    # invokes: Landroid/view/SurfaceControl;->nativeSetTransparentRegionHint(JJLandroid/graphics/Region;)V
    invoke-static {v0, v1, v2, v3, p2}, Landroid/view/SurfaceControl;->access$1800(JJLandroid/graphics/Region;)V

    return-object p0
.end method

.method public setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;
    .registers 4

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    if-eqz p2, :cond_a

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0

    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;
    .registers 12

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, p2

    move v7, p3

    # invokes: Landroid/view/SurfaceControl;->nativeSetWindowCrop(JJIIII)V
    invoke-static/range {v0 .. v7}, Landroid/view/SurfaceControl;->access$2600(JJIIII)V

    return-object p0
.end method

.method public setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    if-eqz v2, :cond_1b

    iget-wide v3, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v5, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    # invokes: Landroid/view/SurfaceControl;->nativeSetWindowCrop(JJIIII)V
    invoke-static/range {v3 .. v10}, Landroid/view/SurfaceControl;->access$2600(JJIIII)V

    goto :goto_29

    :cond_1b
    iget-wide v11, v0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v13, v1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    # invokes: Landroid/view/SurfaceControl;->nativeSetWindowCrop(JJIIII)V
    invoke-static/range {v11 .. v18}, Landroid/view/SurfaceControl;->access$2600(JJIIII)V

    :goto_29
    return-object v0
.end method

.method public show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 8

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    # invokes: Landroid/view/SurfaceControl;->nativeSetFlags(JJII)V
    invoke-static/range {v0 .. v5}, Landroid/view/SurfaceControl;->access$1200(JJII)V

    return-object p0
.end method

.method public syncInputWindows()Landroid/view/SurfaceControl$Transaction;
    .registers 3

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    # invokes: Landroid/view/SurfaceControl;->nativeSyncInputWindows(J)V
    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->access$2100(J)V

    return-object p0
.end method

.method public unsetColor(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    sget-object v4, Landroid/view/SurfaceControl$Transaction;->INVALID_COLOR:[F

    # invokes: Landroid/view/SurfaceControl;->nativeSetColor(JJ[F)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControl;->access$3600(JJ[F)V

    return-object p0
.end method

.method public unsetFixedTransformHint(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    .registers 7

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->checkPreconditions(Landroid/view/SurfaceControl;)V

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    iget-wide v2, p1, Landroid/view/SurfaceControl;->mNativeObject:J

    const/4 v4, -0x1

    # invokes: Landroid/view/SurfaceControl;->nativeSetFixedTransformHint(JJI)V
    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/SurfaceControl;->access$1500(JJI)V

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    :cond_d
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_11
    iget-wide v0, p0, Landroid/view/SurfaceControl$Transaction;->mNativeObject:J

    # invokes: Landroid/view/SurfaceControl;->nativeWriteTransactionToParcel(JLandroid/os/Parcel;)V
    invoke-static {v0, v1, p1}, Landroid/view/SurfaceControl;->access$5300(JLandroid/os/Parcel;)V

    return-void
.end method
