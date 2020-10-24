.class Lmiui/widget/FilterSortView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/widget/FilterSortView$TabView$OnFilteredListener;


# instance fields
.field final synthetic this$0:Lmiui/widget/FilterSortView;


# direct methods
.method constructor <init>(Lmiui/widget/FilterSortView;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/FilterSortView$1;->this$0:Lmiui/widget/FilterSortView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilteredChangedListener(Lmiui/widget/FilterSortView$TabView;Z)V
    .locals 4

    if-eqz p2, :cond_0

    iget-object p2, p0, Lmiui/widget/FilterSortView$1;->this$0:Lmiui/widget/FilterSortView;

    invoke-static {p2}, Lmiui/widget/FilterSortView;->access$500(Lmiui/widget/FilterSortView;)Lmiui/widget/FilterSortView$TabView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Lmiui/animation/controller/AnimState;

    const-string v0, "target"

    invoke-direct {p2, v0}, Lmiui/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v0, Lmiui/animation/property/ViewProperty;->X:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getX()F

    move-result v1

    iget-object v2, p0, Lmiui/widget/FilterSortView$1;->this$0:Lmiui/widget/FilterSortView;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/4 v2, 0x0

    new-array v3, v2, [J

    invoke-virtual {p2, v0, v1, v3}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;F[J)Lmiui/animation/controller/AnimState;

    move-result-object p2

    sget-object v0, Lmiui/animation/property/ViewProperty;->Y:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getY()F

    move-result v1

    iget-object v3, p0, Lmiui/widget/FilterSortView$1;->this$0:Lmiui/widget/FilterSortView;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    new-array v3, v2, [J

    invoke-virtual {p2, v0, v1, v3}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;F[J)Lmiui/animation/controller/AnimState;

    move-result-object p2

    sget-object v0, Lmiui/animation/property/ViewProperty;->WIDTH:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    new-array v3, v2, [J

    invoke-virtual {p2, v0, v1, v3}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;I[J)Lmiui/animation/controller/AnimState;

    move-result-object p2

    sget-object v0, Lmiui/animation/property/ViewProperty;->HEIGHT:Lmiui/animation/property/ViewProperty;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    new-array v1, v2, [J

    invoke-virtual {p2, v0, p1, v1}, Lmiui/animation/controller/AnimState;->add(Lmiui/animation/property/ViewProperty;I[J)Lmiui/animation/controller/AnimState;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/view/View;

    iget-object p0, p0, Lmiui/widget/FilterSortView$1;->this$0:Lmiui/widget/FilterSortView;

    invoke-static {p0}, Lmiui/widget/FilterSortView;->access$500(Lmiui/widget/FilterSortView;)Lmiui/widget/FilterSortView$TabView;

    move-result-object p0

    aput-object p0, p2, v2

    invoke-static {p2}, Lmiui/animation/Folme;->useAt([Landroid/view/View;)Lmiui/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiui/animation/IFolme;->state()Lmiui/animation/IStateStyle;

    move-result-object p0

    new-array p2, v2, [Lmiui/animation/base/AnimConfig;

    invoke-interface {p0, p1, p2}, Lmiui/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiui/animation/base/AnimConfig;)Lmiui/animation/IStateStyle;

    :cond_0
    return-void
.end method
