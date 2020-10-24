.class Lcom/android/camera/timerburst/CustomSeekBar$3;
.super Lcom/android/camera/animation/FolmeUtils$PhyAnimatorListener;
.source ""


# instance fields
.field final synthetic this$0:Lcom/android/camera/timerburst/CustomSeekBar;


# direct methods
.method constructor <init>(Lcom/android/camera/timerburst/CustomSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/timerburst/CustomSeekBar$3;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    invoke-direct {p0}, Lcom/android/camera/animation/FolmeUtils$PhyAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FFZ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/android/camera/animation/FolmeUtils$PhyAnimatorListener;->onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FFZ)V

    iget-object p1, p0, Lcom/android/camera/timerburst/CustomSeekBar$3;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    invoke-static {p1}, Lcom/android/camera/timerburst/CustomSeekBar;->access$1900(Lcom/android/camera/timerburst/CustomSeekBar;)Lcom/android/camera/timerburst/CircleFullImageView;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/timerburst/CustomSeekBar$3;->this$0:Lcom/android/camera/timerburst/CustomSeekBar;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f06005f

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p3, p0}, Lcom/android/camera/timerburst/CircleFullImageView;->updateRadiusView(FI)V

    return-void
.end method
