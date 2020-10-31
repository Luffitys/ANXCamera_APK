.class Lmiui/maml/component/MamlView$InnerView;
.super Landroid/view/View;
.source "MamlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/component/MamlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerView"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/component/MamlView;


# direct methods
.method public constructor <init>(Lmiui/maml/component/MamlView;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7

    iget-object v0, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    iget-object v0, v0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    # getter for: Lmiui/maml/component/MamlView;->mCanvasParamsChanged:Z
    invoke-static {v0}, Lmiui/maml/component/MamlView;->access$100(Lmiui/maml/component/MamlView;)Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    # getter for: Lmiui/maml/component/MamlView;->mX:F
    invoke-static {v1}, Lmiui/maml/component/MamlView;->access$200(Lmiui/maml/component/MamlView;)F

    move-result v1

    iget-object v2, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    # getter for: Lmiui/maml/component/MamlView;->mY:F
    invoke-static {v2}, Lmiui/maml/component/MamlView;->access$300(Lmiui/maml/component/MamlView;)F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    # getter for: Lmiui/maml/component/MamlView;->mScale:F
    invoke-static {v1}, Lmiui/maml/component/MamlView;->access$400(Lmiui/maml/component/MamlView;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    # getter for: Lmiui/maml/component/MamlView;->mScale:F
    invoke-static {v1}, Lmiui/maml/component/MamlView;->access$400(Lmiui/maml/component/MamlView;)F

    move-result v1

    iget-object v2, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    # getter for: Lmiui/maml/component/MamlView;->mScale:F
    invoke-static {v2}, Lmiui/maml/component/MamlView;->access$400(Lmiui/maml/component/MamlView;)F

    move-result v2

    iget-object v3, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    # getter for: Lmiui/maml/component/MamlView;->mPivotX:I
    invoke-static {v3}, Lmiui/maml/component/MamlView;->access$500(Lmiui/maml/component/MamlView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    # getter for: Lmiui/maml/component/MamlView;->mPivotY:I
    invoke-static {v4}, Lmiui/maml/component/MamlView;->access$600(Lmiui/maml/component/MamlView;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_4a
    iget-object v1, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    iget-object v1, v1, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1, p1}, Lmiui/maml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_5c

    :cond_55
    iget-object v0, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    iget-object v0, v0, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1}, Lmiui/maml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    :goto_5c
    return-void
.end method
