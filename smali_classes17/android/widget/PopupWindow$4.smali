.class Landroid/widget/PopupWindow$4;
.super Ljava/lang/Object;
.source "PopupWindow.java"

# interfaces
.implements Lcom/miui/internal/variable/api/v29/Android_Widget_PopupWindow$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invokePopup(Landroid/widget/PopupWindow;Landroid/view/WindowManager$LayoutParams;)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->originalInvokePopup(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
