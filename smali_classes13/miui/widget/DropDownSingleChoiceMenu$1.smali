.class Lmiui/widget/DropDownSingleChoiceMenu$1;
.super Lmiui/widget/DropDownPopupWindow$DefaultContainerController;
.source "DropDownSingleChoiceMenu.java"


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

    iput-object p1, p0, Lmiui/widget/DropDownSingleChoiceMenu$1;->this$0:Lmiui/widget/DropDownSingleChoiceMenu;

    invoke-direct {p0}, Lmiui/widget/DropDownPopupWindow$DefaultContainerController;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 2

    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu$1;->this$0:Lmiui/widget/DropDownSingleChoiceMenu;

    # invokes: Lmiui/widget/DropDownSingleChoiceMenu;->internalDismiss()V
    invoke-static {v0}, Lmiui/widget/DropDownSingleChoiceMenu;->access$100(Lmiui/widget/DropDownSingleChoiceMenu;)V

    return-void
.end method

.method public onShow()V
    .registers 2

    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu$1;->this$0:Lmiui/widget/DropDownSingleChoiceMenu;

    # getter for: Lmiui/widget/DropDownSingleChoiceMenu;->mListener:Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;
    invoke-static {v0}, Lmiui/widget/DropDownSingleChoiceMenu;->access$000(Lmiui/widget/DropDownSingleChoiceMenu;)Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lmiui/widget/DropDownSingleChoiceMenu$1;->this$0:Lmiui/widget/DropDownSingleChoiceMenu;

    # getter for: Lmiui/widget/DropDownSingleChoiceMenu;->mListener:Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;
    invoke-static {v0}, Lmiui/widget/DropDownSingleChoiceMenu;->access$000(Lmiui/widget/DropDownSingleChoiceMenu;)Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;

    move-result-object v0

    invoke-interface {v0}, Lmiui/widget/DropDownSingleChoiceMenu$OnMenuListener;->onShow()V

    :cond_11
    return-void
.end method
