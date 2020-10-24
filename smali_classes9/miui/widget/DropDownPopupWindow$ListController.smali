.class public Lmiui/widget/DropDownPopupWindow$ListController;
.super Lmiui/widget/DropDownPopupWindow$ViewContentController;
.source ""


# instance fields
.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/miui/internal/R$layout;->drop_down_popup_list:I

    invoke-direct {p0, p1, v0}, Lmiui/widget/DropDownPopupWindow$ListController;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiui/widget/DropDownPopupWindow$ViewContentController;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Lmiui/widget/DropDownPopupWindow;)V
    .locals 1

    sget v0, Lcom/miui/internal/R$layout;->drop_down_popup_list:I

    invoke-direct {p0, p1, v0}, Lmiui/widget/DropDownPopupWindow$ViewContentController;-><init>(Lmiui/widget/DropDownPopupWindow;I)V

    return-void
.end method

.method public constructor <init>(Lmiui/widget/DropDownPopupWindow;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiui/widget/DropDownPopupWindow$ViewContentController;-><init>(Lmiui/widget/DropDownPopupWindow;I)V

    return-void
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .locals 0

    invoke-virtual {p0}, Lmiui/widget/DropDownPopupWindow$ViewContentController;->initContent()V

    iget-object p0, p0, Lmiui/widget/DropDownPopupWindow$ListController;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method protected onContentInit(Landroid/view/View;)V
    .locals 1

    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow$ListController;->mListView:Landroid/widget/ListView;

    return-void
.end method
