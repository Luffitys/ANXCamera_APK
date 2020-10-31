.class Landroid/view/ViewRootImpl$UnhandledKeyManager;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnhandledKeyManager"
.end annotation


# instance fields
.field private final mCapturedKeys:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCurrentReceiver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDispatched:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl$UnhandledKeyManager;->mDispatched:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$UnhandledKeyManager;->mCapturedKeys:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl$UnhandledKeyManager;->mCurrentReceiver:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewRootImpl$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/view/ViewRootImpl$UnhandledKeyManager;-><init>()V

    return-void
.end method


# virtual methods
.method dispatch(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 11

    iget-boolean v0, p0, Landroid/view/ViewRootImpl$UnhandledKeyManager;->mDispatched:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const-wide/16 v2, 0x8

    :try_start_8
    const-string v0, "UnhandledKeyEvent dispatch"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl$UnhandledKeyManager;->mDispatched:Z

    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_30

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-eqz v4, :cond_30

    invoke-static {v5}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v6

    if-nez v6, :cond_30

    iget-object v6, p0, Landroid/view/ViewRootImpl$UnhandledKeyManager;->mCapturedKeys:Landroid/util/SparseArray;

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, v5, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_38

    :cond_30
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    nop

    if-eqz v4, :cond_37

    move v1, v0

    :cond_37
    return v1

    :catchall_38
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method preDispatch(Landroid/view/KeyEvent;)V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl$UnhandledKeyManager;->mCurrentReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Landroid/view/ViewRootImpl$UnhandledKeyManager;->mCapturedKeys:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_25

    iget-object v1, p0, Landroid/view/ViewRootImpl$UnhandledKeyManager;->mCapturedKeys:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Landroid/view/ViewRootImpl$UnhandledKeyManager;->mCurrentReceiver:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Landroid/view/ViewRootImpl$UnhandledKeyManager;->mCapturedKeys:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_25
    return-void
.end method

.method preViewDispatch(Landroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl$UnhandledKeyManager;->mDispatched:Z

    iget-object v1, p0, Landroid/view/ViewRootImpl$UnhandledKeyManager;->mCurrentReceiver:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_15

    iget-object v1, p0, Landroid/view/ViewRootImpl$UnhandledKeyManager;->mCapturedKeys:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Landroid/view/ViewRootImpl$UnhandledKeyManager;->mCurrentReceiver:Ljava/lang/ref/WeakReference;

    :cond_15
    iget-object v1, p0, Landroid/view/ViewRootImpl$UnhandledKeyManager;->mCurrentReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_35

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_29

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewRootImpl$UnhandledKeyManager;->mCurrentReceiver:Ljava/lang/ref/WeakReference;

    :cond_29
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {v0, p1}, Landroid/view/View;->onUnhandledKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_34
    return v2

    :cond_35
    return v0
.end method
