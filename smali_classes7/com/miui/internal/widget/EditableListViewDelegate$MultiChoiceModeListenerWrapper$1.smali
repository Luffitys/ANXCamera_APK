.class Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/view/ActionModeAnimationListener;


# instance fields
.field final synthetic this$1:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;


# direct methods
.method constructor <init>(Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 0

    return-void
.end method

.method public onStop(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$302(Lcom/miui/internal/widget/EditableListViewDelegate;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    :cond_0
    return-void
.end method

.method public onUpdate(ZF)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    sub-float p2, v0, p2

    :cond_0
    if-eqz p1, :cond_1

    cmpl-float p1, p2, v0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    iget-object p1, p1, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {p1}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$100(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getHeight()I

    move-result p1

    iget-object p2, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    iget-object p2, p2, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {p2}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$200(Lcom/miui/internal/widget/EditableListViewDelegate;)I

    move-result p2

    if-le p2, p1, :cond_1

    iget-object p2, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    iget-object p2, p2, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {p2}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$100(Lcom/miui/internal/widget/EditableListViewDelegate;)Landroid/widget/AbsListView;

    move-result-object p2

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper$1;->this$1:Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;

    iget-object p0, p0, Lcom/miui/internal/widget/EditableListViewDelegate$MultiChoiceModeListenerWrapper;->this$0:Lcom/miui/internal/widget/EditableListViewDelegate;

    invoke-static {p0}, Lcom/miui/internal/widget/EditableListViewDelegate;->access$200(Lcom/miui/internal/widget/EditableListViewDelegate;)I

    move-result p0

    sub-int/2addr p0, p1

    const/16 p1, 0x64

    invoke-virtual {p2, p0, p1}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    :cond_1
    return-void
.end method
