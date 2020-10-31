.class public Landroid/graphics/MiuiTypeface;
.super Ljava/lang/Object;
.source "MiuiTypeface.java"


# static fields
.field private static final DROID_SANS:Ljava/lang/String; = "/data/system/theme/fonts/Roboto-Regular.ttf"

.field private static final DROID_SANS_BOLD:Ljava/lang/String; = "/data/system/theme/fonts/Roboto-Bold.ttf"

.field private static final DROID_SANS_FALLBACK:Ljava/lang/String; = "/data/system/theme/fonts/DroidSansFallback.ttf"

.field private static DROID_SANS_FONTS:[Ljava/lang/String; = null

.field private static DROID_SANS_FONTS_BOLD:[Ljava/lang/String; = null

.field public static FLIPFONT:Landroid/graphics/Typeface; = null

.field public static FLIPFONT_BOLD:Landroid/graphics/Typeface; = null

.field public static FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface; = null

.field public static FLIPFONT_ITALIC:Landroid/graphics/Typeface; = null

.field private static final FONTS_FOLDER:Ljava/lang/String; = "/data/system/theme/fonts/"

.field public static final MONOSPACE_INDEX:I = 0x3

.field public static final SANS_INDEX:I = 0x1

.field public static final SERIF_INDEX:I = 0x2

.field private static mLastModified:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "/data/system/theme/fonts/DroidSansFallback.ttf"

    const-string v1, "/data/system/theme/fonts/Roboto-Regular.ttf"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/MiuiTypeface;->DROID_SANS_FONTS:[Ljava/lang/String;

    const-string v0, "/data/system/theme/fonts/Roboto-Bold.ttf"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/MiuiTypeface;->DROID_SANS_FONTS_BOLD:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/MiuiTypeface;->FLIPFONT:Landroid/graphics/Typeface;

    sput-object v0, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    sput-object v0, Landroid/graphics/MiuiTypeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    sput-object v0, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChangedTypeface(Landroid/graphics/Typeface;II)Landroid/graphics/Typeface;
    .registers 4

    invoke-static {p1, p2}, Landroid/graphics/MiuiTypeface;->getTypefaceFlipFont(II)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    return-object p0
.end method

.method public static getDefaultTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .registers 3

    if-nez p0, :cond_8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/MiuiTypeface;->getTypefaceFlipFont(II)Landroid/graphics/Typeface;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method private static getFlipFontPath(II)Ljava/lang/String;
    .registers 8

    const-string v0, ""

    const/4 v1, 0x1

    if-eq p0, v1, :cond_6

    return-object v0

    :cond_6
    const/4 v2, 0x0

    if-nez p1, :cond_c

    sget-object v2, Landroid/graphics/MiuiTypeface;->DROID_SANS_FONTS:[Ljava/lang/String;

    goto :goto_10

    :cond_c
    if-ne p1, v1, :cond_10

    sget-object v2, Landroid/graphics/MiuiTypeface;->DROID_SANS_FONTS_BOLD:[Ljava/lang/String;

    :cond_10
    :goto_10
    array-length v1, v2

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v1, :cond_25

    aget-object v4, v2, v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_22

    return-object v4

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_25
    return-object v0
.end method

.method private static getTypefaceFlipFont(II)Landroid/graphics/Typeface;
    .registers 4

    const-string v0, "is_patchrom"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1a

    if-ltz p1, :cond_1a

    const/4 v0, 0x3

    if-le p1, v0, :cond_12

    goto :goto_1a

    :cond_12
    invoke-static {}, Landroid/graphics/MiuiTypeface;->setTypefaceFlipFont()V

    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p1

    return-object v0

    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method private static setTypefaceFlipFont()V
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/MiuiTypeface;->getFlipFontPath(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v0}, Landroid/graphics/MiuiTypeface;->getFlipFontPath(II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eqz v5, :cond_2f

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object v5, Landroid/graphics/MiuiTypeface;->FLIPFONT:Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sput-object v5, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v8

    sput-object v8, Landroid/graphics/MiuiTypeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    sput-object v5, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    goto :goto_65

    :cond_2f
    sget-wide v8, Landroid/graphics/MiuiTypeface;->mLastModified:J

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    cmp-long v5, v8, v10

    if-eqz v5, :cond_65

    :try_start_39
    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    sput-object v5, Landroid/graphics/MiuiTypeface;->FLIPFONT:Landroid/graphics/Typeface;

    invoke-static {v3}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    sput-object v5, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;
    :try_end_45
    .catch Ljava/lang/RuntimeException; {:try_start_39 .. :try_end_45} :catch_46

    goto :goto_4f

    :catch_46
    move-exception v5

    sget-object v8, Landroid/graphics/MiuiTypeface;->FLIPFONT:Landroid/graphics/Typeface;

    invoke-static {v8, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v8

    sput-object v8, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    :goto_4f
    sget-object v5, Landroid/graphics/MiuiTypeface;->FLIPFONT:Landroid/graphics/Typeface;

    invoke-static {v5, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    sput-object v5, Landroid/graphics/MiuiTypeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    sput-object v5, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sput-wide v8, Landroid/graphics/MiuiTypeface;->mLastModified:J

    :cond_65
    :goto_65
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    sget-object v8, Landroid/graphics/MiuiTypeface;->FLIPFONT:Landroid/graphics/Typeface;

    aput-object v8, v5, v1

    sget-object v1, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    aput-object v5, v1, v0

    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    sget-object v1, Landroid/graphics/MiuiTypeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    aput-object v1, v0, v7

    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    sget-object v1, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    aput-object v1, v0, v6

    return-void
.end method
