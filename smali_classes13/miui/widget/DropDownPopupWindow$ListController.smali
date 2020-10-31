.class public Lmiui/widget/DropDownPopupWindow$ListController;
.super Lmiui/widget/DropDownPopupWindow$ViewContentController;
.source "DropDownPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/DropDownPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListController"
.end annotation


# instance fields
.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    sget v0, Lcom/miui/internal/R$layout;->drop_down_popup_list:I

    invoke-direct {p0, p1, v0}, Lmiui/widget/DropDownPopupWindow$ListController;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/widget/DropDownPopupWindow$ViewContentController;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Lmiui/widget/DropDownPopupWindow;)V
    .registers 3

    sget v0, Lcom/miui/internal/R$layout;->drop_down_popup_list:I

    invoke-direct {p0, p1, v0}, Lmiui/widget/DropDownPopupWindow$ViewContentController;-><init>(Lmiui/widget/DropDownPopupWindow;I)V

    return-void
.end method

.method public constructor <init>(Lmiui/widget/DropDownPopupWindow;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lmiui/widget/DropDownPopupWindow$ViewContentController;-><init>(Lmiui/widget/DropDownPopupWindow;I)V

    return-void
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .registers 2

    invoke-virtual {p0}, Lmiui/widget/DropDownPopupWindow$ListController;->initContent()V

    iget-object v0, p0, Lmiui/widget/DropDownPopupWindow$ListController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method protected onContentInit(Landroid/view/View;)V
    .registers 3

    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lmiui/widget/DropDownPopupWindow$ListController;->mListView:Landroid/widget/ListView;

    return-void
.end method
