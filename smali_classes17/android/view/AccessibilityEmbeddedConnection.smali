.class final Landroid/view/AccessibilityEmbeddedConnection;
.super Landroid/view/accessibility/IAccessibilityEmbeddedConnection$Stub;
.source "AccessibilityEmbeddedConnection.java"


# instance fields
.field private final mTmpScreenMatrix:Landroid/graphics/Matrix;

.field private final mViewRootImpl:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 3

    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityEmbeddedConnection$Stub;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/AccessibilityEmbeddedConnection;->mTmpScreenMatrix:Landroid/graphics/Matrix;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/AccessibilityEmbeddedConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public associateEmbeddedHierarchy(Landroid/os/IBinder;I)Landroid/os/IBinder;
    .registers 6

    iget-object v0, p0, Landroid/view/AccessibilityEmbeddedConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_26

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object p1, v2, Landroid/view/View$AttachInfo;->mLeashedParentToken:Landroid/os/IBinder;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput p2, v2, Landroid/view/View$AttachInfo;->mLeashedParentAccessibilityViewId:I

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mLeashToken:Landroid/os/IBinder;

    invoke-virtual {v1, p1, v2}, Landroid/view/accessibility/AccessibilityManager;->associateEmbeddedHierarchy(Landroid/os/IBinder;Landroid/os/IBinder;)V

    :cond_23
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mLeashToken:Landroid/os/IBinder;

    return-object v2

    :cond_26
    const/4 v1, 0x0

    return-object v1
.end method

.method public disassociateEmbeddedHierarchy()V
    .registers 5

    iget-object v0, p0, Landroid/view/AccessibilityEmbeddedConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_2d

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/view/View$AttachInfo;->mLeashedParentToken:Landroid/os/IBinder;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v3, -0x1

    iput v3, v2, Landroid/view/View$AttachInfo;->mLeashedParentAccessibilityViewId:I

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mLocationInParentDisplay:Landroid/graphics/Point;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mLeashToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->disassociateEmbeddedHierarchy(Landroid/os/IBinder;)V

    :cond_2d
    return-void
.end method

.method public setScreenMatrix([F)V
    .registers 5

    iget-object v0, p0, Landroid/view/AccessibilityEmbeddedConnection;->mViewRootImpl:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl;

    if-eqz v0, :cond_27

    iget-object v1, p0, Landroid/view/AccessibilityEmbeddedConnection;->mTmpScreenMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->setValues([F)V

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mScreenMatrixInEmbeddedHierarchy:Landroid/graphics/Matrix;

    if-nez v1, :cond_1e

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, v1, Landroid/view/View$AttachInfo;->mScreenMatrixInEmbeddedHierarchy:Landroid/graphics/Matrix;

    :cond_1e
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mScreenMatrixInEmbeddedHierarchy:Landroid/graphics/Matrix;

    iget-object v2, p0, Landroid/view/AccessibilityEmbeddedConnection;->mTmpScreenMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    :cond_27
    return-void
.end method
