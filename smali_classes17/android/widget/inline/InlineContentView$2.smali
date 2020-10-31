.class Landroid/widget/inline/InlineContentView$2;
.super Ljava/lang/Object;
.source "InlineContentView.java"

# interfaces
.implements Landroid/view/SurfaceControl$OnReparentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/inline/InlineContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/inline/InlineContentView;


# direct methods
.method constructor <init>(Landroid/widget/inline/InlineContentView;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/inline/InlineContentView$2;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReparent(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 7

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/view/SurfaceControl;->getLocalOwnerView()Landroid/view/View;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    instance-of v2, v1, Landroid/view/SurfaceView;

    if-eqz v2, :cond_1b

    iget-object v0, p0, Landroid/widget/inline/InlineContentView$2;->this$0:Landroid/widget/inline/InlineContentView;

    new-instance v2, Ljava/lang/ref/WeakReference;

    move-object v3, v1

    check-cast v3, Landroid/view/SurfaceView;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    # setter for: Landroid/widget/inline/InlineContentView;->mParentSurfaceOwnerView:Ljava/lang/ref/WeakReference;
    invoke-static {v0, v2}, Landroid/widget/inline/InlineContentView;->access$302(Landroid/widget/inline/InlineContentView;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    goto :goto_20

    :cond_1b
    iget-object v2, p0, Landroid/widget/inline/InlineContentView$2;->this$0:Landroid/widget/inline/InlineContentView;

    # setter for: Landroid/widget/inline/InlineContentView;->mParentSurfaceOwnerView:Ljava/lang/ref/WeakReference;
    invoke-static {v2, v0}, Landroid/widget/inline/InlineContentView;->access$302(Landroid/widget/inline/InlineContentView;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    :goto_20
    return-void
.end method
