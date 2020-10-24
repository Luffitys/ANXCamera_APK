.class Lcom/android/camera/fragment/bottom/BottomActionMenu$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/bottom/BottomActionMenu;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/bottom/BottomActionMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu$1;->this$0:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu$1;->this$0:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-static {v0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->access$000(Lcom/android/camera/fragment/bottom/BottomActionMenu;)Lcom/android/camera/ui/ColorActivateTextView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu$1;->this$0:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-static {v0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->access$000(Lcom/android/camera/fragment/bottom/BottomActionMenu;)Lcom/android/camera/ui/ColorActivateTextView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    iget-object v0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu$1;->this$0:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    move-object v2, p1

    check-cast v2, Lcom/android/camera/ui/ColorActivateTextView;

    invoke-static {v0, v2}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->access$002(Lcom/android/camera/fragment/bottom/BottomActionMenu;Lcom/android/camera/ui/ColorActivateTextView;)Lcom/android/camera/ui/ColorActivateTextView;

    iget-object p0, p0, Lcom/android/camera/fragment/bottom/BottomActionMenu$1;->this$0:Lcom/android/camera/fragment/bottom/BottomActionMenu;

    invoke-static {p0}, Lcom/android/camera/fragment/bottom/BottomActionMenu;->access$000(Lcom/android/camera/fragment/bottom/BottomActionMenu;)Lcom/android/camera/ui/ColorActivateTextView;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ColorActivateTextView;->setActivated(Z)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xfd

    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0, v1}, Lcom/android/camera/protocol/ModeProtocol$WatermarkProtocol;->switchType(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method
