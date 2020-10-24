.class Lmiui/widget/DropDownSingleChoiceMenu$2;
.super Landroid/widget/ArrayAdapter;
.source ""


# instance fields
.field final synthetic this$0:Lmiui/widget/DropDownSingleChoiceMenu;


# direct methods
.method constructor <init>(Lmiui/widget/DropDownSingleChoiceMenu;Landroid/content/Context;ILjava/util/List;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/DropDownSingleChoiceMenu$2;->this$0:Lmiui/widget/DropDownSingleChoiceMenu;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p0

    invoke-static {p3, p0, p1, p2}, Lcom/miui/internal/widget/DropDownSingleChoiceMenuHelper;->getView(Landroid/content/Context;IILandroid/view/View;)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/internal/util/FolmeAnimHelper;->addPressAnim(Landroid/view/View;)V

    return-object p0
.end method
