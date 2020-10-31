.class public Lmiui/content/res/ThemeResources;
.super Ljava/lang/Object;
.source "ThemeResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/res/ThemeResources$LoadThemeConfigHelper;,
        Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;,
        Lmiui/content/res/ThemeResources$ConfigType;,
        Lmiui/content/res/ThemeResources$FilterInfo;,
        Lmiui/content/res/ThemeResources$MetaData;
    }
.end annotation


# static fields
.field private static final ATTR_FILTER_PATH:Ljava/lang/String; = "path"

.field static DBG:Z = false

.field public static final DISABLE_PROVISION_THEME:Ljava/lang/String;

.field private static final FILTER_DESCRIPTION_FILE:Ljava/lang/String; = "filters.xml"

.field public static final FRAMEWORK_NAME:Ljava/lang/String; = "framework-res"

.field public static final FRAMEWORK_PACKAGE:Ljava/lang/String; = "android"

.field public static final ICONS_NAME:Ljava/lang/String; = "icons"

.field public static final LANGUAGE_THEME_PATH:Ljava/lang/String; = "/data/system/language/"

.field public static final LOCKSCREEN_NAME:Ljava/lang/String; = "lockscreen"

.field public static final LOCKSCREEN_WALLPAPER_NAME:Ljava/lang/String; = "lock_wallpaper"

.field public static final MIUI_NAME:Ljava/lang/String; = "framework-miui-res"

.field public static final MIUI_PACKAGE:Ljava/lang/String; = "miui"

.field public static final PROVISION_THEME_PATH:Ljava/lang/String; = "/system/media/theme/provision/"

.field public static final SYSTEMUI_NAME:Ljava/lang/String; = "com.android.systemui"

.field public static final SYSTEM_LANGUAGE_THEME_PATH:Ljava/lang/String; = "/system/language/"

.field public static final SYSTEM_THEME_PATH:Ljava/lang/String; = "/system/media/theme/default/"

.field private static final TAG_FILTER:Ljava/lang/String; = "filter"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field public static final THEME_DATA_CONFIG_DIR_PATH:Ljava/lang/String; = "/data/system/theme_config/"

.field public static final THEME_MAGIC_PATH:Ljava/lang/String;

.field public static final THEME_PATH:Ljava/lang/String; = "/data/system/theme/"

.field public static final THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

.field public static final THEME_RIGHTS_PATH:Ljava/lang/String; = "/data/system/theme/rights/"

.field public static final THEME_VERSION_COMPATIBILITY_PATH:Ljava/lang/String; = "/data/system/theme/compatibility-v12/"

.field public static final WALLPAPER_NAME:Ljava/lang/String; = "wallpaper"

.field public static final sAppliedLockstyleConfigPath:Ljava/lang/String; = "/data/system/theme/config.config"

.field protected static sCookieFramework:I

.field protected static sCookieMiuiExtFramework:I

.field protected static sCookieMiuiFramework:I

.field protected static sCookieMiuiSdk:I

.field private static sHasUpdatedAfterZygote:Z

.field protected static sIsZygote:Z

.field private static sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

.field private static sLockWallpaperModifiedTime:J

.field private static sSystem:Lmiui/content/res/ThemeResourcesSystem;


# instance fields
.field private mFilterInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/content/res/ThemeResources$FilterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHasInitedDefaultValue:Z

.field protected mIsTop:Z

.field protected mIsUserThemePath:Z

.field private mLoadThemeValuesCallback:Lmiui/content/res/ThemeResources$LoadThemeConfigHelper;

.field protected mMetaData:Lmiui/content/res/ThemeResources$MetaData;

.field protected mNightMode:Z

.field protected mPackageName:Ljava/lang/String;

.field protected mPackageZipFile:Lmiui/content/res/ThemeZipFile;

.field protected mResources:Landroid/content/res/MiuiResources;

.field protected mShouldFallbackDeeper:Z

.field protected mSupportWrapper:Z

.field protected mUpdatedTime:J

.field protected mWrapped:Lmiui/content/res/ThemeResources;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x0

    sput-boolean v0, Lmiui/content/res/ThemeResources;->DBG:Z

    sput-boolean v0, Lmiui/content/res/ThemeResources;->sIsZygote:Z

    sput-boolean v0, Lmiui/content/res/ThemeResources;->sHasUpdatedAfterZygote:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-le v1, v2, :cond_10

    const-string v1, "/data/system/theme_magic/"

    goto :goto_12

    :cond_10
    const-string v1, "/data/system/"

    :goto_12
    sput-object v1, Lmiui/content/res/ThemeResources;->THEME_MAGIC_PATH:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Lmiui/content/res/ThemeResources$MetaData;

    new-instance v2, Lmiui/content/res/ThemeResources$MetaData;

    const-string v3, "/system/media/theme/default/"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v4}, Lmiui/content/res/ThemeResources$MetaData;-><init>(Ljava/lang/String;ZZ)V

    aput-object v2, v1, v0

    new-instance v0, Lmiui/content/res/ThemeResources$MetaData;

    const-string v2, "/system/media/theme/provision/"

    invoke-direct {v0, v2, v4, v4}, Lmiui/content/res/ThemeResources$MetaData;-><init>(Ljava/lang/String;ZZ)V

    aput-object v0, v1, v4

    const/4 v0, 0x2

    new-instance v2, Lmiui/content/res/ThemeResources$MetaData;

    const-string v3, "/data/system/theme/"

    invoke-direct {v2, v3, v4, v4}, Lmiui/content/res/ThemeResources$MetaData;-><init>(Ljava/lang/String;ZZ)V

    aput-object v2, v1, v0

    sput-object v1, Lmiui/content/res/ThemeResources;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/content/res/ThemeResources;->THEME_MAGIC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "disable_provision_theme"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/content/res/ThemeResources;->DISABLE_PROVISION_THEME:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lmiui/content/res/ThemeResources;->sCookieFramework:I

    sput v0, Lmiui/content/res/ThemeResources;->sCookieMiuiExtFramework:I

    sput v0, Lmiui/content/res/ThemeResources;->sCookieMiuiFramework:I

    sput v0, Lmiui/content/res/ThemeResources;->sCookieMiuiSdk:I

    return-void
.end method

.method protected constructor <init>(Lmiui/content/res/ThemeResources;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/content/res/ThemeResources;->mIsTop:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/content/res/ThemeResources;->mIsUserThemePath:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiui/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;

    new-instance v2, Lmiui/content/res/ThemeResources$LoadThemeConfigHelper;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lmiui/content/res/ThemeResources$LoadThemeConfigHelper;-><init>(Lmiui/content/res/ThemeResources;Lmiui/content/res/ThemeResources$1;)V

    iput-object v2, p0, Lmiui/content/res/ThemeResources;->mLoadThemeValuesCallback:Lmiui/content/res/ThemeResources$LoadThemeConfigHelper;

    invoke-static {p2}, Lmiui/content/res/ThemeResources;->initSystemCookies(Landroid/content/res/Resources;)V

    if-eqz p1, :cond_21

    iput-object p1, p0, Lmiui/content/res/ThemeResources;->mWrapped:Lmiui/content/res/ThemeResources;

    iput-boolean v1, p1, Lmiui/content/res/ThemeResources;->mIsTop:Z

    :cond_21
    iput-object p2, p0, Lmiui/content/res/ThemeResources;->mResources:Landroid/content/res/MiuiResources;

    invoke-static {p3}, Lmiui/content/res/ThemeResources;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    iput-object p4, p0, Lmiui/content/res/ThemeResources;->mMetaData:Lmiui/content/res/ThemeResources$MetaData;

    iget-object v2, p4, Lmiui/content/res/ThemeResources$MetaData;->mThemePath:Ljava/lang/String;

    const-string v3, "/data/system/theme/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/content/res/ThemeResources;->mIsUserThemePath:Z

    invoke-static {p4, p3}, Lmiui/content/res/ThemeZipFile;->getThemeZipFile(Lmiui/content/res/ThemeResources$MetaData;Ljava/lang/String;)Lmiui/content/res/ThemeZipFile;

    move-result-object v2

    iput-object v2, p0, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    const-string v2, "icons"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    const-string v2, "lockscreen"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    goto :goto_4d

    :cond_4c
    move v0, v1

    :goto_4d
    iput-boolean v0, p0, Lmiui/content/res/ThemeResources;->mSupportWrapper:Z

    invoke-virtual {p0}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    return-void
.end method

.method public static final clearLockWallpaperCache()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lmiui/content/res/ThemeResources;->sLockWallpaperModifiedTime:J

    const/4 v0, 0x0

    sput-object v0, Lmiui/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private static getFallbackDrawablePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    add-int v3, v0, v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_30

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_30

    add-int v3, v0, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_26

    const/4 v5, 0x0

    return-object v5

    :cond_26
    const/16 v5, 0x2e

    if-ne v3, v5, :cond_2b

    goto :goto_30

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_30
    :goto_30
    invoke-static {}, Lmiui/content/res/FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/FixedSizeStringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;I)V

    invoke-virtual {v1, p2}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {v1}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lmiui/content/res/FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V

    return-object v2
.end method

.method private getFilterInfos(Z)Ljava/util/List;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lmiui/content/res/ThemeResources$FilterInfo;",
            ">;"
        }
    .end annotation

    move/from16 v1, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    if-eqz v1, :cond_d

    const-string v0, "nightmode/"

    goto :goto_f

    :cond_d
    const-string v0, ""

    :goto_f
    move-object v3, v0

    new-instance v0, Lmiui/content/res/ThemeResources$FilterInfo;

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1}, Lmiui/content/res/ThemeResources$FilterInfo;-><init>(Ljava/lang/String;Ljava/util/HashSet;Z)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, p0

    iget-object v0, v4, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "filters.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmiui/content/res/ThemeZipFile;->getZipInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    if-nez v5, :cond_35

    return-object v2

    :cond_35
    :try_start_35
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v7

    const-string v8, "filter"

    invoke-interface {v7, v8}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    const/4 v9, 0x0

    :goto_48
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v9, v10, :cond_be

    invoke-interface {v8, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    const-string v11, "path"

    invoke-interface {v10, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_b7

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_b7

    const-string v12, "res"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_74

    move-object/from16 v16, v0

    goto :goto_b9

    :cond_74
    const-string v12, "package"

    invoke-interface {v10, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    const/4 v14, 0x0

    :goto_80
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-ge v14, v15, :cond_98

    invoke-interface {v12, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_80

    :cond_98
    new-instance v14, Lmiui/content/res/ThemeResources$FilterInfo;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    const/16 v0, 0x2f

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0, v13, v1}, Lmiui/content/res/ThemeResources$FilterInfo;-><init>(Ljava/lang/String;Ljava/util/HashSet;Z)V

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_b6} :catch_cc
    .catchall {:try_start_35 .. :try_end_b6} :catchall_c4

    goto :goto_b9

    :cond_b7
    move-object/from16 v16, v0

    :goto_b9
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v16

    goto :goto_48

    :cond_be
    move-object/from16 v16, v0

    :try_start_c0
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_d1

    goto :goto_d0

    :catchall_c4
    move-exception v0

    move-object v6, v0

    :try_start_c6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_ca

    goto :goto_cb

    :catch_ca
    move-exception v0

    :goto_cb
    throw v6

    :catch_cc
    move-exception v0

    :try_start_cd
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_d1

    :goto_d0
    goto :goto_d3

    :catch_d1
    move-exception v0

    nop

    :goto_d3
    return-object v2
.end method

.method public static final getLockWallpaperCache(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 11

    const-string v0, "ThemeResources"

    sget-object v1, Lmiui/content/res/ThemeResources;->sSystem:Lmiui/content/res/ThemeResourcesSystem;

    invoke-virtual {v1}, Lmiui/content/res/ThemeResourcesSystem;->getLockscreenWallpaper()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8f

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_13

    goto/16 :goto_8f

    :cond_13
    sget-wide v3, Lmiui/content/res/ThemeResources;->sLockWallpaperModifiedTime:J

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_20

    sget-object v0, Lmiui/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_20
    sput-object v2, Lmiui/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

    :try_start_22
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    invoke-static {v3, v4}, Lmiui/content/res/ThemeResources;->getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V

    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v6, v4, Landroid/graphics/Point;->y:I

    if-le v5, v6, :cond_5d

    const-string v7, "LockWallpaper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Wrong display metrics for width = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " and height = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v5

    move v5, v6

    move v6, v7

    :cond_5d
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v5, v6, v8}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Ljava/lang/String;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_8b

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v8, v9, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    sput-object v8, Lmiui/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sput-wide v8, Lmiui/content/res/ThemeResources;->sLockWallpaperModifiedTime:J
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_79} :catch_83
    .catch Ljava/lang/OutOfMemoryError; {:try_start_22 .. :try_end_79} :catch_7a

    goto :goto_8b

    :catch_7a
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8c

    :catch_83
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8b
    :goto_8b
    nop

    :goto_8c
    sget-object v0, Lmiui/content/res/ThemeResources;->sLockWallpaperCache:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_8f
    :goto_8f
    return-object v2
.end method

.method private static final getPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "framework-res"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "icons"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_26

    :cond_11
    const-string v0, "framework-miui-res"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "lockscreen"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_23

    :cond_22
    return-object p0

    :cond_23
    :goto_23
    const-string v0, "miui"

    return-object v0

    :cond_26
    :goto_26
    const-string v0, "android"

    return-object v0
.end method

.method private static getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V
    .registers 9

    :try_start_0
    const-class v0, Landroid/view/Display;

    const-string v1, "getRealSize"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/graphics/Point;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_24

    nop

    goto :goto_2f

    :catch_24
    move-exception v0

    const-string v1, "LockWallpaper"

    const-string v2, "no getRealSize hack method"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :goto_2f
    return-void
.end method

.method public static getSystem(Landroid/content/res/MiuiResources;)Lmiui/content/res/ThemeResources;
    .registers 2

    sget-object v0, Lmiui/content/res/ThemeResources;->sSystem:Lmiui/content/res/ThemeResourcesSystem;

    if-nez v0, :cond_a

    invoke-static {p0}, Lmiui/content/res/ThemeResourcesSystem;->getTopLevelThemeResources(Landroid/content/res/MiuiResources;)Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    sput-object v0, Lmiui/content/res/ThemeResources;->sSystem:Lmiui/content/res/ThemeResourcesSystem;

    :cond_a
    sget-object v0, Lmiui/content/res/ThemeResources;->sSystem:Lmiui/content/res/ThemeResourcesSystem;

    return-object v0
.end method

.method public static getSystem()Lmiui/content/res/ThemeResourcesSystem;
    .registers 1

    sget-boolean v0, Lmiui/content/res/ThemeResources;->sIsZygote:Z

    if-nez v0, :cond_12

    sget-boolean v0, Lmiui/content/res/ThemeResources;->sHasUpdatedAfterZygote:Z

    if-nez v0, :cond_12

    sget-object v0, Lmiui/content/res/ThemeResources;->sSystem:Lmiui/content/res/ThemeResourcesSystem;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lmiui/content/res/ThemeResourcesSystem;->checkUpdate()J

    const/4 v0, 0x1

    sput-boolean v0, Lmiui/content/res/ThemeResources;->sHasUpdatedAfterZygote:Z

    :cond_12
    sget-object v0, Lmiui/content/res/ThemeResources;->sSystem:Lmiui/content/res/ThemeResourcesSystem;

    return-object v0
.end method

.method private getThemeFileWithFallback(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lmiui/content/res/ThemeResources;->mIsUserThemePath:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_b0

    iget-object v2, v0, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v2}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v2

    if-nez v2, :cond_15

    move-object/from16 v5, p3

    goto/16 :goto_b2

    :cond_15
    sget-object v2, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DRAWABLE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    iget-object v4, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    move-object/from16 v5, p3

    invoke-static {v5, v2, v4}, Lmiui/content/res/ThemeCompatibility;->getMayFilterFallbackList(Ljava/lang/String;Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_af

    iget-object v4, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ad

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;

    iget-object v8, v7, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    sget-object v9, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DRAWABLE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne v8, v9, :cond_ab

    iget-object v8, v7, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackPkgName:Ljava/lang/String;

    if-nez v8, :cond_ab

    iget-object v8, v7, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResOriginalName:Ljava/lang/String;

    iget-object v9, v7, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackName:Ljava/lang/String;

    invoke-static {v4, v8, v9}, Lmiui/content/res/ThemeResources;->getFallbackDrawablePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    iget-object v8, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    if-nez v8, :cond_4c

    goto :goto_27

    :cond_4c
    iget-object v8, v7, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResPreferredConfigs:[Ljava/lang/String;

    const/4 v9, 0x1

    if-nez v8, :cond_5a

    invoke-direct/range {p0 .. p2}, Lmiui/content/res/ThemeResources;->getThemeFileWithPath(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_ab

    iput-object v4, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    return v9

    :cond_5a
    const/4 v8, 0x0

    const/4 v10, 0x0

    iget-object v11, v7, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResPreferredConfigs:[Ljava/lang/String;

    array-length v12, v11

    move v13, v3

    :goto_60
    if-ge v13, v12, :cond_81

    aget-object v14, v11, v13

    iget-object v15, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-lez v15, :cond_7e

    iget-object v11, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-virtual {v11, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iget-object v11, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v15

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_81

    :cond_7e
    add-int/lit8 v13, v13, 0x1

    goto :goto_60

    :cond_81
    :goto_81
    if-eqz v8, :cond_ab

    iget-object v11, v7, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResPreferredConfigs:[Ljava/lang/String;

    array-length v12, v11

    move v13, v3

    :goto_87
    if-ge v13, v12, :cond_ab

    aget-object v14, v11, v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-direct/range {p0 .. p2}, Lmiui/content/res/ThemeResources;->getThemeFileWithPath(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a8

    iput-object v4, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    return v9

    :cond_a8
    add-int/lit8 v13, v13, 0x1

    goto :goto_87

    :cond_ab
    goto/16 :goto_27

    :cond_ad
    iput-object v4, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    :cond_af
    return v3

    :cond_b0
    move-object/from16 v5, p3

    :goto_b2
    return v3
.end method

.method private getThemeFileWithPath(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .registers 11

    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v0}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-virtual {p0}, Lmiui/content/res/ThemeResources;->getFilterInfos()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_12
    if-ltz v1, :cond_69

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/content/res/ThemeResources$FilterInfo;

    iget-boolean v4, p0, Lmiui/content/res/ThemeResources;->mNightMode:Z

    invoke-virtual {v3, p2, v4}, Lmiui/content/res/ThemeResources$FilterInfo;->match(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_66

    iget-object v4, v3, Lmiui/content/res/ThemeResources$FilterInfo;->mPath:Ljava/lang/String;

    iput-object v4, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    iget-object v4, p0, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v4, p1}, Lmiui/content/res/ThemeZipFile;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v4

    if-eqz v4, :cond_2f

    return v2

    :cond_2f
    iget-object v4, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/miui/internal/content/res/ThemeToolUtils;->getNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lmiui/content/res/ThemeResources$FilterInfo;->mFallback:Lcom/miui/internal/content/res/ThemeFallback;

    iget-object v5, v5, Lcom/miui/internal/content/res/ThemeFallback;->mFallbackInfoMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;

    if-eqz v5, :cond_66

    iget-object v6, v5, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    sget-object v7, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DRAWABLE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne v6, v7, :cond_66

    iget-object v6, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    iget-object v7, v5, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackPkgName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66

    iget-object v6, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    iget-object v7, v5, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackName:Ljava/lang/String;

    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    iget-object v7, p0, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v7, p1}, Lmiui/content/res/ThemeZipFile;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v7

    iput-object v6, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    if-eqz v7, :cond_66

    return v2

    :cond_66
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    :cond_69
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    :cond_6c
    iget-boolean v0, p0, Lmiui/content/res/ThemeResources;->mShouldFallbackDeeper:Z

    if-eqz v0, :cond_77

    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mWrapped:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1, p2}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    goto :goto_78

    :cond_77
    const/4 v0, 0x0

    :goto_78
    return v0
.end method

.method public static getTopLevelThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResources;
    .registers 7

    const/4 v0, 0x0

    invoke-static {}, Lmiui/content/res/ThemeResources;->needProvisionTheme()Z

    move-result v1

    const/4 v2, 0x0

    :goto_6
    sget-object v3, Lmiui/content/res/ThemeResources;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    array-length v4, v3

    if-ge v2, v4, :cond_27

    if-nez v1, :cond_1a

    aget-object v3, v3, v2

    iget-object v3, v3, Lmiui/content/res/ThemeResources$MetaData;->mThemePath:Ljava/lang/String;

    const-string v4, "/system/media/theme/provision/"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_24

    :cond_1a
    new-instance v3, Lmiui/content/res/ThemeResources;

    sget-object v4, Lmiui/content/res/ThemeResources;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    aget-object v4, v4, v2

    invoke-direct {v3, v0, p0, p1, v4}, Lmiui/content/res/ThemeResources;-><init>(Lmiui/content/res/ThemeResources;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    move-object v0, v3

    :goto_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_27
    return-object v0
.end method

.method private initBasePaths()V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lmiui/content/res/ThemeResources;->getFilterInfos(Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lmiui/content/res/ThemeResources;->getFilterInfos(Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput-object v0, p0, Lmiui/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;

    return-void
.end method

.method private static initSystemCookies(Landroid/content/res/Resources;)V
    .registers 8

    if-nez p0, :cond_3

    return-void

    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    const-string v2, "/system/framework/framework-res.apk"

    if-le v0, v1, :cond_72

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, v2}, Lmiui/content/res/AssetManagerUtil;->findCookieForPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_17

    sput v1, Lmiui/content/res/ThemeResources;->sCookieFramework:I

    :cond_17
    sget-object v2, Landroid/miui/ResourcesManager;->FRAMEWORK_EXT_RES_PATH:Ljava/lang/String;

    invoke-static {v0, v2}, Lmiui/content/res/AssetManagerUtil;->findCookieForPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_21

    sput v2, Lmiui/content/res/ThemeResources;->sCookieMiuiExtFramework:I

    :cond_21
    sget-object v3, Landroid/miui/ResourcesManager;->MIUI_FRAMEWORK_RES_PATH:Ljava/lang/String;

    invoke-static {v0, v3}, Lmiui/content/res/AssetManagerUtil;->findCookieForPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2c

    sput v3, Lmiui/content/res/ThemeResources;->sCookieMiuiFramework:I

    goto :goto_49

    :cond_2c
    const-string v4, "/data/app/com.miui.system-1.apk"

    invoke-static {v0, v4}, Lmiui/content/res/AssetManagerUtil;->findCookieForPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_3b

    invoke-static {v0, v4}, Lmiui/content/res/AssetManagerUtil;->findCookieForPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v4

    sput v4, Lmiui/content/res/ThemeResources;->sCookieMiuiFramework:I

    goto :goto_49

    :cond_3b
    const-string v4, "/data/app/com.miui.system-2.apk"

    invoke-static {v0, v4}, Lmiui/content/res/AssetManagerUtil;->findCookieForPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_49

    invoke-static {v0, v4}, Lmiui/content/res/AssetManagerUtil;->findCookieForPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v4

    sput v4, Lmiui/content/res/ThemeResources;->sCookieMiuiFramework:I

    :cond_49
    :goto_49
    sget-object v4, Landroid/miui/ResourcesManager;->MIUI_SDK_RES_PATH:Ljava/lang/String;

    invoke-static {v0, v4}, Lmiui/content/res/AssetManagerUtil;->findCookieForPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_54

    sput v4, Lmiui/content/res/ThemeResources;->sCookieMiuiSdk:I

    goto :goto_71

    :cond_54
    const-string v5, "/data/app/com.miui.core-1.apk"

    invoke-static {v0, v5}, Lmiui/content/res/AssetManagerUtil;->findCookieForPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_63

    invoke-static {v0, v5}, Lmiui/content/res/AssetManagerUtil;->findCookieForPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v5

    sput v5, Lmiui/content/res/ThemeResources;->sCookieMiuiSdk:I

    goto :goto_71

    :cond_63
    const-string v5, "/data/app/com.miui.core-2.apk"

    invoke-static {v0, v5}, Lmiui/content/res/AssetManagerUtil;->findCookieForPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_71

    invoke-static {v0, v5}, Lmiui/content/res/AssetManagerUtil;->findCookieForPath(Landroid/content/res/AssetManager;Ljava/lang/String;)I

    move-result v5

    sput v5, Lmiui/content/res/ThemeResources;->sCookieMiuiSdk:I

    :cond_71
    :goto_71
    goto :goto_b7

    :cond_72
    const/4 v0, 0x0

    :goto_73
    const/16 v1, 0x64

    if-ge v0, v1, :cond_b7

    sget v1, Lmiui/content/res/ThemeResources;->sCookieFramework:I

    if-ltz v1, :cond_87

    sget v1, Lmiui/content/res/ThemeResources;->sCookieMiuiExtFramework:I

    if-ltz v1, :cond_87

    sget v1, Lmiui/content/res/ThemeResources;->sCookieMiuiFramework:I

    if-ltz v1, :cond_87

    sget v1, Lmiui/content/res/ThemeResources;->sCookieMiuiSdk:I

    if-gez v1, :cond_b7

    :cond_87
    :try_start_87
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-static {v1, v0}, Lmiui/content/res/AssetManagerUtil;->getCookieName(Landroid/content/res/AssetManager;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_98

    sput v0, Lmiui/content/res/ThemeResources;->sCookieFramework:I

    goto :goto_b2

    :cond_98
    invoke-static {v1}, Landroid/miui/ResourcesManager;->isMiuiExtFrameworkPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a1

    sput v0, Lmiui/content/res/ThemeResources;->sCookieMiuiExtFramework:I

    goto :goto_b2

    :cond_a1
    invoke-static {v1}, Landroid/miui/ResourcesManager;->isMiuiSystemSdkPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_aa

    sput v0, Lmiui/content/res/ThemeResources;->sCookieMiuiFramework:I

    goto :goto_b2

    :cond_aa
    invoke-static {v1}, Landroid/miui/ResourcesManager;->isMiuiSdkPath(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b2

    sput v0, Lmiui/content/res/ThemeResources;->sCookieMiuiSdk:I
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_b2} :catch_b3

    :cond_b2
    :goto_b2
    goto :goto_b4

    :catch_b3
    move-exception v1

    :goto_b4
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    :cond_b7
    :goto_b7
    return-void
.end method

.method public static isAppResourceCookie(I)Z
    .registers 2

    sget v0, Lmiui/content/res/ThemeResources;->sCookieFramework:I

    if-eq v0, p0, :cond_c

    invoke-static {p0}, Lmiui/content/res/ThemeResources;->isMiuiResourceCookie(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected static isMiuiResourceCookie(I)Z
    .registers 2

    sget v0, Lmiui/content/res/ThemeResources;->sCookieMiuiSdk:I

    if-eq p0, v0, :cond_f

    sget v0, Lmiui/content/res/ThemeResources;->sCookieMiuiFramework:I

    if-eq p0, v0, :cond_f

    sget v0, Lmiui/content/res/ThemeResources;->sCookieMiuiExtFramework:I

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private loadThemeValues()V
    .registers 5

    invoke-virtual {p0}, Lmiui/content/res/ThemeResources;->getFilterInfos()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_19

    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mLoadThemeValuesCallback:Lmiui/content/res/ThemeResources$LoadThemeConfigHelper;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/content/res/ThemeResources$FilterInfo;

    invoke-virtual {v2, v3}, Lmiui/content/res/ThemeResources$LoadThemeConfigHelper;->newTarget(Lmiui/content/res/ThemeResources$FilterInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_19
    return-void
.end method

.method public static needProvisionTheme()Z
    .registers 2

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "scorpio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Ljava/io/File;

    sget-object v1, Lmiui/content/res/ThemeResources;->DISABLE_PROVISION_THEME:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method


# virtual methods
.method public checkUpdate()J
    .registers 7

    sget-boolean v0, Lmiui/content/res/ThemeResources;->sIsZygote:Z

    if-nez v0, :cond_64

    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v0}, Lmiui/content/res/ThemeZipFile;->checkUpdate()J

    move-result-wide v0

    iget-wide v2, p0, Lmiui/content/res/ThemeResources;->mUpdatedTime:J

    cmp-long v2, v2, v0

    const/4 v3, 0x0

    if-eqz v2, :cond_1b

    iput-wide v0, p0, Lmiui/content/res/ThemeResources;->mUpdatedTime:J

    invoke-direct {p0}, Lmiui/content/res/ThemeResources;->initBasePaths()V

    invoke-direct {p0}, Lmiui/content/res/ThemeResources;->loadThemeValues()V

    iput-boolean v3, p0, Lmiui/content/res/ThemeResources;->mHasInitedDefaultValue:Z

    :cond_1b
    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mWrapped:Lmiui/content/res/ThemeResources;

    if-eqz v2, :cond_2c

    iget-boolean v2, p0, Lmiui/content/res/ThemeResources;->mSupportWrapper:Z

    if-nez v2, :cond_2b

    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v2}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v2

    if-nez v2, :cond_2c

    :cond_2b
    const/4 v3, 0x1

    :cond_2c
    iput-boolean v3, p0, Lmiui/content/res/ThemeResources;->mShouldFallbackDeeper:Z

    if-eqz v3, :cond_64

    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mWrapped:Lmiui/content/res/ThemeResources;

    iget-object v2, v2, Lmiui/content/res/ThemeResources;->mMetaData:Lmiui/content/res/ThemeResources$MetaData;

    iget-object v2, v2, Lmiui/content/res/ThemeResources$MetaData;->mThemePath:Ljava/lang/String;

    const-string v3, "/system/media/theme/provision/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-static {}, Lmiui/content/res/ThemeResources;->needProvisionTheme()Z

    move-result v2

    if-nez v2, :cond_56

    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mWrapped:Lmiui/content/res/ThemeResources;

    iget-object v2, v2, Lmiui/content/res/ThemeResources;->mWrapped:Lmiui/content/res/ThemeResources;

    iput-object v2, p0, Lmiui/content/res/ThemeResources;->mWrapped:Lmiui/content/res/ThemeResources;

    iget-wide v2, p0, Lmiui/content/res/ThemeResources;->mUpdatedTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/content/res/ThemeResources;->mUpdatedTime:J

    :cond_56
    iget-wide v2, p0, Lmiui/content/res/ThemeResources;->mUpdatedTime:J

    iget-object v4, p0, Lmiui/content/res/ThemeResources;->mWrapped:Lmiui/content/res/ThemeResources;

    invoke-virtual {v4}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/content/res/ThemeResources;->mUpdatedTime:J

    :cond_64
    iget-wide v0, p0, Lmiui/content/res/ThemeResources;->mUpdatedTime:J

    return-wide v0
.end method

.method protected getFilterInfos()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmiui/content/res/ThemeResources$FilterInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mFilterInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z
    .registers 3

    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v0}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0, p1, p2}, Lmiui/content/res/ThemeResources;->getThemeFileWithPath(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    invoke-direct {p0, p1, p2, p3}, Lmiui/content/res/ThemeResources;->getThemeFileWithFallback(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected getThemeFileNonFallback(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z
    .registers 3

    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lmiui/content/res/ThemeResources;->getThemeFileWithPath(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getThemeStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .registers 7

    new-instance v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v1

    if-eqz v1, :cond_14

    if-eqz p2, :cond_14

    const/4 v1, 0x0

    iget-wide v2, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outSize:J

    aput-wide v2, p2, v1

    :cond_14
    iget-object v1, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    return-object v1
.end method

.method public getUpdateTime()J
    .registers 3

    iget-wide v0, p0, Lmiui/content/res/ThemeResources;->mUpdatedTime:J

    return-wide v0
.end method

.method public hasThemeFile(Ljava/lang/String;)Z
    .registers 5

    new-instance v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(ILjava/lang/String;Z)V

    iget-object v1, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V
    .registers 8

    iget-boolean v0, p0, Lmiui/content/res/ThemeResources;->mShouldFallbackDeeper:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mWrapped:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1, p2}, Lmiui/content/res/ThemeResources;->mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V

    :cond_9
    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mMetaData:Lmiui/content/res/ThemeResources$MetaData;

    iget-boolean v0, v0, Lmiui/content/res/ThemeResources$MetaData;->mSupportValue:Z

    if-nez v0, :cond_10

    return-void

    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p0}, Lmiui/content/res/ThemeResources;->getFilterInfos()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_16
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3b

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/content/res/ThemeResources$FilterInfo;

    iget-boolean v4, p0, Lmiui/content/res/ThemeResources;->mNightMode:Z

    invoke-virtual {v3, p1, v4}, Lmiui/content/res/ThemeResources$FilterInfo;->match(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_38

    iget-object v4, v3, Lmiui/content/res/ThemeResources$FilterInfo;->mValues:Lmiui/content/res/ThemeValues;

    invoke-virtual {v4}, Lmiui/content/res/ThemeValues;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_38

    iget-object v4, v3, Lmiui/content/res/ThemeResources$FilterInfo;->mValues:Lmiui/content/res/ThemeValues;

    invoke-virtual {p2, v4}, Lmiui/content/res/ThemeValues;->putAll(Lmiui/content/res/ThemeValues;)V

    const/4 v0, 0x1

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_3b
    iget-boolean v2, p0, Lmiui/content/res/ThemeResources;->mHasInitedDefaultValue:Z

    if-nez v2, :cond_47

    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v2}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v2

    if-nez v2, :cond_49

    :cond_47
    if-eqz v0, :cond_53

    :cond_49
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/content/res/ThemeResources;->mHasInitedDefaultValue:Z

    iget-object v2, p0, Lmiui/content/res/ThemeResources;->mResources:Landroid/content/res/MiuiResources;

    iget-object v3, p0, Lmiui/content/res/ThemeResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Lmiui/content/res/ThemeValues;->mergeNewDefaultValueIfNeed(Landroid/content/res/MiuiResources;Ljava/lang/String;)V

    :cond_53
    return-void
.end method

.method public setNightModeEnable(Z)V
    .registers 3

    iput-boolean p1, p0, Lmiui/content/res/ThemeResources;->mNightMode:Z

    iget-boolean v0, p0, Lmiui/content/res/ThemeResources;->mShouldFallbackDeeper:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiui/content/res/ThemeResources;->mWrapped:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1}, Lmiui/content/res/ThemeResources;->setNightModeEnable(Z)V

    :cond_b
    return-void
.end method
