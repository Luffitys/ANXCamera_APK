.class Lmiui/widget/DropDownPopupWindow$4;
.super Ljava/lang/Object;
.source "DropDownPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/widget/DropDownPopupWindow;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/widget/DropDownPopupWindow;


# direct methods
.method constructor <init>(Lmiui/widget/DropDownPopupWindow;)V
    .registers 2

    iput-object p1, p0, Lmiui/widget/DropDownPopupWindow$4;->this$0:Lmiui/widget/DropDownPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_33

    if-ltz v0, :cond_2c

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow$4;->this$0:Lmiui/widget/DropDownPopupWindow;

    # getter for: Lmiui/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;
    invoke-static {v2}, Lmiui/widget/DropDownPopupWindow;->access$800(Lmiui/widget/DropDownPopupWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_2c

    if-ltz v1, :cond_2c

    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow$4;->this$0:Lmiui/widget/DropDownPopupWindow;

    # getter for: Lmiui/widget/DropDownPopupWindow;->mRealContainerView:Landroid/view/View;
    invoke-static {v2}, Lmiui/widget/DropDownPopupWindow;->access$800(Lmiui/widget/DropDownPopupWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lt v1, v2, :cond_33

    :cond_2c
    iget-object v2, p0, Lmiui/widget/DropDownPopupWindow$4;->this$0:Lmiui/widget/DropDownPopupWindow;

    invoke-virtual {v2}, Lmiui/widget/DropDownPopupWindow;->dismiss()V

    const/4 v2, 0x1

    return v2

    :cond_33
    const/4 v2, 0x0

    return v2
.end method
