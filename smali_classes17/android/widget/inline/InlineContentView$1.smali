.class Landroid/widget/inline/InlineContentView$1;
.super Ljava/lang/Object;
.source "InlineContentView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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

    iput-object p1, p0, Landroid/widget/inline/InlineContentView$1;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4

    iget-object v0, p0, Landroid/widget/inline/InlineContentView$1;->this$0:Landroid/widget/inline/InlineContentView;

    # getter for: Landroid/widget/inline/InlineContentView;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Landroid/widget/inline/InlineContentView;->access$000(Landroid/widget/inline/InlineContentView;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/inline/InlineContentView$1;->this$0:Landroid/widget/inline/InlineContentView;

    # getter for: Landroid/widget/inline/InlineContentView;->mOnReparentListener:Landroid/view/SurfaceControl$OnReparentListener;
    invoke-static {v1}, Landroid/widget/inline/InlineContentView;->access$100(Landroid/widget/inline/InlineContentView;)Landroid/view/SurfaceControl$OnReparentListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->addOnReparentListener(Landroid/view/SurfaceControl$OnReparentListener;)Z

    iget-object v1, p0, Landroid/widget/inline/InlineContentView$1;->this$0:Landroid/widget/inline/InlineContentView;

    # getter for: Landroid/widget/inline/InlineContentView;->mSurfaceControlCallback:Landroid/widget/inline/InlineContentView$SurfaceControlCallback;
    invoke-static {v1}, Landroid/widget/inline/InlineContentView;->access$200(Landroid/widget/inline/InlineContentView;)Landroid/widget/inline/InlineContentView$SurfaceControlCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/inline/InlineContentView$SurfaceControlCallback;->onCreated(Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4

    iget-object v0, p0, Landroid/widget/inline/InlineContentView$1;->this$0:Landroid/widget/inline/InlineContentView;

    # getter for: Landroid/widget/inline/InlineContentView;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v0}, Landroid/widget/inline/InlineContentView;->access$000(Landroid/widget/inline/InlineContentView;)Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/inline/InlineContentView$1;->this$0:Landroid/widget/inline/InlineContentView;

    # getter for: Landroid/widget/inline/InlineContentView;->mOnReparentListener:Landroid/view/SurfaceControl$OnReparentListener;
    invoke-static {v1}, Landroid/widget/inline/InlineContentView;->access$100(Landroid/widget/inline/InlineContentView;)Landroid/view/SurfaceControl$OnReparentListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->removeOnReparentListener(Landroid/view/SurfaceControl$OnReparentListener;)Z

    iget-object v1, p0, Landroid/widget/inline/InlineContentView$1;->this$0:Landroid/widget/inline/InlineContentView;

    # getter for: Landroid/widget/inline/InlineContentView;->mSurfaceControlCallback:Landroid/widget/inline/InlineContentView$SurfaceControlCallback;
    invoke-static {v1}, Landroid/widget/inline/InlineContentView;->access$200(Landroid/widget/inline/InlineContentView;)Landroid/widget/inline/InlineContentView$SurfaceControlCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/inline/InlineContentView$SurfaceControlCallback;->onDestroyed(Landroid/view/SurfaceControl;)V

    return-void
.end method
