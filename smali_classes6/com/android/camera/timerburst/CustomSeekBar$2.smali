.class Lcom/android/camera/timerburst/CustomSeekBar$2;
.super Lcom/android/camera/animation/FolmeUtils$PhyAnimatorListener;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/timerburst/CustomSeekBar;


# direct methods
.method constructor <init>(Lcom/android/camera/timerburst/CustomSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/timerburst/CustomSeekBar$2;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    invoke-direct {p0}, Lcom/android/camera/animation/FolmeUtils$PhyAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FFZ)V
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/android/camera/animation/FolmeUtils$PhyAnimatorListener;->onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FFZ)V

    float-to-int p1, p3

    iget-object p2, p0, Lcom/android/camera/timerburst/CustomSeekBar$2;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    invoke-static {p2}, Lcom/android/camera/timerburst/CustomSeekBar;->access$800(Lcom/android/camera/timerburst/CustomSeekBar;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object p3, p0, Lcom/android/camera/timerburst/CustomSeekBar$2;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    invoke-static {p3}, Lcom/android/camera/timerburst/CustomSeekBar;->access$1800(Lcom/android/camera/timerburst/CustomSeekBar;)F

    move-result p4

    int-to-float p5, p1

    sub-float/2addr p4, p5

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr p4, p5

    invoke-static {p3, p4}, Lcom/android/camera/timerburst/CustomSeekBar;->access$1702(Lcom/android/camera/timerburst/CustomSeekBar;F)F

    iget-object p3, p0, Lcom/android/camera/timerburst/CustomSeekBar$2;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    invoke-static {p3}, Lcom/android/camera/timerburst/CustomSeekBar;->access$1700(Lcom/android/camera/timerburst/CustomSeekBar;)F

    move-result p3

    float-to-int p3, p3

    iget-object p4, p0, Lcom/android/camera/timerburst/CustomSeekBar$2;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    invoke-static {p4}, Lcom/android/camera/timerburst/CustomSeekBar;->access$1700(Lcom/android/camera/timerburst/CustomSeekBar;)F

    move-result p4

    float-to-int p4, p4

    const/4 p5, 0x0

    invoke-virtual {p2, p3, p5, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-static {p3, p1, p3}, Lcom/android/camera/Util;->clamp(III)I

    move-result p3

    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object p3, p0, Lcom/android/camera/timerburst/CustomSeekBar$2;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    invoke-static {p3}, Lcom/android/camera/timerburst/CustomSeekBar;->access$800(Lcom/android/camera/timerburst/CustomSeekBar;)Landroid/widget/RelativeLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/GradientDrawable;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result p4

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/16 p4, 0x8

    new-array p4, p4, [F

    const/4 v0, 0x1

    shr-int/2addr p1, v0

    int-to-float p1, p1

    aput p1, p4, p5

    aput p1, p4, v0

    const/4 p5, 0x2

    aput p1, p4, p5

    const/4 p5, 0x3

    aput p1, p4, p5

    const/4 p5, 0x4

    aput p1, p4, p5

    const/4 p5, 0x5

    aput p1, p4, p5

    const/4 p5, 0x6

    aput p1, p4, p5

    const/4 p5, 0x7

    aput p1, p4, p5

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    iget-object p0, p0, Lcom/android/camera/timerburst/CustomSeekBar$2;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    invoke-static {p0}, Lcom/android/camera/timerburst/CustomSeekBar;->access$800(Lcom/android/camera/timerburst/CustomSeekBar;)Landroid/widget/RelativeLayout;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
