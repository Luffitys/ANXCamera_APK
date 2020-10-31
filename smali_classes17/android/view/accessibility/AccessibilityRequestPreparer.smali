.class public abstract Landroid/view/accessibility/AccessibilityRequestPreparer;
.super Ljava/lang/Object;
.source "AccessibilityRequestPreparer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityRequestPreparer$ViewAttachStateListener;,
        Landroid/view/accessibility/AccessibilityRequestPreparer$RequestTypes;
    }
.end annotation


# static fields
.field public static final REQUEST_TYPE_EXTRA_DATA:I = 0x1


# instance fields
.field private final mAccessibilityViewId:I

.field private final mRequestTypes:I

.field private final mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRequestPreparer;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityRequestPreparer;->mAccessibilityViewId:I

    iput p2, p0, Landroid/view/accessibility/AccessibilityRequestPreparer;->mRequestTypes:I

    new-instance v0, Landroid/view/accessibility/AccessibilityRequestPreparer$ViewAttachStateListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/accessibility/AccessibilityRequestPreparer$ViewAttachStateListener;-><init>(Landroid/view/accessibility/AccessibilityRequestPreparer;Landroid/view/accessibility/AccessibilityRequestPreparer$1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void

    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "View must be attached to a window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method getAccessibilityViewId()I
    .registers 2

    iget v0, p0, Landroid/view/accessibility/AccessibilityRequestPreparer;->mAccessibilityViewId:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRequestPreparer;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public abstract onPrepareExtraData(ILjava/lang/String;Landroid/os/Bundle;Landroid/os/Message;)V
.end method
