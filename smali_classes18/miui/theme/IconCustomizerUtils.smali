.class public Lmiui/theme/IconCustomizerUtils;
.super Ljava/lang/Object;
.source "IconCustomizerUtils.java"


# static fields
.field public static final ICON_LAYER_MAX_NUM:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "IconCustomizerUtils"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAdaptiveDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    return-object v0

    :cond_6
    instance-of v1, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v1, :cond_b

    return-object p0

    :cond_b
    instance-of v1, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_15

    new-instance v0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_15
    return-object v0
.end method

.method public static getAdaptiveIconFromPackage(Landroid/content/Context;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/theme/IconCustomizerUtils;->getAdaptiveDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static transformToAdaptiveIcon([Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_41

    array-length v2, p0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_41

    const/4 v2, 0x0

    aget-object v3, p0, v2

    if-eqz v3, :cond_41

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    aget-object v2, p0, v2

    invoke-direct {v3, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v3

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-array v3, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_25
    if-ge v5, v2, :cond_3b

    add-int/lit8 v6, v5, 0x1

    aget-object v4, p0, v6

    if-eqz v4, :cond_38

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v6, v3, v5

    :cond_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    :cond_3b
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v1, v5

    :cond_41
    invoke-static {v0, v1}, Lmiui/theme/IconCustomizerUtils;->getAdaptiveDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method
