.class Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class$1;
.super Ljava/lang/Object;
.source "Android_Widget_ListPopupWindow_class.java"

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_Widget_ListPopupWindow$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;


# direct methods
.method constructor <init>(Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class$1;->this$0:Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/widget/ListPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 14

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
    .registers 5

    iget-object v0, p0, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class$1;->this$0:Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/miui/internal/variable/v16/Android_Widget_ListPopupWindow_class;->handleShow(JLandroid/widget/ListPopupWindow;)V

    return-void
.end method
