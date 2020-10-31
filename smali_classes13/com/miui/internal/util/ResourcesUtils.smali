.class public Lcom/miui/internal/util/ResourcesUtils;
.super Ljava/lang/Object;
.source "ResourcesUtils.java"


# static fields
.field private static ASSET_MANAGER_ADD_ASSET_PATH:Ljava/lang/reflect/Method;

.field private static ASSET_MANAGER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "Landroid/content/res/AssetManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    :try_start_0
    const-class v0, Landroid/content/res/AssetManager;

    const-string v1, "addAssetPath"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/util/ResourcesUtils;->ASSET_MANAGER_ADD_ASSET_PATH:Ljava/lang/reflect/Method;

    const-class v0, Landroid/content/res/AssetManager;

    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/miui/internal/util/ResourcesUtils;->ASSET_MANAGER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;
    :try_end_1c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :goto_21
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs createResources(Landroid/content/res/Resources;[Ljava/lang/String;)Landroid/content/res/Resources;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/miui/internal/util/ResourcesUtils;->ASSET_MANAGER_CONSTRUCTOR:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetManager;

    move-object v0, v1

    array-length v1, p1

    move v3, v2

    :goto_f
    if-ge v3, v1, :cond_2f

    aget-object v4, p1, v3

    sget-object v5, Lcom/miui/internal/util/ResourcesUtils;->ASSET_MANAGER_ADD_ASSET_PATH:Ljava/lang/reflect/Method;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v2

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1d} :catch_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1d} :catch_26
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1d} :catch_21

    nop

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :catch_21
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_30

    :catch_26
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2f

    :catch_2b
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    :cond_2f
    :goto_2f
    nop

    :goto_30
    if-nez p0, :cond_39

    new-instance v1, Landroid/content/res/Resources;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    goto :goto_46

    :cond_39
    new-instance v1, Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    :goto_46
    return-object v1
.end method

.method public static varargs createResources([Ljava/lang/String;)Landroid/content/res/Resources;
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/miui/internal/util/ResourcesUtils;->createResources(Landroid/content/res/Resources;[Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method
