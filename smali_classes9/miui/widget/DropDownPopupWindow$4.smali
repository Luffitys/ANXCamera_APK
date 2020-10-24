.class Lmiui/widget/DropDownPopupWindow$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lmiui/widget/DropDownPopupWindow;


# direct methods
.method constructor <init>(Lmiui/widget/DropDownPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow$4;->this$0:Lmiui/widget/DropDownPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_1

    if-ltz p1, :cond_0

    iget-object p2, p0, Lmiui/widget/DropDownPopupWindow$4;->this$0:Lmiui/widget/DropDownPopupWindow;

    invoke-static {p2}, Lmiui/widget/DropDownPopupWindow;->access$800(Lmiui/widget/DropDownPopupWindow;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    if-ge p1, p2, :cond_0

    if-ltz v0, :cond_0

    iget-object p1, p0, Lmiui/widget/DropDownPopupWindow$4;->this$0:Lmiui/widget/DropDownPopupWindow;

    invoke-static {p1}, Lmiui/widget/DropDownPopupWindow;->access$800(Lmiui/widget/DropDownPopupWindow;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lt v0, p1, :cond_1

    :cond_0
    iget-object p0, p0, Lmiui/widget/DropDownPopupWindow$4;->this$0:Lmiui/widget/DropDownPopupWindow;

    invoke-virtual {p0}, Lmiui/widget/DropDownPopupWindow;->dismiss()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
