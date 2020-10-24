.class Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_Widget_PopupWindow$Interface;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class$1;->this$0:Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invokePopup(Landroid/widget/PopupWindow;Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    iget-object p0, p0, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class$1;->this$0:Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/miui/internal/variable/v23/Android_Widget_PopupWindow_class;->handleInvokePopup(JLandroid/widget/PopupWindow;Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
