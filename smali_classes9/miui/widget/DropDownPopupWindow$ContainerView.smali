.class Lmiui/widget/DropDownPopupWindow$ContainerView;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field final synthetic this$0:Lmiui/widget/DropDownPopupWindow;


# direct methods
.method public constructor <init>(Lmiui/widget/DropDownPopupWindow;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow$ContainerView;->this$0:Lmiui/widget/DropDownPopupWindow;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lmiui/widget/DropDownPopupWindow$ContainerView;->this$0:Lmiui/widget/DropDownPopupWindow;

    invoke-virtual {p0}, Lmiui/widget/DropDownPopupWindow;->dismiss()V

    return p2

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_0

    iget-object p0, p0, Lmiui/widget/DropDownPopupWindow$ContainerView;->this$0:Lmiui/widget/DropDownPopupWindow;

    invoke-virtual {p0}, Lmiui/widget/DropDownPopupWindow;->dismiss()V

    :cond_0
    return v1
.end method
