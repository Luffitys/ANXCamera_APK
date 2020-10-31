.class public final Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;
.super Ljava/lang/Object;
.source "InputMethodPrivilegedOperationsRegistry.java"


# static fields
.field private static final sLock:Ljava/lang/Object;

.field private static sNop:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

.field private static sRegistry:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;
    .registers 5

    sget-object v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    if-nez v1, :cond_d

    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->getNopOps()Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_d
    sget-object v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1d

    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->getNopOps()Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :cond_1d
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    if-nez v2, :cond_2b

    invoke-static {}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->getNopOps()Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    move-result-object v3

    monitor-exit v0

    return-object v3

    :cond_2b
    monitor-exit v0

    return-object v2

    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method private static getNopOps()Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;
    .registers 1

    sget-object v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sNop:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;-><init>()V

    sput-object v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sNop:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    :cond_b
    sget-object v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sNop:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;

    return-object v0
.end method

.method public static isRegistered(Landroid/os/IBinder;)Z
    .registers 3

    sget-object v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_a
    sget-object v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public static put(Landroid/os/IBinder;Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;)V
    .registers 7

    sget-object v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    if-nez v1, :cond_e

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    :cond_e
    sget-object v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1f

    monitor-exit v0

    return-void

    :cond_1f
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is already registered for  this token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " newOps="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public static remove(Landroid/os/IBinder;)V
    .registers 3

    sget-object v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    sget-object v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperationsRegistry;->sRegistry:Ljava/util/WeakHashMap;

    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method
