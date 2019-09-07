.class Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$5;
.super Ljava/lang/Object;
.source "FragmentPopupMakeup.java"

# interfaces
.implements Lcom/android/camera/ui/SeekBarCompat$OnSeekBarCompatTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$5;->this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getNextProgress(Landroid/view/MotionEvent;)I
    .locals 4

    iget-object v0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$5;->this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    invoke-static {v0}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->access$300(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)Lcom/android/camera/ui/SeekBarCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$5;->this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    invoke-static {v1}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->access$400(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)Z

    move-result v1

    if-eqz v1, :cond_0

    int-to-float v1, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    :goto_0
    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-static {}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->access$100()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iget-object v1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$5;->this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    invoke-static {v1}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->access$300(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)Lcom/android/camera/ui/SeekBarCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/SeekBarCompat;->isCenterTwoWayMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$5;->this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    const/4 v1, -0x5

    invoke-static {p1, v1}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->access$500(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;I)I

    move-result p1

    if-lt v0, p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$5;->this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    const/4 v1, 0x5

    invoke-static {p1, v1}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->access$500(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;I)I

    move-result p1

    if-gt v0, p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$5;->this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    invoke-static {p1, v2}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->access$500(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;I)I

    move-result p1

    if-eq v0, p1, :cond_2

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$5;->this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    invoke-static {p0, v2}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->access$500(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;I)I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$5;->this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    const/16 v1, -0x5f

    invoke-static {p1, v1}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->access$500(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;I)I

    move-result p1

    if-gt v0, p1, :cond_3

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$5;->this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    const/16 v1, -0x64

    invoke-static {p1, v1}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->access$500(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;I)I

    move-result p1

    if-eq v0, p1, :cond_3

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$5;->this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    invoke-static {p0, v1}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->access$500(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;I)I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$5;->this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    const/16 v1, 0x5f

    invoke-static {p1, v1}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->access$500(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;I)I

    move-result p1

    if-lt v0, p1, :cond_4

    iget-object p1, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$5;->this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    const/16 v1, 0x64

    invoke-static {p1, v1}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->access$500(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;I)I

    move-result p1

    if-eq v0, p1, :cond_4

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$5;->this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    invoke-static {p0, v1}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->access$500(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;I)I

    move-result v0

    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->access$100()I

    move-result p0

    invoke-static {v0, v2, p0}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    invoke-static {}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->access$100()I

    move-result p1

    div-int/2addr p1, v3

    sub-int/2addr p0, p1

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->access$100()I

    move-result p0

    invoke-static {v0, v2, p0}, Lcom/android/camera/Util;->clamp(III)I

    move-result p0

    :goto_2
    return p0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$5;->this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    invoke-static {v2}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->access$300(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)Lcom/android/camera/ui/SeekBarCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$5;->getNextProgress(Landroid/view/MotionEvent;)I

    move-result p1

    iget-object p0, p0, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup$5;->this$0:Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;

    invoke-static {p0}, Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;->access$300(Lcom/android/camera/fragment/beauty/FragmentPopupMakeup;)Lcom/android/camera/ui/SeekBarCompat;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/SeekBarCompat;->setProgress(I)V

    return v0
.end method
