.class Lmiui/widget/NavigationLayout$WidthDescription;
.super Ljava/lang/Object;
.source "NavigationLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/widget/NavigationLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WidthDescription"
.end annotation


# instance fields
.field public type:I

.field public value:F


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseValue(Landroid/util/TypedValue;Landroid/content/res/Resources;)Lmiui/widget/NavigationLayout$WidthDescription;
    .registers 7

    new-instance v0, Lmiui/widget/NavigationLayout$WidthDescription;

    invoke-direct {v0}, Lmiui/widget/NavigationLayout$WidthDescription;-><init>()V

    const v1, 0x3e99999a    # 0.3f

    const/4 v2, 0x1

    if-nez p0, :cond_10

    iput v2, v0, Lmiui/widget/NavigationLayout$WidthDescription;->type:I

    iput v1, v0, Lmiui/widget/NavigationLayout$WidthDescription;->value:F

    goto :goto_44

    :cond_10
    iget v3, p0, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_20

    iput v2, v0, Lmiui/widget/NavigationLayout$WidthDescription;->type:I

    iget v1, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    iput v1, v0, Lmiui/widget/NavigationLayout$WidthDescription;->value:F

    return-object v0

    :cond_20
    iget v3, p0, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2e

    iput v2, v0, Lmiui/widget/NavigationLayout$WidthDescription;->type:I

    invoke-virtual {p0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, v0, Lmiui/widget/NavigationLayout$WidthDescription;->value:F

    return-object v0

    :cond_2e
    iget v3, p0, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_44

    const/4 v1, 0x0

    iput v1, v0, Lmiui/widget/NavigationLayout$WidthDescription;->type:I

    iget v1, p0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lmiui/widget/NavigationLayout$WidthDescription;->value:F

    return-object v0

    :cond_44
    :goto_44
    iput v2, v0, Lmiui/widget/NavigationLayout$WidthDescription;->type:I

    iput v1, v0, Lmiui/widget/NavigationLayout$WidthDescription;->value:F

    return-object v0
.end method
