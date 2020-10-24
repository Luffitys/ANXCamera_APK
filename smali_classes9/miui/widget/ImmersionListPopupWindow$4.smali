.class Lmiui/widget/ImmersionListPopupWindow$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lmiui/widget/ImmersionListPopupWindow;


# direct methods
.method constructor <init>(Lmiui/widget/ImmersionListPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/ImmersionListPopupWindow$4;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    iget-object v0, p0, Lmiui/widget/ImmersionListPopupWindow$4;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    invoke-static {v0}, Lmiui/widget/ImmersionListPopupWindow;->access$200(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v4, p3, v0

    iget-object p3, p0, Lmiui/widget/ImmersionListPopupWindow$4;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    invoke-static {p3}, Lmiui/widget/ImmersionListPopupWindow;->access$300(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p3

    if-eqz p3, :cond_0

    if-ltz v4, :cond_0

    iget-object p3, p0, Lmiui/widget/ImmersionListPopupWindow$4;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    invoke-static {p3}, Lmiui/widget/ImmersionListPopupWindow;->access$400(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/ListAdapter;

    move-result-object p3

    invoke-interface {p3}, Landroid/widget/ListAdapter;->getCount()I

    move-result p3

    if-ge v4, p3, :cond_0

    iget-object p0, p0, Lmiui/widget/ImmersionListPopupWindow$4;->this$0:Lmiui/widget/ImmersionListPopupWindow;

    invoke-static {p0}, Lmiui/widget/ImmersionListPopupWindow;->access$300(Lmiui/widget/ImmersionListPopupWindow;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_0
    return-void
.end method
