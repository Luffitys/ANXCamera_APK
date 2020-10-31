.class public Lmiui/widget/DropDownSingleChoiceMenu;
.super Ljava/lang/Object;
.source "DropDownSingleChoiceMenu.java"

# interfaces
.implements Lmiui/widget/DropDownPopupWindow$Controller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;
    }
.end annotation


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

.field private mPopupWindow:Lmiui/widget/DropDownPopupWindow;

.field private mSelectedItem:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lmiui/widget/DropDownSingleChoiceMenu;)Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;
    .registers 2

    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mListener:Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/widget/DropDownSingleChoiceMenu;)V
    .registers 1

    invoke-direct {p0}, Lmiui/widget/DropDownSingleChoiceMenu;->internalDismiss()V

    return-void
.end method

.method static synthetic access$202(Lmiui/widget/DropDownSingleChoiceMenu;I)I
    .registers 2

    iput p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mSelectedItem:I

    return p1
.end method

.method private internalDismiss()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lmiui/widget/DropDownPopupWindow;

    return-void
.end method

.method private setAccessibilityDelegate(Landroid/view/View;)V
    .registers 3

    new-instance v0, Lmiui/widget/DropDownSingleChoiceMenu$4;

    invoke-direct {v0, p0}, Lmiui/widget/DropDownSingleChoiceMenu$4;-><init>(Lmiui/widget/DropDownSingleChoiceMenu;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lmiui/widget/DropDownPopupWindow;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lmiui/widget/DropDownPopupWindow;->dismiss()V

    :cond_7
    return-void
.end method

.method public getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getSelectedItem()I
    .registers 2

    iget v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mSelectedItem:I

    return v0
.end method

.method public onAniamtionUpdate(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public onDismiss()V
    .registers 2

    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mListener:Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;->onDismiss()V

    :cond_7
    return-void
.end method

.method public onShow()V
    .registers 1

    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mAnchorView:Landroid/view/View;

    invoke-direct {p0, p1}, Lmiui/widget/DropDownSingleChoiceMenu;->setAccessibilityDelegate(Landroid/view/View;)V

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mItems:Ljava/util/List;

    return-void
.end method

.method public setItems([Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mItems:Ljava/util/List;

    return-void
.end method

.method public setOnMenuListener(Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mListener:Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

    return-void
.end method

.method public setSelectedItem(I)V
    .registers 2

    iput p1, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mSelectedItem:I

    return-void
.end method

.method public show()V
    .registers 7

    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mItems:Ljava/util/List;

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_9

    goto :goto_5c

    :cond_9
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lmiui/widget/DropDownPopupWindow;

    if-nez v0, :cond_5b

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

    move-result-object v1

    new-instance v2, Lmiui/widget/DropDownSingleChoiceMenu$2;

    iget-object v3, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mContext:Landroid/content/Context;

    sget v4, Lcom/miui/internal/R$layout;->select_dropdown_popup_singlechoice:I

    iget-object v5, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mItems:Ljava/util/List;

    invoke-direct {v2, p0, v3, v4, v5}, Lmiui/widget/DropDownSingleChoiceMenu$2;-><init>(Lmiui/widget/DropDownSingleChoiceMenu;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lmiui/widget/DropDownSingleChoiceMenu$3;

    invoke-direct {v2, p0}, Lmiui/widget/DropDownSingleChoiceMenu$3;-><init>(Lmiui/widget/DropDownSingleChoiceMenu;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget v3, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mSelectedItem:I

    invoke-virtual {v1, v3, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v2, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lmiui/widget/DropDownPopupWindow;

    iget-object v3, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mAnchorView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lmiui/widget/DropDownPopupWindow;->setAnchor(Landroid/view/View;)V

    iget-object v2, p0, Lmiui/widget/DropDownSingleChoiceMenu;->mPopupWindow:Lmiui/widget/DropDownPopupWindow;

    invoke-virtual {v2}, Lmiui/widget/DropDownPopupWindow;->show()V

    :cond_5b
    return-void

    :cond_5c
    :goto_5c
    return-void
.end method
