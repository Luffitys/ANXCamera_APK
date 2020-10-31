.class Lmiui/widget/DropDownSingleChoiceMenu$3;
.super Ljava/lang/Object;
.source "DropDownSingleChoiceMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/DropDownSingleChoiceMenu;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/DropDownSingleChoiceMenu;


# direct methods
.method constructor <init>(Lmiui/widget/DropDownSingleChoiceMenu;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/DropDownSingleChoiceMenu$3;->this$0:Lmiui/widget/DropDownSingleChoiceMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu$3;->this$0:Lmiui/widget/DropDownSingleChoiceMenu;

    # setter for: Lmiui/widget/DropDownSingleChoiceMenu;->mSelectedItem:I
    invoke-static {v0, p3}, Lmiui/widget/DropDownSingleChoiceMenu;->access$202(Lmiui/widget/DropDownSingleChoiceMenu;I)I

    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu$3;->this$0:Lmiui/widget/DropDownSingleChoiceMenu;

    # getter for: Lmiui/widget/DropDownSingleChoiceMenu;->mListener:Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;
    invoke-static {v0}, Lmiui/widget/DropDownSingleChoiceMenu;->access$000(Lmiui/widget/DropDownSingleChoiceMenu;)Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu$3;->this$0:Lmiui/widget/DropDownSingleChoiceMenu;

    # getter for: Lmiui/widget/DropDownSingleChoiceMenu;->mListener:Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;
    invoke-static {v0}, Lmiui/widget/DropDownSingleChoiceMenu;->access$000(Lmiui/widget/DropDownSingleChoiceMenu;)Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

    move-result-object v0

    iget-object v1, p0, Lmiui/widget/DropDownSingleChoiceMenu$3;->this$0:Lmiui/widget/DropDownSingleChoiceMenu;

    invoke-interface {v0, v1, p3}, Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;->onItemSelected(Lmiui/widget/DropDownSingleChoiceMenu;I)V

    :cond_18
    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu$3;->this$0:Lmiui/widget/DropDownSingleChoiceMenu;

    invoke-virtual {v0}, Lmiui/widget/DropDownSingleChoiceMenu;->dismiss()V

    return-void
.end method
