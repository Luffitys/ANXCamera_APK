.class public Lmiui/widget/DropDownSingleChoiceMenu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/widget/DropDownPopupWindow$Controller;


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/List;

.field private mListener:Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

.field private mPopupWindow:Lmiui/widget/DropDownPopupWindow;

.field private mSelectedItem:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lmiui/widget/DropDownSingleChoiceMenu;)Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;
    .locals 0

    iget-object p0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mListener:Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

    return-object p0
.end method

.method static synthetic access$100(Lmiui/widget/DropDownSingleChoiceMenu;)V
    .locals 0

    invoke-direct {p0}, Lmiui/widget/DropDownSingleChoiceMenu;->internalDismiss()V

    return-void
.end method

.method static synthetic access$202(Lmiui/widget/DropDownSingleChoiceMenu;I)I
    .locals 0

    iput p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mSelectedItem:I

    return p1
.end method

.method private internalDismiss()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lmiui/widget/DropDownPopupWindow;

    return-void
.end method

.method private setAccessibilityDelegate(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lmiui/widget/DropDownSingleChoiceMenu$4;

    invoke-direct {v0, p0}, Lmiui/widget/DropDownSingleChoiceMenu$4;-><init>(Lmiui/widget/DropDownSingleChoiceMenu;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    iget-object p0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lmiui/widget/DropDownPopupWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmiui/widget/DropDownPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public getItems()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getSelectedItem()I
    .locals 0

    iget p0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mSelectedItem:I

    return p0
.end method

.method public onAniamtionUpdate(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public onDismiss()V
    .locals 0

    iget-object p0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mListener:Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mAnchorView:Landroid/view/View;

    invoke-direct {p0, p1}, Lmiui/widget/DropDownSingleChoiceMenu;->setAccessibilityDelegate(Landroid/view/View;)V

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mItems:Ljava/util/List;

    return-void
.end method

.method public setItems([Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mItems:Ljava/util/List;

    return-void
.end method

.method public setOnMenuListener(Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mListener:Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

    return-void
.end method

.method public setSelectedItem(I)V
    .locals 0

    iput p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mSelectedItem:I

    return-void
.end method

.method public show()V
    .locals 5

    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mItems:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lmiui/widget/DropDownPopupWindow;

    if-nez v0, :cond_1

    new-instance v0, Lmiui/widget/DropDownPopupWindow;

    iget-object v1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lmiui/widget/DropDownPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lmiui/widget/DropDownPopupWindow;

    new-instance v1, Lmiui/widget/DropDownSingleChoiceMenu$1;

    invoke-direct {v1, p0}, Lmiui/widget/DropDownSingleChoiceMenu$1;-><init>(Lmiui/widget/DropDownSingleChoiceMenu;)V

    invoke-virtual {v0, v1}, Lmiui/widget/DropDownPopupWindow;->setContainerController(Lmiui/widget/DropDownPopupWindow$ContainerController;)V

    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lmiui/widget/DropDownPopupWindow;

    invoke-virtual {v0, p0}, Lmiui/widget/DropDownPopupWindow;->setDropDownController(Lmiui/widget/DropDownPopupWindow$Controller;)V

    new-instance v0, Lmiui/widget/DropDownPopupWindow$ListController;

    iget-object v1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lmiui/widget/DropDownPopupWindow;

    invoke-direct {v0, v1}, Lmiui/widget/DropDownPopupWindow$ListController;-><init>(Lmiui/widget/DropDownPopupWindow;)V

    invoke-virtual {v0}, Lmiui/widget/DropDownPopupWindow$ListController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lmiui/widget/DropDownSingleChoiceMenu$2;

    iget-object v2, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mContext:Landroid/content/Context;

    sget v3, Lcom/miui/internal/R$layout;->select_dropdown_popup_singlechoice:I

    iget-object v4, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mItems:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, v4}, Lmiui/widget/DropDownSingleChoiceMenu$2;-><init>(Lmiui/widget/DropDownSingleChoiceMenu;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lmiui/widget/DropDownSingleChoiceMenu$3;

    invoke-direct {v1, p0}, Lmiui/widget/DropDownSingleChoiceMenu$3;-><init>(Lmiui/widget/DropDownSingleChoiceMenu;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget v2, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mSelectedItem:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lmiui/widget/DropDownPopupWindow;

    iget-object v1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lmiui/widget/DropDownPopupWindow;->setAnchor(Landroid/view/View;)V

    iget-object p0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lmiui/widget/DropDownPopupWindow;

    invoke-virtual {p0}, Lmiui/widget/DropDownPopupWindow;->show()V

    :cond_1
    :goto_0
    return-void
.end method
