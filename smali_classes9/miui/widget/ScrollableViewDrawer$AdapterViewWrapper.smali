.class Lmiui/widget/ScrollableViewDrawer$AdapterViewWrapper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/widget/ScrollableViewDrawer$IScrollableView;


# instance fields
.field private iAdapterView:Landroid/widget/AdapterView;


# direct methods
.method public constructor <init>(Landroid/widget/AdapterView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/widget/ScrollableViewDrawer$AdapterViewWrapper;->iAdapterView:Landroid/widget/AdapterView;

    return-void
.end method


# virtual methods
.method public canScroll()Z
    .locals 7

    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer$AdapterViewWrapper;->iAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    const-string v1, "ScrollableViewDrawer"

    const/4 v2, 0x1

    if-lez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canScrollDown true first visible "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v0, p0, Lmiui/widget/ScrollableViewDrawer$AdapterViewWrapper;->iAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getPaddingTop()I

    move-result v0

    iget-object v3, p0, Lmiui/widget/ScrollableViewDrawer$AdapterViewWrapper;->iAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_2

    iget-object v6, p0, Lmiui/widget/ScrollableViewDrawer$AdapterViewWrapper;->iAdapterView:Landroid/widget/AdapterView;

    invoke-virtual {v6, v5}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    if-ge v6, v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "canScrollDown true "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    return v4
.end method
