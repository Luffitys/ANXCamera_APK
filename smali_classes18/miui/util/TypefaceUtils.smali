.class public Lmiui/util/TypefaceUtils;
.super Ljava/lang/Object;
.source "TypefaceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/TypefaceUtils$Holder;
    }
.end annotation


# static fields
.field private static final BOLD:Ljava/lang/String; = "bold"

.field private static final BOLD_WEIGHT_DELTA:I = 0x12c

.field private static final DEFAULT_FAMILY:Ljava/lang/String; = "sans-serif"

.field private static final DEFAULT_IDX:I = 0x4

.field private static final DEFAULT_SCALE:I = 0x32

.field private static final DEMIBOLD:Ljava/lang/String; = "demibold"

.field private static final EXTRALIGHT:Ljava/lang/String; = "extralight"

.field private static final FONTS_FOLDER:Ljava/lang/String; = "/data/system/theme/fonts/"

.field private static final FONT_NAME_DEFAULT:[Ljava/lang/String;

.field private static final FONT_NAME_MIPRO_MEDIUM:[Ljava/lang/String;

.field private static final KEY_FONT_WEIGHT:Ljava/lang/String; = "key_miui_font_weight_scale"

.field private static final KEY_USE_MIUI_FONT:Ljava/lang/String; = "use_miui_font"

.field private static final MIPRO_FAMILY:Ljava/lang/String; = "mipro"

.field private static final MITYPE_FAMILY:Ljava/lang/String; = "mitype"

.field private static final MITYPE_MONO_FAMILY:Ljava/lang/String; = "mitype-mono"

.field private static final MIUI_FAMILY:Ljava/lang/String; = "miui"

.field private static final NORMAL:Ljava/lang/String; = "normal"

.field private static final POSFIX_BLACK:Ljava/lang/String; = "-black"

.field private static final POSFIX_LIGHT:Ljava/lang/String; = "-light"

.field private static final POSFIX_MEDIUM:Ljava/lang/String; = "-medium"

.field private static final POSFIX_THIN:Ljava/lang/String; = "-thin"

.field private static final PREFIX_THEME:Ljava/lang/String; = "theme-"

.field private static final ROBOTO_BLACK:Ljava/lang/String; = "Roboto-Black.ttf"

.field private static final ROBOTO_BOLD:Ljava/lang/String; = "Roboto-Bold.ttf"

.field private static final ROBOTO_ITALIC:Ljava/lang/String; = "Roboto-Italic.ttf"

.field private static final ROBOTO_ITALIC_BLACK:Ljava/lang/String; = "Roboto-BlackItalic.ttf"

.field private static final ROBOTO_ITALIC_BOLD:Ljava/lang/String; = "Roboto-BoldItalic.ttf"

.field private static final ROBOTO_ITALIC_LIGHT:Ljava/lang/String; = "Roboto-LightItalic.ttf"

.field private static final ROBOTO_ITALIC_MEDIUM:Ljava/lang/String; = "Roboto-MediumItalic.ttf"

.field private static final ROBOTO_ITALIC_THIN:Ljava/lang/String; = "Roboto-ThinItalic.ttf"

.field private static final ROBOTO_LIGHT:Ljava/lang/String; = "Roboto-Light.ttf"

.field private static final ROBOTO_MEDIUM:Ljava/lang/String; = "Roboto-Medium.ttf"

.field private static final ROBOTO_REGULAR:Ljava/lang/String; = "Roboto-Regular.ttf"

.field private static final ROBOTO_THIN:Ljava/lang/String; = "Roboto-Thin.ttf"

.field private static final SEMIBOLD:Ljava/lang/String; = "semibold"

.field private static final TAG:Ljava/lang/String; = "TypefaceUtils"

.field private static final USING_VAR_FONT:Z

.field private static final WEIGHT_BOLD:I = 0x2bc

.field private static final WEIGHT_DEMIBOLD:I = 0x226

.field private static final WEIGHT_EXTRALIGHT:I = 0xc8

.field private static final WEIGHT_HEAVY:I = 0x384

.field private static final WEIGHT_LIGHT:I = 0x12c

.field private static final WEIGHT_MEDIUM:I = 0x1f4

.field private static final WEIGHT_NORMAL:I = 0x15e

.field private static final WEIGHT_REGULAR:I = 0x190

.field private static final WEIGHT_SEMIBOLD:I = 0x258

.field private static final WEIGHT_THIN:I = 0x64

.field private static final sFamilyNameField:Ljava/lang/reflect/Field;

.field private static final sUsingMiuiFontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "sans-serif"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/TypefaceUtils;->FONT_NAME_DEFAULT:[Ljava/lang/String;

    const-string v0, "mipro-medium"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/TypefaceUtils;->FONT_NAME_MIPRO_MEDIUM:[Ljava/lang/String;

    invoke-static {}, Lmiui/util/TypefaceUtils;->getFamilyNameField()Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lmiui/util/TypefaceUtils;->sFamilyNameField:Ljava/lang/reflect/Field;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lmiui/util/TypefaceUtils;->sUsingMiuiFontMap:Ljava/util/Map;

    sget-object v0, Lmiui/util/TypefaceUtils;->sFamilyNameField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_30

    new-instance v0, Ljava/io/File;

    const-string v1, "system/fonts/MiLanProVF.ttf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    sput-boolean v0, Lmiui/util/TypefaceUtils;->USING_VAR_FONT:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    sget-boolean v0, Lmiui/util/TypefaceUtils;->USING_VAR_FONT:Z

    return v0
.end method

.method static synthetic access$100()Z
    .registers 1

    invoke-static {}, Lmiui/util/TypefaceUtils;->isMiuiOptimizeEnabled()Z

    move-result v0

    return v0
.end method

.method private static checkUsingThemeFont()Z
    .registers 4

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/theme/fonts/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    array-length v3, v1

    if-lez v3, :cond_18

    const/4 v2, 0x1

    :cond_18
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lmiui/util/TypefaceUtils$Holder;->sIsUsingThemeFont:Ljava/lang/Boolean;

    goto :goto_25

    :cond_1f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lmiui/util/TypefaceUtils$Holder;->sIsUsingThemeFont:Ljava/lang/Boolean;

    :goto_25
    sget-object v1, Lmiui/util/TypefaceUtils$Holder;->sIsUsingThemeFont:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private static clearThemeFont()V
    .registers 1

    # getter for: Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_CACHE:Landroid/util/SparseArray;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$200()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    # getter for: Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_ITALIC_CACHE:Landroid/util/SparseArray;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$700()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    # getter for: Lmiui/util/TypefaceUtils$Holder;->THEME_MIUI_FONT_CACHE:Landroid/util/SparseArray;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$1100()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    # getter for: Lmiui/util/TypefaceUtils$Holder;->THEME_MIUIEX_FONT_CACHE:Landroid/util/SparseArray;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$1500()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private static convertFontNames([Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    if-eqz p0, :cond_42

    const/4 v0, 0x0

    :goto_3
    # getter for: Lmiui/util/TypefaceUtils$Holder;->DEFAULT_NAME_MAP:[Ljava/lang/String;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$1900()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_42

    const/4 v1, 0x0

    :goto_b
    array-length v2, p0

    if-ge v1, v2, :cond_3f

    aget-object v2, p0, v1

    # getter for: Lmiui/util/TypefaceUtils$Holder;->DEFAULT_NAME_MAP:[Ljava/lang/String;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$1900()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mipro-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lmiui/util/TypefaceUtils$Holder;->DEFAULT_NAME_MAP:[Ljava/lang/String;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$1900()[Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    return-object v2

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_3f
    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    :cond_42
    # getter for: Lmiui/util/TypefaceUtils$Holder;->MIUI_NAMES:[Ljava/lang/String;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$1700()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static convertMiuiFontToSysFont(Landroid/graphics/Typeface;[Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 4

    invoke-static {p1}, Lmiui/util/TypefaceUtils;->convertToSysFontName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method private static convertToSysFontName([Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_46

    aget-object v1, p0, v0

    const-string v2, "extralight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "sans-serif-thin"

    return-object v1

    :cond_11
    aget-object v1, p0, v0

    const-string v2, "normal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string v1, "sans-serif-light"

    return-object v1

    :cond_1e
    aget-object v1, p0, v0

    const-string v2, "demibold"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_43

    aget-object v1, p0, v0

    const-string v2, "semibold"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33

    goto :goto_43

    :cond_33
    aget-object v1, p0, v0

    const-string v2, "bold"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_40

    const-string v1, "sans-serif-black"

    return-object v1

    :cond_40
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_43
    :goto_43
    const-string v1, "sans-serif-medium"

    return-object v1

    :cond_46
    const-string v0, "sans-serif"

    const/4 v1, 0x1

    :goto_49
    # getter for: Lmiui/util/TypefaceUtils$Holder;->DEFAULT_NAME_MAP:[Ljava/lang/String;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$1900()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_82

    const/4 v2, 0x0

    :goto_51
    array-length v3, p0

    if-ge v2, v3, :cond_7f

    aget-object v3, p0, v2

    # getter for: Lmiui/util/TypefaceUtils$Holder;->DEFAULT_NAME_MAP:[Ljava/lang/String;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$1900()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sans-serif-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lmiui/util/TypefaceUtils$Holder;->DEFAULT_NAME_MAP:[Ljava/lang/String;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$1900()[Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7f

    :cond_7c
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    :cond_7f
    :goto_7f
    add-int/lit8 v1, v1, 0x2

    goto :goto_49

    :cond_82
    return-object v0
.end method

.method private static createAndCacheFont(Ljava/lang/String;I[Ljava/lang/String;Landroid/util/SparseArray;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_2e

    new-instance v0, Landroid/graphics/Typeface$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/theme/fonts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/graphics/Typeface$Builder;->setWeight(I)Landroid/graphics/Typeface$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/graphics/Typeface$Builder;->setItalic(Z)Landroid/graphics/Typeface$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {v0, p2}, Lmiui/util/TypefaceUtils;->setFontNames(Landroid/graphics/Typeface;[Ljava/lang/String;)V

    invoke-virtual {p3, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2e
    return-void
.end method

.method private static doReplaceWithVarFont(Landroid/content/Context;Landroid/graphics/Typeface;FZ)Landroid/graphics/Typeface;
    .registers 14

    invoke-static {p1, p3}, Lmiui/util/TypefaceUtils;->getFontNamesByTypeface(Landroid/graphics/Typeface;Z)[Ljava/lang/String;

    move-result-object v9

    if-nez p0, :cond_8

    move v2, p2

    goto :goto_15

    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v0, p2, v0

    move v2, v0

    :goto_15
    nop

    # getter for: Lmiui/util/TypefaceUtils$Holder;->MIUI_NAMES:[Ljava/lang/String;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$1700()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lmiui/util/TypefaceUtils;->isNamesOf([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v3, 0x0

    # getter for: Lmiui/util/TypefaceUtils$Holder;->MIUI_VAR_FONT:Landroid/graphics/Typeface;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$1600()Landroid/graphics/Typeface;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, v9

    invoke-static/range {v0 .. v5}, Lmiui/util/TypefaceUtils;->getVarFont(Landroid/content/Context;Landroid/graphics/Typeface;FZLandroid/graphics/Typeface;[Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_2d
    const-string v0, "mitype-mono"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lmiui/util/TypefaceUtils;->isNamesOf([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    const/4 v6, 0x1

    # getter for: Lmiui/util/TypefaceUtils$Holder;->MITYPE_MONO_VAR_FONT:Landroid/graphics/Typeface;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$2300()Landroid/graphics/Typeface;

    move-result-object v7

    move-object v3, p0

    move-object v4, p1

    move v5, v2

    move-object v8, v9

    invoke-static/range {v3 .. v8}, Lmiui/util/TypefaceUtils;->getVarFont(Landroid/content/Context;Landroid/graphics/Typeface;FZLandroid/graphics/Typeface;[Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_47
    const-string v0, "mitype"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lmiui/util/TypefaceUtils;->isNamesOf([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_61

    const/4 v6, 0x1

    # getter for: Lmiui/util/TypefaceUtils$Holder;->MITYPE_VAR_FONT:Landroid/graphics/Typeface;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$2400()Landroid/graphics/Typeface;

    move-result-object v7

    move-object v3, p0

    move-object v4, p1

    move v5, v2

    move-object v8, v9

    invoke-static/range {v3 .. v8}, Lmiui/util/TypefaceUtils;->getVarFont(Landroid/content/Context;Landroid/graphics/Typeface;FZLandroid/graphics/Typeface;[Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_61
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getBoldFontNames([Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lmiui/util/TypefaceUtils;->getFontNameIdx([Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    # getter for: Lmiui/util/TypefaceUtils$Holder;->VF_NAME_ARRAY:[Ljava/lang/String;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$2100()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_14

    # getter for: Lmiui/util/TypefaceUtils$Holder;->MIUI_VF_NAME:[[Ljava/lang/String;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$2200()[[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v0

    return-object v1

    :cond_14
    return-object p0
.end method

.method private static getFamilyNameField()Ljava/lang/reflect/Field;
    .registers 3

    :try_start_0
    const-class v0, Landroid/graphics/Typeface;

    const-string v1, "familyName"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    move-exception v0

    const-string v1, "TypefaceUtils"

    const-string v2, "Typeface has no familyName field"

    invoke-static {v1, v2}, Lmiui/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method private static getFontIndex([Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7

    const/4 v0, -0x1

    if-eqz p0, :cond_21

    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_21

    :cond_7
    const/4 v1, 0x0

    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_20

    const/4 v2, 0x0

    :goto_c
    array-length v3, p0

    if-ge v2, v3, :cond_1d

    aget-object v3, p0, v2

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    return v1

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_20
    return v0

    :cond_21
    :goto_21
    return v0
.end method

.method private static getFontNameIdx([Ljava/lang/String;)I
    .registers 3

    const-string v0, "miui"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/util/TypefaceUtils;->isNamesOf([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    # getter for: Lmiui/util/TypefaceUtils$Holder;->MIUI_NAME_ARRAY:[Ljava/lang/String;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$2600()[Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_11
    # getter for: Lmiui/util/TypefaceUtils$Holder;->VF_NAME_ARRAY:[Ljava/lang/String;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$2100()[Ljava/lang/String;

    move-result-object v1

    :goto_15
    invoke-static {p0, v1}, Lmiui/util/TypefaceUtils;->getNameIndex([Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static getFontNames(Landroid/graphics/Typeface;)[Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lmiui/util/TypefaceUtils;->sFamilyNameField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_19

    if-eqz p0, :cond_19

    :try_start_9
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_11

    move-object v0, v1

    goto :goto_19

    :catch_11
    move-exception v1

    const-string v2, "TypefaceUtils"

    const-string v3, "get familyName failed"

    invoke-static {v2, v3, v1}, Lmiui/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_19
    :goto_19
    return-object v0
.end method

.method private static getFontNamesByTypeface(Landroid/graphics/Typeface;Z)[Ljava/lang/String;
    .registers 5

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    if-ne p0, v0, :cond_7

    sget-object v0, Lmiui/util/TypefaceUtils;->FONT_NAME_MIPRO_MEDIUM:[Ljava/lang/String;

    goto :goto_2d

    :cond_7
    invoke-static {p0}, Lmiui/util/TypefaceUtils;->getInitFontNames(Landroid/graphics/Typeface;)[Ljava/lang/String;

    move-result-object v0

    # getter for: Lmiui/util/TypefaceUtils$Holder;->DEFAULT_FONT_NAMES:[Ljava/lang/String;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$300()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/util/TypefaceUtils;->getFontIndex([Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_19

    invoke-static {v0}, Lmiui/util/TypefaceUtils;->convertFontNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_19
    if-eqz p1, :cond_2d

    const-string v1, "miui"

    const-string v2, "mipro"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/util/TypefaceUtils;->isNamesOf([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-static {v0}, Lmiui/util/TypefaceUtils;->getBoldFontNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_2d
    :goto_2d
    return-object v0
.end method

.method private static getFontWeight(Landroid/graphics/Typeface;[Ljava/lang/String;)I
    .registers 4

    if-nez p0, :cond_5

    const/16 v0, 0x190

    return v0

    :cond_5
    invoke-static {p1}, Lmiui/util/TypefaceUtils;->getFontNameIdx([Ljava/lang/String;)I

    move-result v0

    # getter for: Lmiui/util/TypefaceUtils$Holder;->WEIGHT_KEYS:[I
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$2500()[I

    move-result-object v1

    aget v1, v1, v0

    return v1
.end method

.method private static getInitFontNames(Landroid/graphics/Typeface;)[Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_c

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-ne p0, v0, :cond_7

    goto :goto_c

    :cond_7
    invoke-static {p0}, Lmiui/util/TypefaceUtils;->getFontNames(Landroid/graphics/Typeface;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c
    :goto_c
    # getter for: Lmiui/util/TypefaceUtils$Holder;->MIUI_NAMES:[Ljava/lang/String;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$1700()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getNameIndex([Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_19

    const/4 v1, 0x0

    :goto_5
    array-length v2, p1

    if-ge v1, v2, :cond_16

    aget-object v2, p0, v0

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    return v1

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    const/4 v0, 0x4

    return v0
.end method

.method private static getScaleWght(IIIZ)I
    .registers 9

    invoke-static {p2}, Lmiui/util/TypefaceUtils$Holder;->getRules(I)[[I

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_8

    return p0

    :cond_8
    invoke-static {p0}, Lmiui/util/TypefaceUtils$Holder;->getWeightIndex(I)I

    move-result v1

    if-ltz v1, :cond_15

    aget-object v2, v0, v1

    invoke-static {p0, v2, p1, p3}, Lmiui/util/TypefaceUtils;->getWghtInRange(I[IIZ)I

    move-result v2

    return v2

    :cond_15
    const/16 v2, 0x190

    invoke-static {v2}, Lmiui/util/TypefaceUtils$Holder;->getWeightIndex(I)I

    move-result v3

    # getter for: Lmiui/util/TypefaceUtils$Holder;->NORAML_RULES:[[I
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$2700()[[I

    move-result-object v4

    aget-object v4, v4, v3

    invoke-static {v2, v4, p1, p3}, Lmiui/util/TypefaceUtils;->getWghtInRange(I[IIZ)I

    move-result v2

    return v2
.end method

.method private static getThemeFont(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .registers 3

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->sIsUsingThemeFont:Ljava/lang/Boolean;

    if-nez v0, :cond_a

    invoke-static {}, Lmiui/util/TypefaceUtils;->checkUsingThemeFont()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_a
    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->sIsUsingThemeFont:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_12
    invoke-static {}, Lmiui/util/TypefaceUtils;->loadAndSetThemeFont()V

    invoke-static {p0, p1}, Lmiui/util/TypefaceUtils;->getThemeFontWithStyle(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_1a
    invoke-static {}, Lmiui/util/TypefaceUtils;->clearThemeFont()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getThemeFontWithStyle(II[ILandroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/graphics/Typeface;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[I",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;)",
            "Landroid/graphics/Typeface;"
        }
    .end annotation

    aget v0, p2, p0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_9

    add-int/lit16 v1, v0, 0x12c

    goto :goto_a

    :cond_9
    move v1, v0

    :goto_a
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_12

    if-eqz p4, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    if-eqz v2, :cond_17

    move-object v3, p4

    goto :goto_18

    :cond_17
    move-object v3, p3

    :goto_18
    if-eq v1, v0, :cond_27

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_27

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Typeface;

    return-object v4

    :cond_27
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_34

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Typeface;

    return-object v4

    :cond_34
    const/4 v4, 0x0

    return-object v4
.end method

.method private static getThemeFontWithStyle(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .registers 7

    if-eqz p0, :cond_7

    invoke-static {p0}, Lmiui/util/TypefaceUtils;->getFontNames(Landroid/graphics/Typeface;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_7
    sget-object v0, Lmiui/util/TypefaceUtils;->FONT_NAME_DEFAULT:[Ljava/lang/String;

    :goto_9
    const-string v1, "miui"

    const-string v2, "mipro"

    const-string v3, "mitype"

    const-string v4, "mitype-mono"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/util/TypefaceUtils;->isNamesOf([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x0

    invoke-static {v0}, Lmiui/util/TypefaceUtils;->convertToSysFontName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_22
    # getter for: Lmiui/util/TypefaceUtils$Holder;->DEFAULT_FONT_NAMES:[Ljava/lang/String;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$300()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/util/TypefaceUtils;->getFontIndex([Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3d

    # getter for: Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_WEIGHT:[I
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$500()[I

    move-result-object v2

    # getter for: Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_CACHE:Landroid/util/SparseArray;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$200()Landroid/util/SparseArray;

    move-result-object v3

    # getter for: Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_ITALIC_CACHE:Landroid/util/SparseArray;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$700()Landroid/util/SparseArray;

    move-result-object v4

    invoke-static {v1, p1, v2, v3, v4}, Lmiui/util/TypefaceUtils;->getThemeFontWithStyle(II[ILandroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    :cond_3d
    # getter for: Lmiui/util/TypefaceUtils$Holder;->THEME_MIUI_FONT_NAMES:[Ljava/lang/String;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$800()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmiui/util/TypefaceUtils;->getFontIndex([Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_55

    # getter for: Lmiui/util/TypefaceUtils$Holder;->THEME_MIUI_FONT_WEIGHT:[I
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$1000()[I

    move-result-object v3

    # getter for: Lmiui/util/TypefaceUtils$Holder;->THEME_MIUI_FONT_CACHE:Landroid/util/SparseArray;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$1100()Landroid/util/SparseArray;

    move-result-object v4

    invoke-static {v1, p1, v3, v4, v2}, Lmiui/util/TypefaceUtils;->getThemeFontWithStyle(II[ILandroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    :cond_55
    # getter for: Lmiui/util/TypefaceUtils$Holder;->THEME_MIUIEX_FONT_NAMES:[Ljava/lang/String;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$1200()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lmiui/util/TypefaceUtils;->getFontIndex([Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_6c

    # getter for: Lmiui/util/TypefaceUtils$Holder;->THEME_MIUIEX_FONT_WEIGHT:[I
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$1400()[I

    move-result-object v3

    # getter for: Lmiui/util/TypefaceUtils$Holder;->THEME_MIUIEX_FONT_CACHE:Landroid/util/SparseArray;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$1500()Landroid/util/SparseArray;

    move-result-object v4

    invoke-static {v1, p1, v3, v4, v2}, Lmiui/util/TypefaceUtils;->getThemeFontWithStyle(II[ILandroid/util/SparseArray;Landroid/util/SparseArray;)Landroid/graphics/Typeface;

    move-result-object v2

    return-object v2

    :cond_6c
    return-object p0
.end method

.method private static getVarFont(Landroid/content/Context;Landroid/graphics/Typeface;FZLandroid/graphics/Typeface;[Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 12

    sget v0, Lmiui/util/TypefaceUtils$Holder;->sFontScale:I

    if-gez v0, :cond_9

    invoke-static {p0}, Lmiui/util/TypefaceUtils;->loadFontScaleSetting(Landroid/content/Context;)I

    move-result v0

    goto :goto_b

    :cond_9
    sget v0, Lmiui/util/TypefaceUtils$Holder;->sFontScale:I

    :goto_b
    if-gez v0, :cond_e

    return-object p1

    :cond_e
    invoke-static {p1, p5}, Lmiui/util/TypefaceUtils;->getFontWeight(Landroid/graphics/Typeface;[Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, p3}, Lmiui/util/TypefaceUtils$Holder;->getWght(IZ)I

    move-result v2

    invoke-static {p2}, Lmiui/util/TypefaceUtils$Holder;->getTextSizeGrade(F)I

    move-result v3

    invoke-static {v2, v0, v3}, Lmiui/util/TypefaceUtils$Holder;->getCachedFont(III)Landroid/graphics/Typeface;

    move-result-object v4

    if-nez v4, :cond_2e

    invoke-static {v1, v0, v3, p3}, Lmiui/util/TypefaceUtils;->getScaleWght(IIIZ)I

    move-result v5

    invoke-static {p4, v5}, Lmiui/util/TypefaceHelper;->createVarFont(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-static {v4, p5}, Lmiui/util/TypefaceUtils;->setFontNames(Landroid/graphics/Typeface;[Ljava/lang/String;)V

    invoke-static {v4, v2, v0, v3}, Lmiui/util/TypefaceUtils$Holder;->cacheFont(Landroid/graphics/Typeface;III)V

    :cond_2e
    return-object v4
.end method

.method public static getVarFontWithStyle(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .registers 4

    invoke-static {p0, p1}, Lmiui/util/TypefaceUtils;->getThemeFont(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {p0, p1, v1}, Lmiui/util/TypefaceUtils;->getVarFontWithStyleAndSize(Landroid/graphics/Typeface;IF)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1
.end method

.method private static getVarFontWithStyleAndSize(Landroid/graphics/Typeface;IF)Landroid/graphics/Typeface;
    .registers 5

    invoke-static {}, Lmiui/util/TypefaceUtils;->isMiuiVarFontEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    const/4 v1, 0x0

    invoke-static {v1, p0, p2, v0}, Lmiui/util/TypefaceUtils;->doReplaceWithVarFont(Landroid/content/Context;Landroid/graphics/Typeface;FZ)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_15

    return-object v1

    :cond_15
    return-object p0
.end method

.method private static getWghtInRange(I[IIZ)I
    .registers 11

    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {v0, p3}, Lmiui/util/TypefaceUtils$Holder;->getWght(IZ)I

    move-result v0

    invoke-static {p0, p3}, Lmiui/util/TypefaceUtils$Holder;->getWght(IZ)I

    move-result v1

    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-static {v2, p3}, Lmiui/util/TypefaceUtils$Holder;->getWght(IZ)I

    move-result v2

    move v3, v1

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x42480000    # 50.0f

    const/16 v6, 0x32

    if-ge p2, v6, :cond_25

    int-to-float v6, p2

    div-float/2addr v6, v5

    sub-float/2addr v4, v6

    int-to-float v5, v0

    mul-float/2addr v4, v5

    int-to-float v5, v1

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v3, v4

    goto :goto_33

    :cond_25
    if-le p2, v6, :cond_33

    add-int/lit8 v6, p2, -0x32

    int-to-float v6, v6

    div-float/2addr v6, v5

    sub-float/2addr v4, v6

    int-to-float v5, v1

    mul-float/2addr v4, v5

    int-to-float v5, v2

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v3, v4

    goto :goto_34

    :cond_33
    :goto_33
    nop

    :goto_34
    return v3
.end method

.method public static initSystemFont(Landroid/content/Context;)V
    .registers 2

    invoke-static {}, Lmiui/util/TypefaceUtils;->checkUsingThemeFont()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Lmiui/util/TypefaceUtils;->loadAndSetThemeFont()V

    return-void

    :cond_a
    invoke-static {}, Lmiui/util/TypefaceUtils;->clearThemeFont()V

    invoke-static {}, Lmiui/util/TypefaceUtils;->isMiuiVarFontEnabled()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {}, Lmiui/util/TypefaceUtils;->restoreTypefaceDefault()V

    return-void

    :cond_17
    invoke-static {p0}, Lmiui/util/TypefaceUtils;->updateUiMode(Landroid/content/Context;)V

    invoke-static {p0}, Lmiui/util/TypefaceUtils;->loadFontScaleSetting(Landroid/content/Context;)I

    invoke-static {}, Lmiui/util/TypefaceUtils;->updateDefaultFont()V

    return-void
.end method

.method public static isFontChanged(Landroid/content/res/Configuration;)Z
    .registers 5

    iget-object v0, p0, Landroid/content/res/Configuration;->extraConfig:Landroid/content/res/MiuiConfiguration;

    iget-wide v0, v0, Landroid/content/res/MiuiConfiguration;->themeChangedFlags:J

    const-wide/32 v2, 0x20000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private static isMiuiFontNames([Ljava/lang/String;)Z
    .registers 5

    const-string v0, "miui"

    const-string v1, "mipro"

    const-string v2, "mitype"

    const-string v3, "mitype-mono"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/util/TypefaceUtils;->isNamesOf([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isMiuiOptimizeEnabled()Z
    .registers 2

    const-string v0, "persist.sys.miui_optimization"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->sIsUsingMiuiFonts:Ljava/lang/Boolean;

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->sIsUsingMiuiFonts:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static isMiuiVarFontEnabled()Z
    .registers 1

    sget-boolean v0, Lmiui/util/TypefaceUtils;->USING_VAR_FONT:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lmiui/util/TypefaceUtils;->isMiuiOptimizeEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private static varargs isNamesOf([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6

    if-eqz p0, :cond_2a

    array-length v0, p0

    if-lez v0, :cond_2a

    const/4 v0, 0x0

    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_2a

    const/4 v1, 0x0

    :goto_a
    array-length v2, p0

    if-ge v1, v2, :cond_27

    aget-object v2, p0, v1

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    aget-object v2, p0, v1

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_24

    const/4 v2, 0x1

    return v2

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method private static isThemeFont([Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p0, :cond_43

    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_43

    :cond_7
    array-length v1, p0

    move v2, v0

    :goto_9
    if-ge v2, v1, :cond_42

    aget-object v3, p0, v2

    const-string v4, "theme-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    goto :goto_3f

    :cond_16
    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-ltz v4, :cond_3f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_25

    goto :goto_3f

    :cond_25
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget v7, Lmiui/util/TypefaceUtils$Holder;->sThemeFontVer:I

    if-ne v6, v7, :cond_3f

    const/4 v0, 0x1

    return v0

    :cond_3f
    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_42
    return v0

    :cond_43
    :goto_43
    return v0
.end method

.method public static isUsingMiFont(Landroid/graphics/Typeface;)Z
    .registers 3

    invoke-static {p0}, Lmiui/util/TypefaceUtils;->getFontNames(Landroid/graphics/Typeface;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/util/TypefaceUtils;->isMiuiFontNames([Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static loadAndSetThemeFont()V
    .registers 5

    # getter for: Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_CACHE:Landroid/util/SparseArray;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$200()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_b

    return-void

    :cond_b
    sget v0, Lmiui/util/TypefaceUtils$Holder;->sThemeFontVer:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmiui/util/TypefaceUtils$Holder;->sThemeFontVer:I

    # getter for: Lmiui/util/TypefaceUtils$Holder;->DEFAULT_FONT_NAMES:[Ljava/lang/String;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$300()[Ljava/lang/String;

    move-result-object v0

    # getter for: Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_FILES:[Ljava/lang/String;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$400()[Ljava/lang/String;

    move-result-object v1

    # getter for: Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_WEIGHT:[I
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$500()[I

    move-result-object v2

    # getter for: Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_CACHE:Landroid/util/SparseArray;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$200()Landroid/util/SparseArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lmiui/util/TypefaceUtils;->loadThemeFont([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;Z)V

    # getter for: Lmiui/util/TypefaceUtils$Holder;->DEFAULT_FONT_NAMES:[Ljava/lang/String;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$300()[Ljava/lang/String;

    move-result-object v0

    # getter for: Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_ITALIC_FILES:[Ljava/lang/String;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$600()[Ljava/lang/String;

    move-result-object v1

    # getter for: Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_WEIGHT:[I
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$500()[I

    move-result-object v2

    # getter for: Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_ITALIC_CACHE:Landroid/util/SparseArray;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$700()Landroid/util/SparseArray;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v4}, Lmiui/util/TypefaceUtils;->loadThemeFont([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;Z)V

    # getter for: Lmiui/util/TypefaceUtils$Holder;->THEME_MIUI_FONT_NAMES:[Ljava/lang/String;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$800()[Ljava/lang/String;

    move-result-object v0

    # getter for: Lmiui/util/TypefaceUtils$Holder;->THEME_MIUI_FONT_FILES:[Ljava/lang/String;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$900()[Ljava/lang/String;

    move-result-object v1

    # getter for: Lmiui/util/TypefaceUtils$Holder;->THEME_MIUI_FONT_WEIGHT:[I
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$1000()[I

    move-result-object v2

    # getter for: Lmiui/util/TypefaceUtils$Holder;->THEME_MIUI_FONT_CACHE:Landroid/util/SparseArray;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$1100()Landroid/util/SparseArray;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v4}, Lmiui/util/TypefaceUtils;->loadThemeFont([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;Z)V

    # getter for: Lmiui/util/TypefaceUtils$Holder;->THEME_MIUIEX_FONT_NAMES:[Ljava/lang/String;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$1200()[Ljava/lang/String;

    move-result-object v0

    # getter for: Lmiui/util/TypefaceUtils$Holder;->THEME_MIUIEX_FONT_FILES:[Ljava/lang/String;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$1300()[Ljava/lang/String;

    move-result-object v1

    # getter for: Lmiui/util/TypefaceUtils$Holder;->THEME_MIUIEX_FONT_WEIGHT:[I
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$1400()[I

    move-result-object v2

    # getter for: Lmiui/util/TypefaceUtils$Holder;->THEME_MIUIEX_FONT_CACHE:Landroid/util/SparseArray;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$1500()Landroid/util/SparseArray;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, v4}, Lmiui/util/TypefaceUtils;->loadThemeFont([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;Z)V

    # getter for: Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_CACHE:Landroid/util/SparseArray;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$200()Landroid/util/SparseArray;

    move-result-object v0

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    invoke-static {v0}, Lmiui/util/TypefaceHelper;->updateDefaultFont(Landroid/graphics/Typeface;)V

    # getter for: Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_CACHE:Landroid/util/SparseArray;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$200()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    # getter for: Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_CACHE:Landroid/util/SparseArray;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$200()Landroid/util/SparseArray;

    move-result-object v2

    const/16 v3, 0x2bc

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    # getter for: Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_ITALIC_CACHE:Landroid/util/SparseArray;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$700()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    # getter for: Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_ITALIC_CACHE:Landroid/util/SparseArray;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$700()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    invoke-static {v0, v2, v1, v3}, Lmiui/util/TypefaceHelper;->updateDefaultWithStyle(Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    return-void
.end method

.method public static loadFontScaleSetting(Landroid/content/Context;)I
    .registers 4

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v1, 0x32

    const-string v2, "key_miui_font_weight_scale"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmiui/util/TypefaceUtils$Holder;->sFontScale:I

    :cond_10
    sget v0, Lmiui/util/TypefaceUtils$Holder;->sFontScale:I

    return v0
.end method

.method private static loadThemeFont([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[I",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    :goto_8
    array-length v1, p0

    if-ge v0, v1, :cond_38

    aget v1, p2, v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "theme-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p0, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget v5, Lmiui/util/TypefaceUtils$Holder;->sThemeFontVer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    aget-object v3, p1, v0

    invoke-static {v3, v1, v2, p3, p4}, Lmiui/util/TypefaceUtils;->createAndCacheFont(Ljava/lang/String;I[Ljava/lang/String;Landroid/util/SparseArray;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_38
    return-void
.end method

.method public static onMiuiFontChanged(Landroid/content/res/MiuiConfiguration;)V
    .registers 4

    invoke-static {}, Lmiui/util/TypefaceUtils;->clearThemeFont()V

    invoke-static {}, Lmiui/util/TypefaceUtils;->checkUsingThemeFont()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lmiui/util/TypefaceUtils;->loadAndSetThemeFont()V

    return-void

    :cond_d
    invoke-static {}, Lmiui/util/TypefaceUtils;->isMiuiVarFontEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/content/res/MiuiConfiguration;->extraData:Landroid/os/Bundle;

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/content/res/MiuiConfiguration;->extraData:Landroid/os/Bundle;

    const/16 v1, 0x32

    const-string v2, "key_var_font_scale"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmiui/util/TypefaceUtils$Holder;->sFontScale:I

    :cond_23
    invoke-static {}, Lmiui/util/TypefaceUtils;->updateDefaultFont()V

    :cond_26
    return-void
.end method

.method public static onUiModeChange(I)V
    .registers 2

    and-int/lit8 v0, p0, 0x30

    sput v0, Lmiui/util/TypefaceUtils$Holder;->sUiMode:I

    return-void
.end method

.method public static replaceTypeface(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .registers 3

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p0, p1, v0}, Lmiui/util/TypefaceUtils;->replaceTypeface(Landroid/content/Context;Landroid/graphics/Typeface;F)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static replaceTypeface(Landroid/content/Context;Landroid/graphics/Typeface;F)Landroid/graphics/Typeface;
    .registers 8

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {p1, v0}, Lmiui/util/TypefaceUtils;->getThemeFont(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_f

    return-object v0

    :cond_f
    invoke-static {p1}, Lmiui/util/TypefaceUtils;->getFontNames(Landroid/graphics/Typeface;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmiui/util/TypefaceUtils;->isMiuiFontNames([Ljava/lang/String;)Z

    move-result v2

    invoke-static {}, Lmiui/util/TypefaceUtils;->isMiuiOptimizeEnabled()Z

    move-result v3

    if-nez v3, :cond_25

    if-eqz v2, :cond_24

    invoke-static {p1, v1}, Lmiui/util/TypefaceUtils;->convertMiuiFontToSysFont(Landroid/graphics/Typeface;[Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3

    :cond_24
    return-object p1

    :cond_25
    const/4 v3, 0x0

    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->isUsingMiuiFonts()Z

    move-result v4

    if-nez v4, :cond_2e

    if-eqz v2, :cond_3e

    :cond_2e
    sget-boolean v4, Lmiui/util/TypefaceUtils;->USING_VAR_FONT:Z

    if-eqz v4, :cond_3a

    invoke-static {p0}, Lmiui/util/TypefaceUtils;->updateUiMode(Landroid/content/Context;)V

    invoke-static {p0, p1, p2}, Lmiui/util/TypefaceUtils;->replaceWithVarFont(Landroid/content/Context;Landroid/graphics/Typeface;F)Landroid/graphics/Typeface;

    move-result-object v3

    goto :goto_3e

    :cond_3a
    invoke-static {p1}, Lmiui/util/TypefaceUtils;->replaceWithMiuiFont(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v3

    :cond_3e
    :goto_3e
    if-nez v3, :cond_42

    move-object v4, p1

    goto :goto_43

    :cond_42
    move-object v4, v3

    :goto_43
    return-object v4
.end method

.method private static replaceWithMiuiFont(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .registers 3

    if-eqz p0, :cond_1d

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v0, p0}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    return-object v0

    :cond_1d
    :goto_1d
    if-nez p0, :cond_21

    const/4 v0, 0x0

    goto :goto_25

    :cond_21
    invoke-virtual {p0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    :goto_25
    # getter for: Lmiui/util/TypefaceUtils$Holder;->MIUI_TYPEFACES:[Landroid/graphics/Typeface;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$2000()[Landroid/graphics/Typeface;

    move-result-object v1

    aget-object v1, v1, v0

    return-object v1
.end method

.method private static replaceWithVarFont(Landroid/content/Context;Landroid/graphics/Typeface;F)Landroid/graphics/Typeface;
    .registers 5

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    invoke-static {p1}, Lmiui/util/TypefaceUtils;->isUsingMiFont(Landroid/graphics/Typeface;)Z

    move-result v0

    if-nez v0, :cond_1a

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/graphics/Typeface;->isBold()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    invoke-static {p0, p1, p2, v0}, Lmiui/util/TypefaceUtils;->doReplaceWithVarFont(Landroid/content/Context;Landroid/graphics/Typeface;FZ)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1
.end method

.method private static restoreTypefaceDefault()V
    .registers 5

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v0}, Lmiui/util/TypefaceHelper;->updateDefaultFont(Landroid/graphics/Typeface;)V

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v0, v1, v3, v2}, Lmiui/util/TypefaceHelper;->updateDefaultWithStyle(Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    return-void
.end method

.method private static setFontNames(Landroid/graphics/Typeface;[Ljava/lang/String;)V
    .registers 5

    :try_start_0
    sget-object v0, Lmiui/util/TypefaceUtils;->sFamilyNameField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "TypefaceUtils"

    const-string v2, "set familyName failed"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_e
    return-void
.end method

.method private static updateDefaultFont()V
    .registers 6

    nop

    # getter for: Lmiui/util/TypefaceUtils$Holder;->MIUI_VAR_FONT:Landroid/graphics/Typeface;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$1600()Landroid/graphics/Typeface;

    move-result-object v4

    # getter for: Lmiui/util/TypefaceUtils$Holder;->MIUI_NAMES:[Ljava/lang/String;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$1700()[Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x41800000    # 16.0f

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lmiui/util/TypefaceUtils;->getVarFont(Landroid/content/Context;Landroid/graphics/Typeface;FZLandroid/graphics/Typeface;[Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/util/TypefaceUtils;->getVarFontWithStyle(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0}, Lmiui/util/TypefaceHelper;->updateDefaultFont(Landroid/graphics/Typeface;)V

    invoke-static {v0, v1, v0, v1}, Lmiui/util/TypefaceHelper;->updateDefaultWithStyle(Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;Landroid/graphics/Typeface;)V

    return-void
.end method

.method public static updateScaledFont(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .registers 10

    # getter for: Lmiui/util/TypefaceUtils$Holder;->sDisableScaleUdpate:Z
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$1800()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    invoke-static {p0}, Lmiui/util/TypefaceUtils;->getFontNames(Landroid/graphics/Typeface;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    invoke-static {p0, v1}, Lmiui/util/TypefaceUtils;->getThemeFont(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_1d

    invoke-static {v0}, Lmiui/util/TypefaceUtils;->isThemeFont([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    return-object p0

    :cond_1c
    return-object v1

    :cond_1d
    invoke-static {}, Lmiui/util/TypefaceUtils;->isMiuiVarFontEnabled()Z

    move-result v2

    if-eqz v2, :cond_51

    # getter for: Lmiui/util/TypefaceUtils$Holder;->DEFAULT_FONT_NAMES:[Ljava/lang/String;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$300()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmiui/util/TypefaceUtils;->getFontIndex([Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2f

    const/4 v2, 0x1

    goto :goto_30

    :cond_2f
    const/4 v2, 0x0

    :goto_30
    if-nez v2, :cond_3c

    # getter for: Lmiui/util/TypefaceUtils$Holder;->MIUI_NAMES:[Ljava/lang/String;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$1700()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lmiui/util/TypefaceUtils;->isNamesOf([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_51

    :cond_3c
    if-eqz v2, :cond_42

    invoke-static {v0}, Lmiui/util/TypefaceUtils;->convertFontNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_42
    const/4 v3, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    # getter for: Lmiui/util/TypefaceUtils$Holder;->MIUI_VAR_FONT:Landroid/graphics/Typeface;
    invoke-static {}, Lmiui/util/TypefaceUtils$Holder;->access$1600()Landroid/graphics/Typeface;

    move-result-object v7

    move-object v4, p0

    move-object v8, v0

    invoke-static/range {v3 .. v8}, Lmiui/util/TypefaceUtils;->getVarFont(Landroid/content/Context;Landroid/graphics/Typeface;FZLandroid/graphics/Typeface;[Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    return-object v3

    :cond_51
    return-object p0
.end method

.method private static updateUiMode(Landroid/content/Context;)V
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    sput v0, Lmiui/util/TypefaceUtils$Holder;->sUiMode:I

    return-void
.end method

.method public static useVarFont(Landroid/graphics/Typeface;F)Landroid/graphics/Typeface;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    goto :goto_9

    :cond_8
    move v1, v0

    :goto_9
    invoke-static {p0, v1}, Lmiui/util/TypefaceUtils;->getThemeFont(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-static {p0}, Lmiui/util/TypefaceUtils;->getFontNames(Landroid/graphics/Typeface;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/util/TypefaceUtils;->isThemeFont([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    return-object p0

    :cond_1a
    return-object v2

    :cond_1b
    invoke-static {p0}, Lmiui/util/TypefaceUtils;->isUsingMiFont(Landroid/graphics/Typeface;)Z

    move-result v3

    if-eqz v3, :cond_27

    const/4 v3, 0x0

    invoke-static {v3, p0, p1, v0}, Lmiui/util/TypefaceUtils;->doReplaceWithVarFont(Landroid/content/Context;Landroid/graphics/Typeface;FZ)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_27
    invoke-static {p0, v1, p1}, Lmiui/util/TypefaceUtils;->getVarFontWithStyleAndSize(Landroid/graphics/Typeface;IF)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method
