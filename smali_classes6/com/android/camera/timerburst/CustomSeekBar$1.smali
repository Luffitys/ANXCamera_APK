.class Lcom/android/camera/timerburst/CustomSeekBar$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/android/camera/timerburst/CustomSeekBar;


# direct methods
.method constructor <init>(Lcom/android/camera/timerburst/CustomSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/timerburst/CustomSeekBar$1;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/timerburst/CustomSeekBar$1;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/camera/timerburst/CustomSeekBar$1;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/timerburst/CustomSeekBar;->access$002(Lcom/android/camera/timerburst/CustomSeekBar;Z)Z

    iget-object v0, p0, Lcom/android/camera/timerburst/CustomSeekBar$1;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/android/camera/timerburst/CustomSeekBar;->access$200(Lcom/android/camera/timerburst/CustomSeekBar;I)F

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera/timerburst/CustomSeekBar;->access$102(Lcom/android/camera/timerburst/CustomSeekBar;F)F

    iget-object v0, p0, Lcom/android/camera/timerburst/CustomSeekBar$1;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    invoke-static {v0}, Lcom/android/camera/timerburst/CustomSeekBar;->access$300(Lcom/android/camera/timerburst/CustomSeekBar;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/camera/timerburst/CustomSeekBar$1;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-static {v2, v0}, Lcom/android/camera/timerburst/CustomSeekBar;->access$402(Lcom/android/camera/timerburst/CustomSeekBar;I)I

    iget-object v0, p0, Lcom/android/camera/timerburst/CustomSeekBar$1;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    invoke-static {v0}, Lcom/android/camera/timerburst/CustomSeekBar;->access$600(Lcom/android/camera/timerburst/CustomSeekBar;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/timerburst/CustomSeekBar$1;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    invoke-static {v3}, Lcom/android/camera/timerburst/CustomSeekBar;->access$100(Lcom/android/camera/timerburst/CustomSeekBar;)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0, v2}, Lcom/android/camera/timerburst/CustomSeekBar;->access$502(Lcom/android/camera/timerburst/CustomSeekBar;I)I

    iget-object v0, p0, Lcom/android/camera/timerburst/CustomSeekBar$1;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    invoke-static {v0}, Lcom/android/camera/timerburst/CustomSeekBar;->access$800(Lcom/android/camera/timerburst/CustomSeekBar;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/timerburst/CustomSeekBar$1;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    invoke-static {v3}, Lcom/android/camera/timerburst/CustomSeekBar;->access$900(Lcom/android/camera/timerburst/CustomSeekBar;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/android/camera/timerburst/CustomSeekBar;->access$702(Lcom/android/camera/timerburst/CustomSeekBar;F)F

    iget-object v0, p0, Lcom/android/camera/timerburst/CustomSeekBar$1;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    invoke-static {v0}, Lcom/android/camera/timerburst/CustomSeekBar;->access$400(Lcom/android/camera/timerburst/CustomSeekBar;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/timerburst/CustomSeekBar$1;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    invoke-static {v3}, Lcom/android/camera/timerburst/CustomSeekBar;->access$800(Lcom/android/camera/timerburst/CustomSeekBar;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/timerburst/CustomSeekBar$1;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    invoke-static {v3}, Lcom/android/camera/timerburst/CustomSeekBar;->access$1100(Lcom/android/camera/timerburst/CustomSeekBar;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/android/camera/timerburst/CustomSeekBar;->access$1002(Lcom/android/camera/timerburst/CustomSeekBar;F)F

    iget-object v0, p0, Lcom/android/camera/timerburst/CustomSeekBar$1;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0704b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera/timerburst/CustomSeekBar;->access$1202(Lcom/android/camera/timerburst/CustomSeekBar;F)F

    iget-object v0, p0, Lcom/android/camera/timerburst/CustomSeekBar$1;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    invoke-static {v0}, Lcom/android/camera/timerburst/CustomSeekBar;->access$500(Lcom/android/camera/timerburst/CustomSeekBar;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/timerburst/CustomSeekBar$1;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    invoke-static {v3}, Lcom/android/camera/timerburst/CustomSeekBar;->access$100(Lcom/android/camera/timerburst/CustomSeekBar;)F

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/android/camera/timerburst/CustomSeekBar;->access$1300(Lcom/android/camera/timerburst/CustomSeekBar;FF)F

    move-result v0

    iget-object v2, p0, Lcom/android/camera/timerburst/CustomSeekBar$1;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    invoke-static {v2}, Lcom/android/camera/timerburst/CustomSeekBar;->access$1400(Lcom/android/camera/timerburst/CustomSeekBar;)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/android/camera/timerburst/CustomSeekBar$1;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    invoke-static {v3}, Lcom/android/camera/timerburst/CustomSeekBar;->access$600(Lcom/android/camera/timerburst/CustomSeekBar;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    iget-object v3, p0, Lcom/android/camera/timerburst/CustomSeekBar$1;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    aget v1, v2, v1

    invoke-static {v3, v1}, Lcom/android/camera/timerburst/CustomSeekBar;->access$1502(Lcom/android/camera/timerburst/CustomSeekBar;I)I

    iget-object p0, p0, Lcom/android/camera/timerburst/CustomSeekBar$1;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lcom/android/camera/timerburst/CustomSeekBar;->access$1600(Lcom/android/camera/timerburst/CustomSeekBar;ZF)V

    return-void
.end method
