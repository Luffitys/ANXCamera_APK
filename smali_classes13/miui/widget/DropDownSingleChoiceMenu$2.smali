.class Lmiui/widget/DropDownSingleChoiceMenu$2;
.super Landroid/widget/ArrayAdapter;
.source "DropDownSingleChoiceMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/DropDownSingleChoiceMenu;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/DropDownSingleChoiceMenu;


# direct methods
.method constructor <init>(Lmiui/widget/DropDownSingleChoiceMenu;Landroid/content/Context;ILjava/util/List;)V
    .registers 5

    iput-object p1, p0, Lmiui/widget/DropDownSingleChoiceMenu$2;->this$0:Lmiui/widget/DropDownSingleChoiceMenu;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/widget/DropDownSingleChoiceMenu$2;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/widget/DropDownSingleChoiceMenu$2;->getCount()I

    move-result v2

    invoke-static {v1, v2, p1, v0}, Lcom/miui/internal/widget/DropDownSingleChoiceMenuHelper;->getView(Landroid/content/Context;IILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/internal/util/FolmeAnimHelper;->addPressAnim(Landroid/view/View;)V

    return-object v0
.end method
