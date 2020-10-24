.class public Lcom/android/camera/features/gif/AdaptiveEditText;
.super Landroid/widget/EditText;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = " AdaptiveTv"


# instance fields
.field private mMaxFontScale:F

.field private mRealFontScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/camera/features/gif/AdaptiveEditText;->mMaxFontScale:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/features/gif/AdaptiveEditText;->mRealFontScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/camera/features/gif/AdaptiveEditText;->mMaxFontScale:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/features/gif/AdaptiveEditText;->mRealFontScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/camera/features/gif/AdaptiveEditText;->mMaxFontScale:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/features/gif/AdaptiveEditText;->mRealFontScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/camera/features/gif/AdaptiveEditText;->mMaxFontScale:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera/features/gif/AdaptiveEditText;->mRealFontScale:F

    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    iget p2, p0, Lcom/android/camera/features/gif/AdaptiveEditText;->mMaxFontScale:F

    cmpl-float p2, p1, p2

    if-lez p2, :cond_1

    iget p2, p0, Lcom/android/camera/features/gif/AdaptiveEditText;->mRealFontScale:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getTextSize()F

    move-result p2

    iget v0, p0, Lcom/android/camera/features/gif/AdaptiveEditText;->mMaxFontScale:F

    div-float/2addr v0, p1

    mul-float/2addr p2, v0

    iput p2, p0, Lcom/android/camera/features/gif/AdaptiveEditText;->mRealFontScale:F

    :cond_0
    const/4 p1, 0x0

    iget p2, p0, Lcom/android/camera/features/gif/AdaptiveEditText;->mRealFontScale:F

    invoke-virtual {p0, p1, p2}, Landroid/widget/EditText;->setTextSize(IF)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setText:  mMaxFontScale :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/camera/features/gif/AdaptiveEditText;->mMaxFontScale:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "   mRealFontScale : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/features/gif/AdaptiveEditText;->mRealFontScale:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, " AdaptiveTv"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setmMaxFontScale(F)V
    .locals 0

    iput p1, p0, Lcom/android/camera/features/gif/AdaptiveEditText;->mMaxFontScale:F

    return-void
.end method
