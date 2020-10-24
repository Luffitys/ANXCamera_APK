.class public Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# instance fields
.field mParent:Landroid/graphics/drawable/Drawable$ConstantState;

.field mRadii:[F

.field mRadius:F

.field mStrokeColor:I

.field mStrokeWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeWidth:I

    iput v0, p0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeColor:I

    return-void
.end method

.method public constructor <init>(Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeWidth:I

    iput v0, p0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeColor:I

    iget v0, p1, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mRadius:F

    iput v0, p0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mRadius:F

    iget-object v0, p1, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mRadii:[F

    iput-object v0, p0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mRadii:[F

    iget v0, p1, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeWidth:I

    iput v0, p0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeWidth:I

    iget v0, p1, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeColor:I

    iput v0, p0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeColor:I

    iget-object p1, p1, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    iput-object p1, p0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getChangingConfigurations()I
    .locals 0

    iget-object p0, p0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result p0

    return p0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lmiui/smooth/SmoothGradientDrawable;

    invoke-direct {v0, p0, v1, v1}, Lmiui/smooth/SmoothGradientDrawable;-><init>(Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;Landroid/content/res/Resources;Lmiui/smooth/SmoothGradientDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    invoke-direct {v0, p0}, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;-><init>(Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;)V

    new-instance p0, Lmiui/smooth/SmoothGradientDrawable;

    invoke-direct {p0, v0, p1, v1}, Lmiui/smooth/SmoothGradientDrawable;-><init>(Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;Landroid/content/res/Resources;Lmiui/smooth/SmoothGradientDrawable$1;)V

    return-object p0
.end method

.method public setConstantState(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .locals 0

    iput-object p1, p0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    return-void
.end method
