.class public Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SmoothGradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/smooth/SmoothGradientDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SmoothConstantState"
.end annotation


# instance fields
.field mParent:Landroid/graphics/drawable/Drawable$ConstantState;

.field mRadii:[F

.field mRadius:F

.field mStrokeColor:I

.field mStrokeWidth:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeWidth:I

    iput v0, p0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mStrokeColor:I

    return-void
.end method

.method public constructor <init>(Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;)V
    .registers 3

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

    iget-object v0, p1, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    iput-object v0, p0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    return-void
.end method


# virtual methods
.method public canApplyTheme()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getChangingConfigurations()I
    .registers 2

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    new-instance v0, Lmiui/smooth/SmoothGradientDrawable;

    invoke-direct {v0, p0, v1, v1}, Lmiui/smooth/SmoothGradientDrawable;-><init>(Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;Landroid/content/res/Resources;Lmiui/smooth/SmoothGradientDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 5

    iget-object v0, p0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    new-instance v0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;

    invoke-direct {v0, p0}, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;-><init>(Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;)V

    new-instance v2, Lmiui/smooth/SmoothGradientDrawable;

    invoke-direct {v2, v0, p1, v1}, Lmiui/smooth/SmoothGradientDrawable;-><init>(Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;Landroid/content/res/Resources;Lmiui/smooth/SmoothGradientDrawable$1;)V

    return-object v2
.end method

.method public setConstantState(Landroid/graphics/drawable/Drawable$ConstantState;)V
    .registers 2

    iput-object p1, p0, Lmiui/smooth/SmoothGradientDrawable$SmoothConstantState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    return-void
.end method
