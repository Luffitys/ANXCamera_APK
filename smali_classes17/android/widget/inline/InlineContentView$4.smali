.class Landroid/widget/inline/InlineContentView$4;
.super Landroid/view/SurfaceView;
.source "InlineContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/inline/InlineContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/inline/InlineContentView;


# direct methods
.method constructor <init>(Landroid/widget/inline/InlineContentView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    iput-object p1, p0, Landroid/widget/inline/InlineContentView$4;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected onSetSurfacePositionAndScaleRT(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V
    .registers 14

    iget-object v0, p0, Landroid/widget/inline/InlineContentView$4;->this$0:Landroid/widget/inline/InlineContentView;

    # getter for: Landroid/widget/inline/InlineContentView;->mParentPosition:[I
    invoke-static {v0}, Landroid/widget/inline/InlineContentView;->access$500(Landroid/widget/inline/InlineContentView;)[I

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/widget/inline/InlineContentView$4;->this$0:Landroid/widget/inline/InlineContentView;

    # getter for: Landroid/widget/inline/InlineContentView;->mParentPosition:[I
    invoke-static {v0}, Landroid/widget/inline/InlineContentView;->access$500(Landroid/widget/inline/InlineContentView;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    sub-int v0, p3, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/widget/inline/InlineContentView$4;->this$0:Landroid/widget/inline/InlineContentView;

    # getter for: Landroid/widget/inline/InlineContentView;->mParentScale:Landroid/graphics/PointF;
    invoke-static {v1}, Landroid/widget/inline/InlineContentView;->access$600(Landroid/widget/inline/InlineContentView;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    div-float/2addr v0, v1

    float-to-int p3, v0

    iget-object v0, p0, Landroid/widget/inline/InlineContentView$4;->this$0:Landroid/widget/inline/InlineContentView;

    # getter for: Landroid/widget/inline/InlineContentView;->mParentPosition:[I
    invoke-static {v0}, Landroid/widget/inline/InlineContentView;->access$500(Landroid/widget/inline/InlineContentView;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    sub-int v0, p4, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/widget/inline/InlineContentView$4;->this$0:Landroid/widget/inline/InlineContentView;

    # getter for: Landroid/widget/inline/InlineContentView;->mParentScale:Landroid/graphics/PointF;
    invoke-static {v1}, Landroid/widget/inline/InlineContentView;->access$600(Landroid/widget/inline/InlineContentView;)Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v1

    float-to-int p4, v0

    :cond_34
    iget-object v0, p0, Landroid/widget/inline/InlineContentView$4;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-virtual {v0}, Landroid/widget/inline/InlineContentView;->getScaleX()F

    move-result p5

    iget-object v0, p0, Landroid/widget/inline/InlineContentView$4;->this$0:Landroid/widget/inline/InlineContentView;

    invoke-virtual {v0}, Landroid/widget/inline/InlineContentView;->getScaleY()F

    move-result p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-super/range {v0 .. v6}, Landroid/view/SurfaceView;->onSetSurfacePositionAndScaleRT(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IIFF)V

    return-void
.end method
