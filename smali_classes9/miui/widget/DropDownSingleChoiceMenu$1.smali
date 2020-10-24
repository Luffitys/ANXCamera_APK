.class Lmiui/widget/DropDownSingleChoiceMenu$1;
.super Lmiui/widget/DropDownPopupWindow$DefaultContainerController;
.source ""


# instance fields
.field final synthetic this$0:Lmiui/widget/DropDownSingleChoiceMenu;


# direct methods
.method constructor <init>(Lmiui/widget/DropDownSingleChoiceMenu;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/DropDownSingleChoiceMenu$1;->this$0:Lmiui/widget/DropDownSingleChoiceMenu;

    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow$DefaultContainerController;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 0

    iget-object p0, p0, Lmiui/widget/DropDownSingleChoiceMenu$1;->this$0:Lmiui/widget/DropDownSingleChoiceMenu;

    invoke-static {p0}, Lmiui/widget/DropDownSingleChoiceMenu;->access$100(Lmiui/widget/DropDownSingleChoiceMenu;)V

    return-void
.end method

.method public onShow()V
    .locals 1

    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu$1;->this$0:Lmiui/widget/DropDownSingleChoiceMenu;

    invoke-static {v0}, Lmiui/widget/DropDownSingleChoiceMenu;->access$000(Lmiui/widget/DropDownSingleChoiceMenu;)Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lmiui/widget/DropDownSingleChoiceMenu$1;->this$0:Lmiui/widget/DropDownSingleChoiceMenu;

    invoke-static {p0}, Lmiui/widget/DropDownSingleChoiceMenu;->access$000(Lmiui/widget/DropDownSingleChoiceMenu;)Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

    move-result-object p0

    invoke-interface {p0}, Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;->onShow()V

    :cond_0
    return-void
.end method
