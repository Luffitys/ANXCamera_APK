.class public Lmiui/util/DrawableUtil;
.super Ljava/lang/Object;
.source "DrawableUtil.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPlaceholder(Landroid/graphics/drawable/Drawable;)Z
    .registers 2

    instance-of v0, p0, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;

    if-nez v0, :cond_14

    instance-of v0, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_12

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    if-nez v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    return v0
.end method
