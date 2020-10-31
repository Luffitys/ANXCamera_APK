.class public Landroid/content/res/MiuiResourcesHelper;
.super Ljava/lang/Object;
.source "MiuiResourcesHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPreloading()Z
    .registers 1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->isPreloading()Z

    move-result v0

    return v0
.end method
