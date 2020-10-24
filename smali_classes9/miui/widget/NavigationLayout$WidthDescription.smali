.class Lmiui/widget/NavigationLayout$WidthDescription;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public type:I

.field public value:F


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseValue(Landroid/util/TypedValue;Landroid/content/res/Resources;)Lmiui/widget/NavigationLayout$WidthDescription;
    .locals 5

    new-instance v0, Lmiui/widget/NavigationLayout$WidthDescription;

    invoke-direct {v0}, Lmiui/widget/NavigationLayout$WidthDescription;-><init>()V

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x1

    if-nez p0, :cond_0

    iput v2, v0, Lmiui/widget/NavigationLayout$WidthDescription;->type:I

    iput v1, v0, Lmiui/widget/NavigationLayout$WidthDescription;->value:F

    goto :goto_0

    :cond_0
    iget v3, p0, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    iput v2, v0, Lmiui/widget/NavigationLayout$WidthDescription;->type:I

    iget p0, p0, Landroid/util/TypedValue;->data:I

    invoke-static {p0}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result p0

    iput p0, v0, Lmiui/widget/NavigationLayout$WidthDescription;->value:F

    return-object v0

    :cond_1
    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    iput v2, v0, Lmiui/widget/NavigationLayout$WidthDescription;->type:I

    invoke-virtual {p0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    iput p0, v0, Lmiui/widget/NavigationLayout$WidthDescription;->value:F

    return-object v0

    :cond_2
    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    const/4 v1, 0x0

    iput v1, v0, Lmiui/widget/NavigationLayout$WidthDescription;->type:I

    iget p0, p0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    iput p0, v0, Lmiui/widget/NavigationLayout$WidthDescription;->value:F

    return-object v0

    :cond_3
    :goto_0
    iput v2, v0, Lmiui/widget/NavigationLayout$WidthDescription;->type:I

    iput v1, v0, Lmiui/widget/NavigationLayout$WidthDescription;->value:F

    return-object v0
.end method
