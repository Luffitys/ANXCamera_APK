.class Landroid/media/WebVttRenderingWidget$1;
.super Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;
.source "WebVttRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttRenderingWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/WebVttRenderingWidget;


# direct methods
.method constructor <init>(Landroid/media/WebVttRenderingWidget;)V
    .registers 2

    iput-object p1, p0, Landroid/media/WebVttRenderingWidget$1;->this$0:Landroid/media/WebVttRenderingWidget;

    invoke-direct {p0}, Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFontScaleChanged(F)V
    .registers 5

    iget-object v0, p0, Landroid/media/WebVttRenderingWidget$1;->this$0:Landroid/media/WebVttRenderingWidget;

    invoke-virtual {v0}, Landroid/media/WebVttRenderingWidget;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const v1, 0x3d5a511a    # 0.0533f

    mul-float/2addr v0, v1

    iget-object v1, p0, Landroid/media/WebVttRenderingWidget$1;->this$0:Landroid/media/WebVttRenderingWidget;

    # getter for: Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    invoke-static {v1}, Landroid/media/WebVttRenderingWidget;->access$100(Landroid/media/WebVttRenderingWidget;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v2

    # invokes: Landroid/media/WebVttRenderingWidget;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    invoke-static {v1, v2, v0}, Landroid/media/WebVttRenderingWidget;->access$200(Landroid/media/WebVttRenderingWidget;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    return-void
.end method

.method public onUserStyleChanged(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .registers 4

    iget-object v0, p0, Landroid/media/WebVttRenderingWidget$1;->this$0:Landroid/media/WebVttRenderingWidget;

    # getter for: Landroid/media/WebVttRenderingWidget;->mFontSize:F
    invoke-static {v0}, Landroid/media/WebVttRenderingWidget;->access$300(Landroid/media/WebVttRenderingWidget;)F

    move-result v1

    # invokes: Landroid/media/WebVttRenderingWidget;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    invoke-static {v0, p1, v1}, Landroid/media/WebVttRenderingWidget;->access$200(Landroid/media/WebVttRenderingWidget;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    return-void
.end method
