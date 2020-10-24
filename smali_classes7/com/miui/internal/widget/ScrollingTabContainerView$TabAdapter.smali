.class Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;
.super Landroid/widget/BaseAdapter;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/internal/widget/ScrollingTabContainerView;


# direct methods
.method private constructor <init>(Lcom/miui/internal/widget/ScrollingTabContainerView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/internal/widget/ScrollingTabContainerView;Lcom/miui/internal/widget/ScrollingTabContainerView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;-><init>(Lcom/miui/internal/widget/ScrollingTabContainerView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-static {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->access$600(Lcom/miui/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-static {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView;->access$600(Lcom/miui/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/miui/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActionBar$Tab;

    const/4 p1, 0x1

    invoke-static {p2, p0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView;->access$700(Lcom/miui/internal/widget/ScrollingTabContainerView;Landroid/app/ActionBar$Tab;Z)Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p3, p2

    check-cast p3, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p0, p1}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActionBar$Tab;

    invoke-virtual {p3, p0}, Lcom/miui/internal/widget/ScrollingTabContainerView$TabView;->bindTab(Landroid/app/ActionBar$Tab;)V

    :goto_0
    return-object p2
.end method
