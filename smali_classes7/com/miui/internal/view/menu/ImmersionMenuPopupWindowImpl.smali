.class public Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;
.super Lmiui/widget/ImmersionListPopupWindow;
.source ""

# interfaces
.implements Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;


# instance fields
.field private mActionBarDelegate:Lcom/miui/internal/app/ActionBarDelegateImpl;

.field private mAdapter:Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

.field private mLastAnchor:Landroid/view/View;

.field private mLastParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/miui/internal/app/ActionBarDelegateImpl;Landroid/view/Menu;)V
    .locals 1

    invoke-virtual {p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/widget/ImmersionListPopupWindow;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    iput-object p1, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->mActionBarDelegate:Lcom/miui/internal/app/ActionBarDelegateImpl;

    new-instance p1, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

    invoke-direct {p1, v0, p2}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;-><init>(Landroid/content/Context;Landroid/view/Menu;)V

    iput-object p1, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->mAdapter:Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

    invoke-virtual {p0, p1}, Lmiui/widget/ImmersionListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance p1, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;

    invoke-direct {p1, p0}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;-><init>(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;)V

    invoke-virtual {p0, p1}, Lmiui/widget/ImmersionListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;)Lcom/miui/internal/view/menu/ImmersionMenuAdapter;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->mAdapter:Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->mLastAnchor:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->mLastParent:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;)Lcom/miui/internal/app/ActionBarDelegateImpl;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->mActionBarDelegate:Lcom/miui/internal/app/ActionBarDelegateImpl;

    return-object p0
.end method


# virtual methods
.method public show(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->mLastAnchor:Landroid/view/View;

    iput-object p2, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->mLastParent:Landroid/view/ViewGroup;

    invoke-super {p0, p1, p2}, Lmiui/widget/ImmersionListPopupWindow;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public update(Landroid/view/Menu;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->mAdapter:Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

    invoke-virtual {p0, p1}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->update(Landroid/view/Menu;)V

    return-void
.end method
