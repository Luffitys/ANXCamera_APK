.class Lmiui/widget/TriggerViewDrawer$ScrollViewWrapper;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/widget/TriggerViewDrawer$ScrollableView;


# instance fields
.field private iScrollView:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/widget/ScrollView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/widget/TriggerViewDrawer$ScrollViewWrapper;->iScrollView:Landroid/widget/ScrollView;

    return-void
.end method


# virtual methods
.method public canScrollDown()Z
    .locals 0

    iget-object p0, p0, Lmiui/widget/TriggerViewDrawer$ScrollViewWrapper;->iScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
