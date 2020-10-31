.class Lmiui/widget/ImmersionListPopupWindow$4;
.super Ljava/lang/Object;
.source "ImmersionListPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/ImmersionListPopupWindow;->prepareShow(Landroid/view/View;Landroid/view/ViewGroup;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/ImmersionListPopupWindow;


# direct methods
.method constructor <init>(Lmiui/widget/ImmersionListPopupWindow;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow$4;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$4;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    # getter for: Lmiui/widget/ImmersionListPopupWindow;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lmiui/widget/ImmersionListPopupWindow;->access$200(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p3, v0

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$4;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    # getter for: Lmiui/widget/ImmersionListPopupWindow;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lmiui/widget/ImmersionListPopupWindow;->access$300(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_2e

    if-ltz p3, :cond_2e

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$4;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    # getter for: Lmiui/widget/ImmersionListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v0}, Lmiui/widget/ImmersionListPopupWindow;->access$400(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge p3, v0, :cond_2e

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$4;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    # getter for: Lmiui/widget/ImmersionListPopupWindow;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
    invoke-static {v0}, Lmiui/widget/ImmersionListPopupWindow;->access$300(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_2e
    return-void
.end method
