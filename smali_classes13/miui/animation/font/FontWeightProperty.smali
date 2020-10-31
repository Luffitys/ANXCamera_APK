.class public Lmiui/animation/font/FontWeightProperty;
.super Lmiui/animation/property/ViewProperty;
.source "FontWeightProperty.java"

# interfaces
.implements Lmiui/animation/property/ISpecificProperty;


# static fields
.field private static final NAME:Ljava/lang/String; = "fontweight"


# instance fields
.field private mCurWeight:F

.field private mFontType:I

.field private mTextViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/TextView;I)V
    .registers 4

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
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_37

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_37

    :cond_12
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    return v1

    :cond_19
    move-object v2, p1

    check-cast v2, Lmiui/animation/font/FontWeightProperty;

    iget-object v3, p0, Lmiui/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, v2, Lmiui/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v3, :cond_35

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    goto :goto_36

    :cond_35
    move v0, v1

    :goto_36
    return v0

    :cond_37
    :goto_37
    return v1
.end method

.method public getFontType()I
    .registers 2

    iget v0, p0, Lmiui/animation/font/FontWeightProperty;->mFontType:I

    return v0
.end method

.method public getScaledTextSize()F
    .registers 4

    iget-object v0, p0, Lmiui/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v1, v2

    return v1

    :cond_1a
    const/4 v1, 0x0

    return v1
.end method

.method public getSpecificValue(F)F
    .registers 6

    sget v0, Lmiui/animation/font/VarFontUtils;->MIN_WGHT:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_18

    invoke-static {}, Lmiui/animation/font/VarFontUtils;->getSysFontScale()I

    move-result v0

    float-to-int v1, p1

    invoke-virtual {p0}, Lmiui/animation/font/FontWeightProperty;->getScaledTextSize()F

    move-result v2

    iget v3, p0, Lmiui/animation/font/FontWeightProperty;->mFontType:I

    invoke-static {v1, v2, v3, v0}, Lmiui/animation/font/VarFontUtils;->getScaleWght(IFII)I

    move-result v1

    int-to-float v1, v1

    return v1

    :cond_18
    return p1
.end method

.method public getTextView()Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lmiui/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public getValue(Landroid/view/View;)F
    .registers 3

    iget v0, p0, Lmiui/animation/font/FontWeightProperty;->mCurWeight:F

    return v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .registers 2

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiui/animation/font/FontWeightProperty;->getValue(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 6

    iget-object v0, p0, Lmiui/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_20

    new-array v3, v3, [Ljava/lang/Object;

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    aput-object v0, v3, v1

    invoke-static {v3}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1

    :cond_20
    new-array v3, v3, [Ljava/lang/Object;

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v2, p0, Lmiui/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    aput-object v2, v3, v1

    invoke-static {v3}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public setValue(Landroid/view/View;F)V
    .registers 5

    iput p2, p0, Lmiui/animation/font/FontWeightProperty;->mCurWeight:F

    iget-object v0, p0, Lmiui/animation/font/FontWeightProperty;->mTextViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_10

    float-to-int v1, p2

    invoke-static {v0, v1}, Lmiui/animation/font/VarFontUtils;->setVariationFont(Landroid/widget/TextView;I)V

    :cond_10
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lmiui/animation/font/FontWeightProperty;->setValue(Landroid/view/View;F)V

    return-void
.end method
