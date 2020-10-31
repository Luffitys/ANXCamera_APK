.class public final Lmiui/content/res/ThemeZipFile;
.super Ljava/lang/Object;
.source "ThemeZipFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/res/ThemeZipFile$MyZipFile;
    }
.end annotation


# static fields
.field static DBG:Z = false

.field private static final FUZZY_SEARCH_ICON_SUFFIX:Ljava/lang/String; = "#*.png"

.field static TAG:Ljava/lang/String; = null

.field public static final THEME_FALLBACK_FILE:Ljava/lang/String; = "theme_fallback.xml"

.field public static final THEME_VALUE_FILE:Ljava/lang/String; = "theme_values.xml"

.field public static final THEME_VALUE_FILE_NAME:Ljava/lang/String; = "theme_values"

.field public static final THEME_VALUE_FILE_SUFFIX:Ljava/lang/String; = ".xml"

.field private static final sDensity:I

.field private static final sFallbackDensities:[I

.field protected static final sThemeZipFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/content/res/ThemeZipFile;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mLastModifiedTime:J

.field private mMetaData:Lmiui/content/res/ThemeResources$MetaData;

.field private mPath:Ljava/lang/String;

.field private mUpatedTime:J

.field private mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lmiui/content/res/ThemeResources;->DBG:Z

    sput-boolean v0, Lmiui/content/res/ThemeZipFile;->DBG:Z

    const-string v0, "ThemeZipFile"

    sput-object v0, Lmiui/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    sget v0, Landroid/util/MiuiDisplayMetrics;->DENSITY_DEVICE:I

    sput v0, Lmiui/content/res/ThemeZipFile;->sDensity:I

    invoke-static {v0}, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->getFallbackOrder(I)[I

    move-result-object v0

    sput-object v0, Lmiui/content/res/ThemeZipFile;->sFallbackDensities:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/content/res/ThemeZipFile;->mLastModifiedTime:J

    sget-boolean v0, Lmiui/content/res/ThemeZipFile;->DBG:Z

    if-eqz v0, :cond_21

    sget-object v0, Lmiui/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create ThemeZipFile for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    iput-object p1, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    iput-object p2, p0, Lmiui/content/res/ThemeZipFile;->mMetaData:Lmiui/content/res/ThemeResources$MetaData;

    return-void
.end method

.method private clean()V
    .registers 4

    sget-boolean v0, Lmiui/content/res/ThemeZipFile;->DBG:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lmiui/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clean for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    if-eqz v0, :cond_28

    :try_start_20
    invoke-virtual {v0}, Lmiui/content/res/ThemeZipFile$MyZipFile;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_25

    :catch_24
    move-exception v0

    :goto_25
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    :cond_28
    return-void
.end method

.method private getThemeFileInner(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .registers 15

    invoke-direct {p0, p1, p2}, Lmiui/content/res/ThemeZipFile;->getZipInputStream(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xa0

    if-eqz v0, :cond_13

    iget v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    if-nez v0, :cond_e

    goto :goto_10

    :cond_e
    iget v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    :goto_10
    iput v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outDensity:I

    return v1

    :cond_13
    const-string v0, "/drawable"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_21

    const-string v0, "/raw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    :cond_21
    const/4 v4, 0x0

    if-gtz v3, :cond_25

    return v4

    :cond_25
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    invoke-direct {p0, p2, v3}, Lmiui/content/res/ThemeZipFile;->regularDpiFallbackPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    if-eq p2, v5, :cond_41

    move-object p2, v5

    invoke-direct {p0, p1, p2}, Lmiui/content/res/ThemeZipFile;->getZipInputStream(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_41

    iget v4, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    if-nez v4, :cond_3c

    goto :goto_3e

    :cond_3c
    iget v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    :goto_3e
    iput v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outDensity:I

    return v1

    :cond_41
    const/16 v1, 0x2f

    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gez v1, :cond_4a

    return v4

    :cond_4a
    invoke-static {}, Lmiui/content/res/FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/FixedSizeStringBuffer;

    move-result-object v6

    invoke-virtual {v6, p2, v3}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;I)V

    const/4 v7, 0x0

    sget-object v8, Lmiui/content/res/ThemeZipFile;->sFallbackDensities:[I

    array-length v9, v8

    :goto_55
    if-ge v4, v9, :cond_84

    aget v10, v8, v4

    iget v11, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    if-ne v10, v11, :cond_5e

    goto :goto_81

    :cond_5e
    invoke-virtual {v6, v3}, Lmiui/content/res/FixedSizeStringBuffer;->setLength(I)V

    invoke-static {v10}, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v6, p2, v1, v11}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;II)V

    invoke-virtual {v6}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, p1, v11}, Lmiui/content/res/ThemeZipFile;->getZipInputStream(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_81

    if-nez v10, :cond_7c

    goto :goto_7d

    :cond_7c
    move v2, v10

    :goto_7d
    iput v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outDensity:I

    const/4 v7, 0x1

    goto :goto_84

    :cond_81
    :goto_81
    add-int/lit8 v4, v4, 0x1

    goto :goto_55

    :cond_84
    :goto_84
    invoke-static {v6}, Lmiui/content/res/FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V

    return v7
.end method

.method protected static getThemeZipFile(Lmiui/content/res/ThemeResources$MetaData;Ljava/lang/String;)Lmiui/content/res/ThemeZipFile;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmiui/content/res/ThemeResources$MetaData;->mThemePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmiui/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/content/res/ThemeZipFile;

    goto :goto_24

    :cond_23
    move-object v3, v2

    :goto_24
    if-nez v3, :cond_53

    sget-object v4, Lmiui/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    monitor-enter v4

    :try_start_29
    sget-object v5, Lmiui/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    move-object v1, v5

    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/content/res/ThemeZipFile;

    :cond_3a
    move-object v3, v2

    if-nez v3, :cond_4e

    new-instance v2, Lmiui/content/res/ThemeZipFile;

    invoke-direct {v2, v0, p0}, Lmiui/content/res/ThemeZipFile;-><init>(Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    move-object v3, v2

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v1, v2

    sget-object v2, Lmiui/content/res/ThemeZipFile;->sThemeZipFiles:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    monitor-exit v4

    goto :goto_53

    :catchall_50
    move-exception v2

    monitor-exit v4
    :try_end_52
    .catchall {:try_start_29 .. :try_end_52} :catchall_50

    throw v2

    :cond_53
    :goto_53
    return-object v3
.end method

.method private getZipInputStream(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .registers 10

    const-string v0, "#*.png"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    nop

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-virtual {v3}, Lmiui/content/res/ThemeZipFile$MyZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_31

    goto :goto_1e

    :cond_31
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    move-object v1, v4

    goto :goto_3e

    :cond_3d
    goto :goto_1e

    :cond_3e
    :goto_3e
    goto :goto_46

    :cond_3f
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-virtual {v0, p2}, Lmiui/content/res/ThemeZipFile$MyZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    move-object v1, v0

    :goto_46
    if-eqz v1, :cond_69

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v3

    iput-wide v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outSize:J

    iget-boolean v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inRequestStream:Z

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-virtual {v0, v1}, Lmiui/content/res/ThemeZipFile$MyZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    iget-object v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_5f

    return v2

    :cond_5f
    iget-wide v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outSize:J
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_61} :catch_6a

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_68

    const/4 v2, 0x1

    :cond_68
    return v2

    :cond_69
    goto :goto_6e

    :catch_6a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6e
    return v2
.end method

.method private loadThemeConfigInner(Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;Ljava/lang/String;Lmiui/content/res/ThemeResources$ConfigType;)V
    .registers 5

    invoke-virtual {p0, p2}, Lmiui/content/res/ThemeZipFile;->getZipInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {p1, v0, p3}, Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;->load(Ljava/io/InputStream;Lmiui/content/res/ThemeResources$ConfigType;)V

    :cond_9
    return-void
.end method

.method private regularDpiFallbackPath(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9

    const/16 v0, 0x2f

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ltz v0, :cond_4b

    add-int/lit8 v1, p2, 0x1

    if-ne v0, v1, :cond_d

    goto :goto_4b

    :cond_d
    const-string v1, ""

    const-string v2, "dpi"

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_32

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    :goto_1c
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_29

    if-le v3, p2, :cond_29

    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    :cond_29
    if-ne v3, p2, :cond_2e

    if-ne v2, v0, :cond_2e

    return-object p1

    :cond_2e
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_32
    invoke-static {}, Lmiui/content/res/FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/FixedSizeStringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;I)V

    invoke-virtual {v2, v1}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, p1, v0, v4}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;II)V

    invoke-virtual {v2}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lmiui/content/res/FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V

    return-object v4

    :cond_4b
    :goto_4b
    return-object p1
.end method

.method private trimVersionPart(ILjava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ge p1, v0, :cond_4b

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_4b

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x76

    if-ne v0, v1, :cond_4b

    add-int/lit8 v0, p1, 0x2

    :goto_1c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_32

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_32

    const/16 v2, 0x39

    if-le v1, v2, :cond_2f

    goto :goto_32

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_32
    :goto_32
    add-int/lit8 v1, p1, 0x2

    if-le v0, v1, :cond_4b

    invoke-static {}, Lmiui/content/res/FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/FixedSizeStringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2, p1}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, p2, v0, v2}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;II)V

    invoke-virtual {v1}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Lmiui/content/res/FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V

    :cond_4b
    return-object p2
.end method


# virtual methods
.method checkUpdate()J
    .registers 7

    sget-boolean v0, Lmiui/content/res/ThemeZipFile;->DBG:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lmiui/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkUpdate for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    iget-wide v3, p0, Lmiui/content/res/ThemeZipFile;->mLastModifiedTime:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_7a

    iget-object v3, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-static {v3}, Lmiui/content/res/ThemeCompatibility;->isCompatibleResource(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7a

    monitor-enter p0

    :try_start_36
    iget-wide v3, p0, Lmiui/content/res/ThemeZipFile;->mLastModifiedTime:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_75

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lmiui/content/res/ThemeZipFile;->mUpatedTime:J

    invoke-direct {p0}, Lmiui/content/res/ThemeZipFile;->clean()V

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_73

    sget-boolean v3, Lmiui/content/res/ThemeZipFile;->DBG:Z

    if-eqz v3, :cond_67

    sget-object v3, Lmiui/content/res/ThemeZipFile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "openZipFile for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lmiui/content/res/ThemeZipFile;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_36 .. :try_end_67} :catchall_77

    :cond_67
    :try_start_67
    new-instance v3, Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-direct {v3, p0, v0}, Lmiui/content/res/ThemeZipFile$MyZipFile;-><init>(Lmiui/content/res/ThemeZipFile;Ljava/io/File;)V

    iput-object v3, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6e} :catch_6f
    .catchall {:try_start_67 .. :try_end_6e} :catchall_77

    goto :goto_73

    :catch_6f
    move-exception v3

    :try_start_70
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_73
    :goto_73
    iput-wide v1, p0, Lmiui/content/res/ThemeZipFile;->mLastModifiedTime:J

    :cond_75
    monitor-exit p0

    goto :goto_7a

    :catchall_77
    move-exception v3

    monitor-exit p0
    :try_end_79
    .catchall {:try_start_70 .. :try_end_79} :catchall_77

    throw v3

    :cond_7a
    :goto_7a
    iget-wide v3, p0, Lmiui/content/res/ThemeZipFile;->mUpatedTime:J

    return-wide v3
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0}, Lmiui/content/res/ThemeZipFile;->clean()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z
    .registers 7

    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mMetaData:Lmiui/content/res/ThemeResources$MetaData;

    iget-boolean v0, v0, Lmiui/content/res/ThemeResources$MetaData;->mSupportFile:Z

    if-eqz v0, :cond_6f

    invoke-virtual {p0}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_6f

    :cond_d
    invoke-static {}, Lmiui/content/res/FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/FixedSizeStringBuffer;

    move-result-object v0

    iget-object v1, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/internal/content/res/ThemeToolUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    :cond_1e
    iget-object v1, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lmiui/content/res/ThemeZipFile;->getThemeFileInner(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "png"

    if-nez v2, :cond_4c

    const-string v4, ".9.png"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    const-string v4, "9.png"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v0, v4}, Lmiui/content/res/FixedSizeStringBuffer;->move(I)V

    invoke-virtual {v0, v3}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lmiui/content/res/ThemeZipFile;->getThemeFileInner(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v2

    :cond_4c
    if-nez v2, :cond_6b

    const-string v4, ".webp"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6b

    const-string v4, "webp"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    neg-int v4, v4

    invoke-virtual {v0, v4}, Lmiui/content/res/FixedSizeStringBuffer;->move(I)V

    invoke-virtual {v0, v3}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lmiui/content/res/ThemeZipFile;->getThemeFileInner(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v2

    :cond_6b
    invoke-static {v0}, Lmiui/content/res/FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V

    return v2

    :cond_6f
    :goto_6f
    const/4 v0, 0x0

    return v0
.end method

.method getZipInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5

    invoke-virtual {p0}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-virtual {v0, p1}, Lmiui/content/res/ThemeZipFile$MyZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_1b

    :try_start_10
    iget-object v2, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    invoke-virtual {v2, v0}, Lmiui/content/res/ThemeZipFile$MyZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_16} :catch_17

    return-object v1

    :catch_17
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_1b
    return-object v1
.end method

.method public isValid()Z
    .registers 2

    iget-object v0, p0, Lmiui/content/res/ThemeZipFile;->mZipFile:Lmiui/content/res/ThemeZipFile$MyZipFile;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method loadThemeConfig(Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p0}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lmiui/content/res/FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/FixedSizeStringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;)V

    const-string v1, "theme_values"

    invoke-virtual {v0, v1}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lmiui/content/res/ThemeResources$ConfigType;->THEME_VALUES:Lmiui/content/res/ThemeResources$ConfigType;

    invoke-direct {p0, p1, v2, v3}, Lmiui/content/res/ThemeZipFile;->loadThemeConfigInner(Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;Ljava/lang/String;Lmiui/content/res/ThemeResources$ConfigType;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v0, v2}, Lmiui/content/res/FixedSizeStringBuffer;->move(I)V

    sget v2, Lmiui/content/res/ThemeZipFile;->sDensity:I

    invoke-static {v2}, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmiui/content/res/ThemeResources$ConfigType;->THEME_VALUES:Lmiui/content/res/ThemeResources$ConfigType;

    invoke-direct {p0, p1, v1, v2}, Lmiui/content/res/ThemeZipFile;->loadThemeConfigInner(Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;Ljava/lang/String;Lmiui/content/res/ThemeResources$ConfigType;)V

    invoke-virtual {v0, p2}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;)V

    const-string v1, "theme_fallback.xml"

    invoke-virtual {v0, v1}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmiui/content/res/ThemeResources$ConfigType;->THEME_FALLBACK:Lmiui/content/res/ThemeResources$ConfigType;

    invoke-direct {p0, p1, v1, v2}, Lmiui/content/res/ThemeZipFile;->loadThemeConfigInner(Lmiui/content/res/ThemeResources$LoadThemeConfigCallback;Ljava/lang/String;Lmiui/content/res/ThemeResources$ConfigType;)V

    invoke-static {v0}, Lmiui/content/res/FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V

    return-void
.end method
