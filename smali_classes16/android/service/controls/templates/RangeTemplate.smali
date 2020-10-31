.class public final Landroid/service/controls/templates/RangeTemplate;
.super Landroid/service/controls/templates/ControlTemplate;
.source "RangeTemplate.java"


# static fields
.field private static final KEY_CURRENT_VALUE:Ljava/lang/String; = "key_current_value"

.field private static final KEY_FORMAT_STRING:Ljava/lang/String; = "key_format_string"

.field private static final KEY_MAX_VALUE:Ljava/lang/String; = "key_max_value"

.field private static final KEY_MIN_VALUE:Ljava/lang/String; = "key_min_value"

.field private static final KEY_STEP_VALUE:Ljava/lang/String; = "key_step_value"

.field private static final TYPE:I = 0x2


# instance fields
.field private final mCurrentValue:F

.field private final mFormatString:Ljava/lang/CharSequence;

.field private final mMaxValue:F

.field private final mMinValue:F

.field private final mStepValue:F


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/service/controls/templates/ControlTemplate;-><init>(Landroid/os/Bundle;)V

    const-string v0, "key_min_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/service/controls/templates/RangeTemplate;->mMinValue:F

    const-string v0, "key_max_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/service/controls/templates/RangeTemplate;->mMaxValue:F

    const-string v0, "key_current_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/service/controls/templates/RangeTemplate;->mCurrentValue:F

    const-string v0, "key_step_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroid/service/controls/templates/RangeTemplate;->mStepValue:F

    const-string v0, "key_format_string"

    const-string v1, "%.1f"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/templates/RangeTemplate;->mFormatString:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/service/controls/templates/RangeTemplate;->validate()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFFFLjava/lang/CharSequence;)V
    .registers 8

    invoke-direct {p0, p1}, Landroid/service/controls/templates/ControlTemplate;-><init>(Ljava/lang/String;)V

    iput p2, p0, Landroid/service/controls/templates/RangeTemplate;->mMinValue:F

    iput p3, p0, Landroid/service/controls/templates/RangeTemplate;->mMaxValue:F

    iput p4, p0, Landroid/service/controls/templates/RangeTemplate;->mCurrentValue:F

    iput p5, p0, Landroid/service/controls/templates/RangeTemplate;->mStepValue:F

    if-eqz p6, :cond_10

    iput-object p6, p0, Landroid/service/controls/templates/RangeTemplate;->mFormatString:Ljava/lang/CharSequence;

    goto :goto_14

    :cond_10
    const-string v0, "%.1f"

    iput-object v0, p0, Landroid/service/controls/templates/RangeTemplate;->mFormatString:Ljava/lang/CharSequence;

    :goto_14
    invoke-direct {p0}, Landroid/service/controls/templates/RangeTemplate;->validate()V

    return-void
.end method

.method private validate()V
    .registers 6

    iget v0, p0, Landroid/service/controls/templates/RangeTemplate;->mMinValue:F

    iget v1, p0, Landroid/service/controls/templates/RangeTemplate;->mMaxValue:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v0, :cond_7d

    iget v0, p0, Landroid/service/controls/templates/RangeTemplate;->mMinValue:F

    iget v4, p0, Landroid/service/controls/templates/RangeTemplate;->mCurrentValue:F

    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_5e

    iget v0, p0, Landroid/service/controls/templates/RangeTemplate;->mCurrentValue:F

    iget v4, p0, Landroid/service/controls/templates/RangeTemplate;->mMaxValue:F

    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_40

    iget v0, p0, Landroid/service/controls/templates/RangeTemplate;->mStepValue:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_29

    return-void

    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p0, Landroid/service/controls/templates/RangeTemplate;->mStepValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v3

    const-string/jumbo v2, "stepValue=%f <= 0"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Landroid/service/controls/templates/RangeTemplate;->mCurrentValue:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    iget v3, p0, Landroid/service/controls/templates/RangeTemplate;->mMaxValue:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "currentValue=%f > maxValue=%f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Landroid/service/controls/templates/RangeTemplate;->mMinValue:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    iget v3, p0, Landroid/service/controls/templates/RangeTemplate;->mCurrentValue:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v2, "minValue=%f > currentValue=%f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Landroid/service/controls/templates/RangeTemplate;->mMinValue:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    iget v3, p0, Landroid/service/controls/templates/RangeTemplate;->mMaxValue:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const-string/jumbo v2, "minValue=%f > maxValue=%f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCurrentValue()F
    .registers 2

    iget v0, p0, Landroid/service/controls/templates/RangeTemplate;->mCurrentValue:F

    return v0
.end method

.method getDataBundle()Landroid/os/Bundle;
    .registers 4

    invoke-super {p0}, Landroid/service/controls/templates/ControlTemplate;->getDataBundle()Landroid/os/Bundle;

    move-result-object v0

    iget v1, p0, Landroid/service/controls/templates/RangeTemplate;->mMinValue:F

    const-string v2, "key_min_value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v1, p0, Landroid/service/controls/templates/RangeTemplate;->mMaxValue:F

    const-string v2, "key_max_value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v1, p0, Landroid/service/controls/templates/RangeTemplate;->mCurrentValue:F

    const-string v2, "key_current_value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v1, p0, Landroid/service/controls/templates/RangeTemplate;->mStepValue:F

    const-string v2, "key_step_value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v1, p0, Landroid/service/controls/templates/RangeTemplate;->mFormatString:Ljava/lang/CharSequence;

    const-string v2, "key_format_string"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public getFormatString()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/service/controls/templates/RangeTemplate;->mFormatString:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getMaxValue()F
    .registers 2

    iget v0, p0, Landroid/service/controls/templates/RangeTemplate;->mMaxValue:F

    return v0
.end method

.method public getMinValue()F
    .registers 2

    iget v0, p0, Landroid/service/controls/templates/RangeTemplate;->mMinValue:F

    return v0
.end method

.method public getStepValue()F
    .registers 2

    iget v0, p0, Landroid/service/controls/templates/RangeTemplate;->mStepValue:F

    return v0
.end method

.method public getTemplateType()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method
