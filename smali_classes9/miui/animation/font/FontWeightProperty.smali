.class public Lmiui/animation/font/FontWeightProperty;
.super Lmiui/animation/property/ViewProperty;
.source ""

# interfaces
.implements Lmiui/animation/property/ISpecificProperty;


# static fields
.field private static final NAME:Ljava/lang/String; = "fontweight"


# instance fields
.field private mCurWeight:F

.field private mFontType:I

.field private mTextViewRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;I)V
    .locals 1

    const-string v0, "fontweight"

    invoke-direct {p0, v0}, Lmiui/animation/property/ViewProperty;-><init>(Ljava/lang/String;)V

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lmiui/animation/font/FontWeightProperty;->mCurWeight:F

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lmiui/animation/font/FontWeightProperty;->mFontType:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const-class v2, Lmiui/animation/font/FontWeightProperty;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Lmiui/animation/font/FontWeightProperty;

    iget-object p0, p0, Lmiui/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iget-object p1, p1, Lmiui/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getFontType()I
    .locals 0

    iget p0, p0, Lmiui/animation/font/FontWeightProperty;->mFontType:I

    return p0
.end method

.method public getScaledTextSize()F
    .locals 1

    iget-object p0, p0, Lmiui/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v0, p0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getSpecificValue(F)F
    .locals 2

    sget v0, Lmiui/animation/font/VarFontUtils;->MIN_WGHT:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    invoke-static {}, Lmiui/animation/font/VarFontUtils;->getSysFontScale()I

    move-result v0

    float-to-int p1, p1

    invoke-virtual {p0}, Lmiui/animation/font/FontWeightProperty;->getScaledTextSize()F

    move-result v1

    iget p0, p0, Lmiui/animation/font/FontWeightProperty;->mFontType:I

    invoke-static {p1, v1, p0, v0}, Lmiui/animation/font/VarFontUtils;->getScaleWght(IFII)I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_0
    return p1
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lmiui/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public getValue(Landroid/view/View;)F
    .locals 0

    iget p0, p0, Lmiui/animation/font/FontWeightProperty;->mCurWeight:F

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiui/animation/font/FontWeightProperty;->getValue(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lmiui/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    aput-object v0, v3, v1

    invoke-static {v3}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object p0, p0, Lmiui/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setValue(Landroid/view/View;F)V
    .locals 0

    iput p2, p0, Lmiui/animation/font/FontWeightProperty;->mCurWeight:F

    iget-object p0, p0, Lmiui/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_0

    float-to-int p1, p2

    invoke-static {p0, p1}, Lmiui/animation/font/VarFontUtils;->setVariationFont(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lmiui/animation/font/FontWeightProperty;->setValue(Landroid/view/View;F)V

    return-void
.end method
