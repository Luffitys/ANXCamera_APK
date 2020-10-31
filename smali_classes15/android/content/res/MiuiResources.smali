.class public final Landroid/content/res/MiuiResources;
.super Landroid/content/res/Resources;
.source "MiuiResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    }
.end annotation


# instance fields
.field private mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

.field private mPackage:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/res/Resources;-><init>()V

    invoke-direct {p0}, Landroid/content/res/MiuiResources;->updateMiuiImpl()V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Landroid/content/res/MiuiResources;->updateMiuiImpl()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    invoke-direct {p0}, Landroid/content/res/MiuiResources;->updateMiuiImpl()V

    return-void
.end method

.method public static isPreloadedCacheEmpty()Z
    .registers 1

    invoke-static {}, Landroid/content/res/MiuiResources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getPreloadedDrawables()Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private updateMiuiImpl()V
    .registers 4

    invoke-virtual {p0}, Landroid/content/res/MiuiResources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v0

    if-eqz v0, :cond_17

    instance-of v1, v0, Landroid/content/res/MiuiResourcesImpl;

    if-eqz v1, :cond_17

    move-object v1, v0

    check-cast v1, Landroid/content/res/MiuiResourcesImpl;

    iput-object v1, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    iget-object v2, p0, Landroid/content/res/MiuiResources;->mPackage:Ljava/lang/String;

    if-eqz v2, :cond_1a

    invoke-virtual {v1, p0, v2}, Landroid/content/res/MiuiResourcesImpl;->init(Landroid/content/res/MiuiResources;Ljava/lang/String;)V

    goto :goto_1a

    :cond_17
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    :cond_1a
    :goto_1a
    return-void
.end method


# virtual methods
.method public getIntArray(I)[I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroid/content/res/MiuiResourcesImpl;->getIntArray(I)[I

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroid/content/res/MiuiResourcesImpl;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroid/content/res/MiuiResourcesImpl;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1, p2}, Landroid/content/res/MiuiResourcesImpl;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroid/content/res/MiuiResourcesImpl;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method getThemeString(I)Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/content/res/MiuiResourcesImpl;->getThemeString(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_9

    iput-object p1, p0, Landroid/content/res/MiuiResources;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Landroid/content/res/MiuiResourcesImpl;->init(Landroid/content/res/MiuiResources;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method isPreloadOverlayed(I)Z
    .registers 4

    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1}, Landroid/content/res/MiuiResourcesImpl;->isPreloadOverlayed(I)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_f
    invoke-super {p0, p1}, Landroid/content/res/Resources;->isPreloadOverlayed(I)Z

    move-result v0

    return v0
.end method

.method loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .registers 4

    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/res/MiuiResourcesImpl;->loadOverlayDrawable(Landroid/content/res/MiuiResources;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    .registers 3

    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Landroid/content/res/MiuiResourcesImpl;->loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    invoke-super {p0, p1}, Landroid/content/res/Resources;->loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method loadOverlayValue(Landroid/util/TypedValue;I)V
    .registers 4

    iget-object v0, p0, Landroid/content/res/MiuiResources;->mMiuiImpl:Landroid/content/res/MiuiResourcesImpl;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Landroid/content/res/MiuiResourcesImpl;->loadOverlayValue(Landroid/util/TypedValue;I)V

    :cond_7
    return-void
.end method

.method public setImpl(Landroid/content/res/ResourcesImpl;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/content/res/Resources;->setImpl(Landroid/content/res/ResourcesImpl;)V

    invoke-direct {p0}, Landroid/content/res/MiuiResources;->updateMiuiImpl()V

    return-void
.end method
