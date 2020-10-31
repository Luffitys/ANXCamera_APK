.class public Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;
.super Lmiui/widget/ImmersionListPopupWindow;
.source "ImmersionMenuPopupWindowImpl.java"

# interfaces
.implements Lcom/miui/internal/view/menu/ImmersionMenuPopupWindow;


# instance fields
.field private mActionBarDelegate:Lcom/miui/internal/app/ActionBarDelegateImpl;

.field private mAdapter:Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

.field private mLastAnchor:Landroid/view/View;

.field private mLastParent:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/miui/internal/app/ActionBarDelegateImpl;Landroid/view/Menu;)V
    .registers 5

    invoke-virtual {p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/widget/ImmersionListPopupWindow;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/miui/internal/app/ActionBarDelegateImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    iput-object p1, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->mActionBarDelegate:Lcom/miui/internal/app/ActionBarDelegateImpl;

    new-instance v1, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

    invoke-direct {v1, v0, p2}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;-><init>(Landroid/content/Context;Landroid/view/Menu;)V

    iput-object v1, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->mAdapter:Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

    invoke-virtual {p0, v1}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;

    invoke-direct {v1, p0}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl$1;-><init>(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;)V

    invoke-virtual {p0, v1}, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;)Lcom/miui/internal/view/menu/ImmersionMenuAdapter;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->mAdapter:Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->mLastAnchor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->mLastParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;)Lcom/miui/internal/app/ActionBarDelegateImpl;
    .registers 2

    iget-object v0, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->mActionBarDelegate:Lcom/miui/internal/app/ActionBarDelegateImpl;

    return-object v0
.end method


# virtual methods
.method public show(Landroid/view/View;Landroid/view/ViewGroup;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->mLastAnchor:Landroid/view/View;

    iput-object p2, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->mLastParent:Landroid/view/ViewGroup;

    invoke-super {p0, p1, p2}, Lmiui/widget/ImmersionListPopupWindow;->show(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public update(Landroid/view/Menu;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/internal/view/menu/ImmersionMenuPopupWindowImpl;->mAdapter:Lcom/miui/internal/view/menu/ImmersionMenuAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/internal/view/menu/ImmersionMenuAdapter;->update(Landroid/view/Menu;)V

    return-void
.end method
