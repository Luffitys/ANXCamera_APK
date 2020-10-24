.class Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Interface;


# instance fields
.field final synthetic this$0:Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class$1;->this$0:Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/widget/ListPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class$1;->this$0:Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;

    const-wide/16 v1, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->handle_init_(JLandroid/widget/ListPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public show(Landroid/widget/ListPopupWindow;)V
    .locals 2

    iget-object p0, p0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class$1;->this$0:Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->handleShow(JLandroid/widget/ListPopupWindow;)V

    return-void
.end method
