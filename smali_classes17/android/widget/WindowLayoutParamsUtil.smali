.class Landroid/widget/WindowLayoutParamsUtil;
.super Ljava/lang/Object;
.source "WindowLayoutParamsUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getWindowLayoutParams(Landroid/view/View;)Landroid/view/WindowManager$LayoutParams;
    .registers 4

    move-object v0, p0

    :goto_1
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_f

    move-object v2, v1

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    return-object v2

    :cond_f
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/view/View;

    goto :goto_1

    :cond_17
    const/4 v1, 0x0

    return-object v1
.end method

.method static isInSystemWindow(Landroid/view/View;)Z
    .registers 4

    invoke-static {p0}, Landroid/widget/WindowLayoutParamsUtil;->getWindowLayoutParams(Landroid/view/View;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_e

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method
