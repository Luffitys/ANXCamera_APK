.class public Lcom/android/camera/ui/zoom/ZoomRatioView;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "ZoomRatioView"

.field private static final UI_DEBUG_ENABLED:Z


# instance fields
.field private mZoomRatioIcon:Lcom/android/camera/ui/zoom/ZoomTextImageView;

.field private mZoomRatioIndex:I

.field private mZoomRatioString:Ljava/lang/String;

.field private mZoomRatioText:Lcom/android/camera/ui/zoom/ZoomTextImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ZoomRatioView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/ui/zoom/ZoomRatioView;->UI_DEBUG_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/zoom/ZoomRatioView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/ui/zoom/ZoomRatioView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private static debugUi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/camera/ui/zoom/ZoomRatioView;->UI_DEBUG_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public getContentDescriptionString()Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioView;->mZoomRatioString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f10006a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioView;->mZoomRatioString:Ljava/lang/String;

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getIconView()Lcom/android/camera/ui/zoom/ZoomTextImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioView;->mZoomRatioIcon:Lcom/android/camera/ui/zoom/ZoomTextImageView;

    return-object p0
.end method

.method public getTextView()Lcom/android/camera/ui/zoom/ZoomTextImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioView;->mZoomRatioText:Lcom/android/camera/ui/zoom/ZoomTextImageView;

    return-object p0
.end method

.method public getZoomRatioIndex()I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioView;->mZoomRatioIndex:I

    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090406

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioView;->mZoomRatioIcon:Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setIcon()V

    const v0, 0x7f090407

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/zoom/ZoomTextImageView;

    iput-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioView;->mZoomRatioText:Lcom/android/camera/ui/zoom/ZoomTextImageView;

    return-void
.end method

.method public resetScale()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioView;->mZoomRatioIcon:Lcom/android/camera/ui/zoom/ZoomTextImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioView;->mZoomRatioIcon:Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioView;->mZoomRatioText:Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioView;->mZoomRatioText:Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAlpha(): index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioView;->mZoomRatioIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", alpha = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomRatioView"

    invoke-static {v1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioView;->mZoomRatioIcon:Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioView;->mZoomRatioText:Lcom/android/camera/ui/zoom/ZoomTextImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setAlpha(F)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioView;->mZoomRatioText:Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setCircleColor(I)V

    return-void
.end method

.method public setCaptureCount(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "%02d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioView;->mZoomRatioText:Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setText(ILjava/lang/String;)V

    return-void
.end method

.method public setIconify(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomRatioView;->setAlpha(F)V

    return-void
.end method

.method public setRotation(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ui/zoom/ZoomRatioView;->mZoomRatioIcon:Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setRotation(F)V

    iget-object p0, p0, Lcom/android/camera/ui/zoom/ZoomRatioView;->mZoomRatioText:Lcom/android/camera/ui/zoom/ZoomTextImageView;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setRotation(F)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVisibility(): index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/ui/zoom/ZoomRatioView;->mZoomRatioIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", visibility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/Util;->viewVisibilityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomRatioView"

    invoke-static {v1, v0}, Lcom/android/camera/ui/zoom/ZoomRatioView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public setZoomRatio(F)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/camera/HybridZoomingSystem;->toDecimal(F)F

    move-result v1

    float-to-int v2, v1

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v3, v1

    mul-int/lit8 v4, v2, 0xa

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    if-eqz v3, :cond_1

    const/16 v3, 0x64

    if-lt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setZoomRatio(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ZoomRatioView"

    invoke-static {v2, p1}, Lcom/android/camera/ui/zoom/ZoomRatioView;->debugUi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioView;->mZoomRatioText:Lcom/android/camera/ui/zoom/ZoomTextImageView;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/android/camera/ui/zoom/ZoomTextImageView;->setText(ILjava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioView;->mZoomRatioString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/ui/zoom/ZoomRatioView;->getContentDescriptionString()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setZoomRatioIndex(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/zoom/ZoomRatioView;->mZoomRatioIndex:I

    return-void
.end method
