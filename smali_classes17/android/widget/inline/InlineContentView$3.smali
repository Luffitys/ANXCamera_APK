.class Landroid/widget/inline/InlineContentView$3;
.super Ljava/lang/Object;
.source "InlineContentView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


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

    iput-object p1, p0, Landroid/widget/inline/InlineContentView$3;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDraw()V
    .registers 3

    iget-object v0, p0, Landroid/widget/inline/InlineContentView$3;->this$0:Landroid/widget/inline/InlineContentView;

    # invokes: Landroid/widget/inline/InlineContentView;->computeParentPositionAndScale()V
    invoke-static {v0}, Landroid/widget/inline/InlineContentView;->access$400(Landroid/widget/inline/InlineContentView;)V

    iget-object v0, p0, Landroid/widget/inline/InlineContentView$3;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-virtual {v0}, Landroid/widget/inline/InlineContentView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_11

    :cond_f
    const/16 v0, 0x8

    :goto_11
    iget-object v1, p0, Landroid/widget/inline/InlineContentView$3;->this$0:Landroid/widget/inline/InlineContentView;

    # getter for: Landroid/widget/inline/InlineContentView;->mSurfaceView:Landroid/view/SurfaceView;
    invoke-static {v1}, Landroid/widget/inline/InlineContentView;->access$000(Landroid/widget/inline/InlineContentView;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method
