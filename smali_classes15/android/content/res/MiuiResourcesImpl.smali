.class public final Landroid/content/res/MiuiResourcesImpl;
.super Landroid/content/res/ResourcesImpl;
.source "MiuiResourcesImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;
    }
.end annotation


# static fields
.field private static final sMiuiThemeEnabled:Z

.field private static final sPreloadDrawableSources:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sUpdatedTimeSystem:Ljava/lang/Long;

.field private static final sUpdatedTimeSystemMutex:Ljava/lang/Object;


# instance fields
.field private mIsPreloadOverlayed:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mPreloadingIds:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

.field private mSkipFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeResources:Lmiui/content/res/ThemeResources;

.field private mThemeValues:Lmiui/content/res/ThemeValues;

.field private mUpdatedTime:J

.field private mValueLoadedTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lmiui/content/res/ThemeCompatibility;->isThemeEnabled()Z

    move-result v0

    sput-boolean v0, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Landroid/content/res/MiuiResourcesImpl;->sUpdatedTimeSystem:Ljava/lang/Long;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/MiuiResourcesImpl;->sUpdatedTimeSystemMutex:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/content/res/MiuiResourcesImpl;->sPreloadDrawableSources:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/ResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mIsPreloadOverlayed:Ljava/util/Map;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mPreloadingIds:Ljava/util/Stack;

    sget-object v0, Lmiui/content/res/ThemeResourcesEmpty;->sInstance:Lmiui/content/res/ThemeResourcesEmpty;

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/content/res/MiuiResourcesImpl;->mUpdatedTime:J

    iput-wide v0, p0, Landroid/content/res/MiuiResourcesImpl;->mValueLoadedTime:J

    new-instance v0, Lmiui/content/res/ThemeValues;

    invoke-direct {v0}, Lmiui/content/res/ThemeValues;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeValues:Lmiui/content/res/ThemeValues;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mSkipFiles:Ljava/util/Map;

    return-void
.end method

.method private getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-static {}, Lmiui/content/res/FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/FixedSizeStringBuffer;

    move-result-object v1

    iget-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v3, v2

    iget-object v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;I)V

    const-string v2, ".9.png"

    invoke-virtual {v1, v2}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {v1}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2, p1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-virtual {v1, v3}, Lmiui/content/res/FixedSizeStringBuffer;->setLength(I)V

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {v1}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    :cond_40
    invoke-static {v1}, Lmiui/content/res/FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V

    goto :goto_4a

    :cond_44
    iget-object v1, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v0

    :goto_4a
    return v0
.end method

.method private loadValues()V
    .registers 5

    iget-wide v0, p0, Landroid/content/res/MiuiResourcesImpl;->mValueLoadedTime:J

    iget-wide v2, p0, Landroid/content/res/MiuiResourcesImpl;->mUpdatedTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Lmiui/content/res/ThemeValues;

    invoke-direct {v0}, Lmiui/content/res/ThemeValues;-><init>()V

    iget-object v1, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    iget-object v2, p0, Landroid/content/res/MiuiResourcesImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lmiui/content/res/ThemeResources;->mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeValues:Lmiui/content/res/ThemeValues;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/content/res/MiuiResourcesImpl;->mValueLoadedTime:J

    return-void
.end method

.method private resolveOverlayValue(ILandroid/util/TypedValue;)V
    .registers 5

    sget-boolean v0, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-eqz v0, :cond_32

    iget v0, p2, Landroid/util/TypedValue;->resourceId:I

    if-gtz v0, :cond_9

    goto :goto_32

    :cond_9
    iget v0, p2, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_15

    iget v0, p2, Landroid/util/TypedValue;->type:I

    const/16 v1, 0x1f

    if-le v0, v1, :cond_1a

    :cond_15
    iget v0, p2, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_31

    :cond_1a
    invoke-direct {p0}, Landroid/content/res/MiuiResourcesImpl;->loadValues()V

    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResourcesImpl;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_29

    iget v1, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v1}, Landroid/content/res/MiuiResourcesImpl;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_29
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p2, Landroid/util/TypedValue;->data:I

    :cond_31
    return-void

    :cond_32
    :goto_32
    return-void
.end method


# virtual methods
.method public getIntArray(I)[I
    .registers 3

    sget-boolean v0, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResourcesImpl;->getThemeIntArray(I)[I

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .registers 3

    sget-boolean v0, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResourcesImpl;->getThemeStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .registers 3

    sget-boolean v0, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResourcesImpl;->getThemeString(I)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    sget-boolean v0, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResourcesImpl;->getThemeString(I)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .registers 3

    sget-boolean v0, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResourcesImpl;->getThemeStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method getThemeInt(I)Ljava/lang/Integer;
    .registers 4

    invoke-direct {p0}, Landroid/content/res/MiuiResourcesImpl;->loadValues()V

    iget-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeValues:Lmiui/content/res/ThemeValues;

    iget-object v0, v0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method getThemeIntArray(I)[I
    .registers 4

    invoke-direct {p0}, Landroid/content/res/MiuiResourcesImpl;->loadValues()V

    iget-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeValues:Lmiui/content/res/ThemeValues;

    iget-object v0, v0, Lmiui/content/res/ThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method getThemeString(I)Ljava/lang/CharSequence;
    .registers 4

    invoke-direct {p0}, Landroid/content/res/MiuiResourcesImpl;->loadValues()V

    iget-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeValues:Lmiui/content/res/ThemeValues;

    iget-object v0, v0, Lmiui/content/res/ThemeValues;->mStrings:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method getThemeStringArray(I)[Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Landroid/content/res/MiuiResourcesImpl;->loadValues()V

    iget-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeValues:Lmiui/content/res/ThemeValues;

    iget-object v0, v0, Lmiui/content/res/ThemeValues;->mStringArrays:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-direct {p0, p1, p2}, Landroid/content/res/MiuiResourcesImpl;->resolveOverlayValue(ILandroid/util/TypedValue;)V

    return-void
.end method

.method public init(Landroid/content/res/MiuiResources;Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iput-object p2, p0, Landroid/content/res/MiuiResourcesImpl;->mPackageName:Ljava/lang/String;

    if-nez p2, :cond_14

    const-string v0, "android"

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Lmiui/content/res/ThemeResources;->getSystem(Landroid/content/res/MiuiResources;)Lmiui/content/res/ThemeResources;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    goto :goto_3b

    :cond_14
    invoke-static {p1, p2}, Lmiui/content/res/ThemeResourcesPackage;->getThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    sget-object v0, Landroid/content/res/MiuiResourcesImpl;->sUpdatedTimeSystemMutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1d
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v1

    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Lmiui/content/res/ThemeResourcesSystem;->getUpdateTime()J

    move-result-wide v2

    sget-object v4, Landroid/content/res/MiuiResourcesImpl;->sUpdatedTimeSystem:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_3a

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sput-object v4, Landroid/content/res/MiuiResourcesImpl;->sUpdatedTimeSystem:Ljava/lang/Long;

    invoke-static {}, Landroid/content/res/Resources;->clearPreloadedCache()V

    :cond_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_1d .. :try_end_3b} :catchall_3f

    :goto_3b
    invoke-virtual {p0}, Landroid/content/res/MiuiResourcesImpl;->reset()V

    return-void

    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method isPreloadOverlayed(I)Ljava/lang/Boolean;
    .registers 10

    sget-boolean v0, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mIsPreloadOverlayed:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_15

    return-object v0

    :cond_15
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v2, Landroid/content/res/MiuiResourcesImpl;->sPreloadDrawableSources:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-eqz v2, :cond_51

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;

    new-instance v5, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    iget v6, v4, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;->mCookie:I

    iget-object v7, v4, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;->mResourcePath:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v1}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(ILjava/lang/String;Z)V

    invoke-direct {p0, v5}, Landroid/content/res/MiuiResourcesImpl;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    iget-object v6, v4, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;->mThemePath:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_50

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_51

    :cond_50
    goto :goto_28

    :cond_51
    :goto_51
    iget-object v1, p0, Landroid/content/res/MiuiResourcesImpl;->mIsPreloadOverlayed:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    sget-boolean v0, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-nez v0, :cond_9

    invoke-super/range {p0 .. p5}, Landroid/content/res/ResourcesImpl;->loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-virtual {p0}, Landroid/content/res/MiuiResourcesImpl;->isPreloading()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mPreloadingIds:Ljava/util/Stack;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    invoke-super/range {p0 .. p5}, Landroid/content/res/ResourcesImpl;->loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/MiuiResourcesImpl;->isPreloading()Z

    move-result v1

    if-eqz v1, :cond_7e

    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_2e

    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-le v1, v2, :cond_79

    :cond_2e
    iget-object v1, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;

    iget v3, p2, Landroid/util/TypedValue;->assetCookie:I

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v1, v4}, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;-><init>(Landroid/content/res/MiuiResourcesImpl;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Landroid/content/res/MiuiResourcesImpl;->mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    if-eqz v3, :cond_46

    iget-object v3, v3, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/res/MiuiResourcesImpl$PreloadDrawableSource;->mThemePath:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/res/MiuiResourcesImpl;->mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    :cond_46
    iget-object v3, p0, Landroid/content/res/MiuiResourcesImpl;->mPreloadingIds:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    sget-object v5, Landroid/content/res/MiuiResourcesImpl;->sPreloadDrawableSources:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    if-nez v5, :cond_75

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move-object v5, v6

    sget-object v6, Landroid/content/res/MiuiResourcesImpl;->sPreloadDrawableSources:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_75
    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4c

    :cond_79
    iget-object v1, p0, Landroid/content/res/MiuiResourcesImpl;->mPreloadingIds:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_7e
    return-object v0
.end method

.method loadOverlayDrawable(Landroid/content/res/MiuiResources;Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .registers 10

    sget-boolean v0, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_79

    iget-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mSkipFiles:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    goto :goto_79

    :cond_12
    new-instance v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    const/4 v2, 0x1

    invoke-direct {v0, p2, v2}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(Landroid/util/TypedValue;Z)V

    invoke-virtual {p0}, Landroid/content/res/MiuiResourcesImpl;->isPreloading()Z

    move-result v3

    if-eqz v3, :cond_20

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    :cond_20
    invoke-direct {p0, v0}, Landroid/content/res/MiuiResourcesImpl;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v3

    if-eqz v3, :cond_6b

    :try_start_26
    iget v2, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outDensity:I

    iput v2, p2, Landroid/util/TypedValue;->density:I

    iget-object v2, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    iget-object v4, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    const-string v5, ".9.png"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-static {v2}, Lmiui/content/res/SimulateNinePngUtil;->convertIntoNinePngStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v4

    move-object v2, v4

    :cond_3b
    iget-object v4, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-static {p1, p2, v2, v4}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_4f

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v5

    or-int/lit16 v5, v5, 0x200

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    :try_end_4f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_26 .. :try_end_4f} :catch_61
    .catchall {:try_start_26 .. :try_end_4f} :catchall_58

    :cond_4f
    nop

    :try_start_50
    iget-object v1, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_55} :catch_56

    goto :goto_57

    :catch_56
    move-exception v1

    :goto_57
    return-object v4

    :catchall_58
    move-exception v1

    :try_start_59
    iget-object v2, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5e} :catch_5f

    goto :goto_60

    :catch_5f
    move-exception v2

    :goto_60
    throw v1

    :catch_61
    move-exception v2

    :try_start_62
    iget-object v2, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_67} :catch_68

    goto :goto_6a

    :catch_68
    move-exception v2

    nop

    :goto_6a
    goto :goto_78

    :cond_6b
    iget-object v4, p0, Landroid/content/res/MiuiResourcesImpl;->mSkipFiles:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_78
    return-object v1

    :cond_79
    :goto_79
    return-object v1
.end method

.method loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    .registers 9

    sget-boolean v0, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-direct {p0}, Landroid/content/res/MiuiResourcesImpl;->loadValues()V

    iget-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeValues:Lmiui/content/res/ThemeValues;

    if-eqz v0, :cond_42

    iget-object v0, v0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_16

    goto :goto_42

    :cond_16
    iget-object v0, p1, Landroid/content/res/TypedArray;->mData:[I

    const/4 v1, 0x0

    :goto_19
    array-length v2, v0

    if-ge v1, v2, :cond_41

    add-int/lit8 v2, v1, 0x0

    aget v2, v0, v2

    add-int/lit8 v3, v1, 0x3

    aget v3, v0, v3

    const/16 v4, 0x10

    if-lt v2, v4, :cond_2c

    const/16 v4, 0x1f

    if-le v2, v4, :cond_2f

    :cond_2c
    const/4 v4, 0x5

    if-ne v2, v4, :cond_3d

    :cond_2f
    invoke-virtual {p0, v3}, Landroid/content/res/MiuiResourcesImpl;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_3d

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v5

    :cond_3d
    nop

    add-int/lit8 v1, v1, 0x7

    goto :goto_19

    :cond_41
    return-object p1

    :cond_42
    :goto_42
    return-object p1
.end method

.method loadOverlayValue(Landroid/util/TypedValue;I)V
    .registers 3

    invoke-direct {p0, p2, p1}, Landroid/content/res/MiuiResourcesImpl;->resolveOverlayValue(ILandroid/util/TypedValue;)V

    return-void
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .registers 7

    sget-boolean v0, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mSkipFiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_35

    const/4 v0, 0x1

    invoke-super {p0, p1, p2, v0}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    new-instance v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    invoke-direct {v1, p2, v0}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(Landroid/util/TypedValue;Z)V

    iget-object v2, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2, v1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v2

    if-eqz v2, :cond_28

    iget v0, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outDensity:I

    iput v0, p2, Landroid/util/TypedValue;->density:I

    iget-object v0, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    return-object v0

    :cond_28
    iget-object v2, p0, Landroid/content/res/MiuiResourcesImpl;->mSkipFiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    invoke-super {p0, p1, p2}, Landroid/content/res/ResourcesImpl;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected reset()V
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/MiuiResourcesImpl;->mUpdatedTime:J

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mSkipFiles:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mIsPreloadOverlayed:Ljava/util/Map;

    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Landroid/content/res/MiuiResourcesImpl;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    goto :goto_d

    :cond_c
    move v1, v0

    :goto_d
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    sget-boolean v2, Landroid/content/res/MiuiResourcesImpl;->sMiuiThemeEnabled:Z

    if-nez v2, :cond_15

    return-void

    :cond_15
    iget-object v2, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    if-eqz v2, :cond_7e

    and-int/lit16 v2, v1, 0x1000

    if-eqz v2, :cond_20

    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    :cond_20
    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_37

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2b

    const/4 v0, 0x1

    :cond_2b
    iget-object v2, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2, v0}, Lmiui/content/res/ThemeResources;->setNightModeEnable(Z)V

    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmiui/content/res/ThemeResourcesSystem;->setNightModeEnable(Z)V

    :cond_37
    iget-wide v2, p0, Landroid/content/res/MiuiResourcesImpl;->mUpdatedTime:J

    invoke-static {v1}, Landroid/content/res/MiuiConfiguration;->needNewResources(I)Z

    move-result v0

    if-eqz v0, :cond_6d

    sget-object v0, Landroid/content/res/MiuiResourcesImpl;->sUpdatedTimeSystemMutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_42
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/content/res/ThemeResourcesSystem;->checkUpdate()J

    move-result-wide v4

    move-wide v2, v4

    sget-object v4, Landroid/content/res/MiuiResourcesImpl;->sUpdatedTimeSystem:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_5e

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sput-object v4, Landroid/content/res/MiuiResourcesImpl;->sUpdatedTimeSystem:Ljava/lang/Long;

    invoke-static {}, Landroid/content/res/Resources;->clearPreloadedCache()V

    :cond_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_42 .. :try_end_5f} :catchall_6a

    iget-object v0, p0, Landroid/content/res/MiuiResourcesImpl;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    goto :goto_6d

    :catchall_6a
    move-exception v4

    :try_start_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v4

    :cond_6d
    :goto_6d
    iget-wide v4, p0, Landroid/content/res/MiuiResourcesImpl;->mUpdatedTime:J

    cmp-long v0, v4, v2

    if-ltz v0, :cond_7b

    and-int/lit16 v0, v1, 0x80

    if-nez v0, :cond_7b

    and-int/lit16 v0, v1, 0x200

    if-eqz v0, :cond_7e

    :cond_7b
    invoke-virtual {p0}, Landroid/content/res/MiuiResourcesImpl;->reset()V

    :cond_7e
    return-void
.end method
