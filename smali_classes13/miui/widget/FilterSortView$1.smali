.class Lmiui/widget/FilterSortView$1;
.super Ljava/lang/Object;
.source "FilterSortView.java"

# interfaces
.implements Lmiui/widget/FilterSortView$TabView$OnFilteredListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/FilterSortView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/FilterSortView;


# direct methods
.method constructor <init>(Lmiui/widget/FilterSortView;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/FilterSortView$1;->this$0:Lmiui/widget/FilterSortView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilteredChangedListener(Lmiui/widget/FilterSortView$TabView;Z)V
    .registers 8

    if-eqz p2, :cond_6e

    iget-object v0, p0, Lmiui/widget/FilterSortView$1;->this$0:Lmiui/widget/FilterSortView;

    # getter for: Lmiui/widget/FilterSortView;->mBackgroundTabView:Lmiui/widget/FilterSortView$TabView;
    invoke-static {v0}, Lmiui/widget/FilterSortView;->access$500(Lmiui/widget/FilterSortView;)Lmiui/widget/FilterSortView$TabView;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/widget/FilterSortView$TabView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6e

    new-instance v0, Lmiui/animation/controller/AnimState;

    const-string v1, "target"

    invoke-direct {v0, v1}, Lmiui/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiui/animation/property/ViewProperty;->X:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1}, Lmiui/widget/FilterSortView$TabView;->getX()F

    move-result v2

    iget-object v3, p0, Lmiui/widget/FilterSortView$1;->this$0:Lmiui/widget/FilterSortView;

    invoke-virtual {v3}, Lmiui/widget/FilterSortView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/4 v3, 0x0

    new-array v4, v3, [J

    invoke-virtual {v0, v1, v2, v4}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;F[J)Lmiui/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiui/animation/property/ViewProperty;->Y:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1}, Lmiui/widget/FilterSortView$TabView;->getY()F

    move-result v2

    iget-object v4, p0, Lmiui/widget/FilterSortView$1;->this$0:Lmiui/widget/FilterSortView;

    invoke-virtual {v4}, Lmiui/widget/FilterSortView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    new-array v4, v3, [J

    invoke-virtual {v0, v1, v2, v4}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;F[J)Lmiui/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiui/animation/property/ViewProperty;->WIDTH:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1}, Lmiui/widget/FilterSortView$TabView;->getWidth()I

    move-result v2

    new-array v4, v3, [J

    invoke-virtual {v0, v1, v2, v4}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;I[J)Lmiui/animation/controller/AnimState;

    move-result-object v0

    sget-object v1, Lmiui/animation/property/ViewProperty;->HEIGHT:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1}, Lmiui/widget/FilterSortView$TabView;->getHeight()I

    move-result v2

    new-array v4, v3, [J

    invoke-virtual {v0, v1, v2, v4}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;I[J)Lmiui/animation/controller/AnimState;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lmiui/widget/FilterSortView$1;->this$0:Lmiui/widget/FilterSortView;

    # getter for: Lmiui/widget/FilterSortView;->mBackgroundTabView:Lmiui/widget/FilterSortView$TabView;
    invoke-static {v2}, Lmiui/widget/FilterSortView;->access$500(Lmiui/widget/FilterSortView;)Lmiui/widget/FilterSortView$TabView;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiui/animation/Folme;->useAt([Landroid/view/View;)Lmiui/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiui/animation/IFolme;->state()Lmiui/animation/IStateStyle;

    move-result-object v1

    new-array v2, v3, [Lmiui/animation/base/AnimConfig;

    invoke-interface {v1, v0, v2}, Lmiui/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    :cond_6e
    return-void
.end method
