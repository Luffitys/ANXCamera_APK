.class Lmiui/util/TypefaceUtils$Holder;
.super Ljava/lang/Object;
.source "TypefaceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/TypefaceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/TypefaceUtils$Holder$FontCacheItem;
    }
.end annotation


# static fields
.field private static final DEFAULT_FONT_NAMES:[Ljava/lang/String;

.field private static final DEFAULT_NAME_MAP:[Ljava/lang/String;

.field private static final FONT_CACHE:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lmiui/util/TypefaceUtils$Holder$FontCacheItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final LARGE_RULES:[[I

.field private static final MITYPE_MONO_NAMES:[Ljava/lang/String;

.field private static final MITYPE_MONO_VAR_FONT:Landroid/graphics/Typeface;

.field private static final MITYPE_NAMES:[Ljava/lang/String;

.field private static final MITYPE_VAR_FONT:Landroid/graphics/Typeface;

.field private static final MITYPE_WGHT:[I

.field private static final MIUI_NAMES:[Ljava/lang/String;

.field private static final MIUI_NAME_ARRAY:[Ljava/lang/String;

.field private static final MIUI_TYPEFACES:[Landroid/graphics/Typeface;

.field private static final MIUI_VAR_FONT:Landroid/graphics/Typeface;

.field private static final MIUI_VF_NAME:[[Ljava/lang/String;

.field private static final MIUI_WGHT:[I

.field private static final MIUI_WGHT_DARKMODE:[I

.field private static final NORAML_RULES:[[I

.field private static final SIZE_GRADE_COUNT:I = 0x3

.field private static final SMALL_RULES:[[I

.field private static final SYS_FONT_CACHE:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYS_FONT_FILES:[Ljava/lang/String;

.field private static final SYS_FONT_ITALIC_CACHE:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYS_FONT_ITALIC_FILES:[Ljava/lang/String;

.field private static final SYS_FONT_WEIGHT:[I

.field private static final THEME_MIUIEX_FONT_CACHE:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final THEME_MIUIEX_FONT_FILES:[Ljava/lang/String;

.field private static final THEME_MIUIEX_FONT_NAMES:[Ljava/lang/String;

.field private static final THEME_MIUIEX_FONT_WEIGHT:[I

.field private static final THEME_MIUI_FONT_CACHE:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final THEME_MIUI_FONT_FILES:[Ljava/lang/String;

.field private static final THEME_MIUI_FONT_NAMES:[Ljava/lang/String;

.field private static final THEME_MIUI_FONT_WEIGHT:[I

.field private static final VF_NAME_ARRAY:[Ljava/lang/String;

.field private static final WEIGHT_KEYS:[I

.field private static sDisableScaleUdpate:Z

.field static sFontScale:I

.field static sIsUsingMiuiFonts:Ljava/lang/Boolean;

.field static sIsUsingThemeFont:Ljava/lang/Boolean;

.field static sThemeFontVer:I

.field static sUiMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 18

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_CACHE:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_ITALIC_CACHE:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->THEME_MIUI_FONT_CACHE:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->THEME_MIUIEX_FONT_CACHE:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->FONT_CACHE:Landroid/util/SparseArray;

    const-string v1, "sans-serif"

    const-string v2, "sans-serif-thin"

    const-string v3, "sans-serif-light"

    const-string v4, "sans-serif-medium"

    const-string v5, "sans-serif-black"

    const-string v6, "sans-serif-regular"

    const-string v7, "arial"

    const-string v8, "helvetica"

    const-string v9, "tahoma"

    const-string v10, "verdana"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->DEFAULT_FONT_NAMES:[Ljava/lang/String;

    const-string v1, "Roboto-Regular.ttf"

    const-string v2, "Roboto-Thin.ttf"

    const-string v3, "Roboto-Light.ttf"

    const-string v4, "Roboto-Medium.ttf"

    const-string v5, "Roboto-Black.ttf"

    const-string v6, "Roboto-Bold.ttf"

    const-string v7, "Roboto-Regular.ttf"

    const-string v8, "Roboto-Regular.ttf"

    const-string v9, "Roboto-Regular.ttf"

    const-string v10, "Roboto-Regular.ttf"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_FILES:[Ljava/lang/String;

    const-string v1, "Roboto-Italic.ttf"

    const-string v2, "Roboto-ThinItalic.ttf"

    const-string v3, "Roboto-LightItalic.ttf"

    const-string v4, "Roboto-MediumItalic.ttf"

    const-string v5, "Roboto-BlackItalic.ttf"

    const-string v6, "Roboto-BoldItalic.ttf"

    const-string v7, "Roboto-Italic.ttf"

    const-string v8, "Roboto-Italic.ttf"

    const-string v9, "Roboto-Italic.ttf"

    const-string v10, "Roboto-Italic.ttf"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_ITALIC_FILES:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_316

    sput-object v1, Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_WEIGHT:[I

    const-string v1, "miui-bold"

    const-string v2, "miui"

    const-string v3, "miui-regular"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmiui/util/TypefaceUtils$Holder;->THEME_MIUI_FONT_NAMES:[Ljava/lang/String;

    const-string v1, "Miui-Bold.ttf"

    const-string v3, "Miui-Regular.ttf"

    filled-new-array {v1, v3, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmiui/util/TypefaceUtils$Holder;->THEME_MIUI_FONT_FILES:[Ljava/lang/String;

    const/4 v1, 0x3

    new-array v3, v1, [I

    fill-array-data v3, :array_32e

    sput-object v3, Lmiui/util/TypefaceUtils$Holder;->THEME_MIUI_FONT_WEIGHT:[I

    const-string v3, "miuiex"

    const-string v4, "miuiex-regular"

    const-string v5, "miuiex-bold"

    const-string v6, "miuiex-light"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lmiui/util/TypefaceUtils$Holder;->THEME_MIUIEX_FONT_NAMES:[Ljava/lang/String;

    const-string v3, "MiuiEx-Regular.ttf"

    const-string v4, "MiuiEx-Bold.ttf"

    const-string v5, "MiuiEx-Light.ttf"

    filled-new-array {v3, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lmiui/util/TypefaceUtils$Holder;->THEME_MIUIEX_FONT_FILES:[Ljava/lang/String;

    const/4 v3, 0x4

    new-array v4, v3, [I

    fill-array-data v4, :array_338

    sput-object v4, Lmiui/util/TypefaceUtils$Holder;->THEME_MIUIEX_FONT_WEIGHT:[I

    # getter for: Lmiui/util/TypefaceUtils;->USING_VAR_FONT:Z
    invoke-static {}, Lmiui/util/TypefaceUtils;->access$000()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v4, :cond_29a

    const-string v8, "thin"

    const-string v9, "thin"

    const-string v10, "light"

    const-string v11, "light"

    const-string v12, "medium"

    const-string v13, "medium"

    const-string v14, "black"

    const-string v15, "heavy"

    filled-new-array/range {v8 .. v15}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmiui/util/TypefaceUtils$Holder;->DEFAULT_NAME_MAP:[Ljava/lang/String;

    const-string v8, "thin"

    const-string v9, "extralight"

    const-string v10, "light"

    const-string v11, "normal"

    const-string v12, "regular"

    const-string v13, "medium"

    const-string v14, "demibold"

    const-string v15, "semibold"

    const-string v16, "bold"

    const-string v17, "heavy"

    filled-new-array/range {v8 .. v17}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmiui/util/TypefaceUtils$Holder;->VF_NAME_ARRAY:[Ljava/lang/String;

    array-length v4, v4

    new-array v8, v7, [I

    aput v5, v8, v5

    aput v4, v8, v6

    const-class v4, Ljava/lang/String;

    invoke-static {v4, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Ljava/lang/String;

    sput-object v4, Lmiui/util/TypefaceUtils$Holder;->MIUI_VF_NAME:[[Ljava/lang/String;

    const/4 v4, 0x0

    :goto_105
    sget-object v8, Lmiui/util/TypefaceUtils$Holder;->VF_NAME_ARRAY:[Ljava/lang/String;

    array-length v8, v8

    if-ge v4, v8, :cond_12a

    sget-object v8, Lmiui/util/TypefaceUtils$Holder;->MIUI_VF_NAME:[[Ljava/lang/String;

    new-array v9, v5, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mipro-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lmiui/util/TypefaceUtils$Holder;->VF_NAME_ARRAY:[Ljava/lang/String;

    aget-object v11, v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    aput-object v9, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_105

    :cond_12a
    const-string v8, "thin"

    const-string v9, "null"

    const-string v10, "light"

    const-string v11, "null"

    const-string v12, "regular"

    const-string v13, "bold"

    filled-new-array/range {v8 .. v13}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lmiui/util/TypefaceUtils$Holder;->MIUI_NAME_ARRAY:[Ljava/lang/String;

    new-array v4, v0, [I

    fill-array-data v4, :array_344

    sput-object v4, Lmiui/util/TypefaceUtils$Holder;->WEIGHT_KEYS:[I

    new-array v4, v0, [I

    fill-array-data v4, :array_35c

    sput-object v4, Lmiui/util/TypefaceUtils$Holder;->MIUI_WGHT:[I

    new-array v4, v0, [I

    fill-array-data v4, :array_374

    sput-object v4, Lmiui/util/TypefaceUtils$Holder;->MIUI_WGHT_DARKMODE:[I

    new-array v4, v0, [I

    fill-array-data v4, :array_38c

    sput-object v4, Lmiui/util/TypefaceUtils$Holder;->MITYPE_WGHT:[I

    const/4 v4, 0x0

    :goto_159
    sget-object v8, Lmiui/util/TypefaceUtils$Holder;->MIUI_WGHT:[I

    array-length v9, v8

    if-ge v4, v9, :cond_16d

    sget-object v9, Lmiui/util/TypefaceUtils$Holder;->FONT_CACHE:Landroid/util/SparseArray;

    aget v8, v8, v4

    new-instance v10, Lmiui/util/TypefaceUtils$Holder$FontCacheItem;

    invoke-direct {v10}, Lmiui/util/TypefaceUtils$Holder$FontCacheItem;-><init>()V

    invoke-virtual {v9, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_159

    :cond_16d
    const/4 v4, 0x0

    :goto_16e
    sget-object v8, Lmiui/util/TypefaceUtils$Holder;->MITYPE_WGHT:[I

    array-length v9, v8

    if-ge v4, v9, :cond_182

    sget-object v9, Lmiui/util/TypefaceUtils$Holder;->FONT_CACHE:Landroid/util/SparseArray;

    aget v8, v8, v4

    new-instance v10, Lmiui/util/TypefaceUtils$Holder$FontCacheItem;

    invoke-direct {v10}, Lmiui/util/TypefaceUtils$Holder$FontCacheItem;-><init>()V

    invoke-virtual {v9, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_16e

    :cond_182
    const-string v4, "mipro"

    filled-new-array {v4, v2}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lmiui/util/TypefaceUtils$Holder;->MIUI_NAMES:[Ljava/lang/String;

    const-string v2, "mitype"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lmiui/util/TypefaceUtils$Holder;->MITYPE_NAMES:[Ljava/lang/String;

    const-string v8, "mitype-mono"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lmiui/util/TypefaceUtils$Holder;->MITYPE_MONO_NAMES:[Ljava/lang/String;

    new-array v9, v0, [[I

    new-array v10, v7, [I

    fill-array-data v10, :array_3a4

    aput-object v10, v9, v6

    new-array v10, v7, [I

    fill-array-data v10, :array_3ac

    aput-object v10, v9, v5

    new-array v10, v7, [I

    fill-array-data v10, :array_3b4

    aput-object v10, v9, v7

    new-array v10, v7, [I

    fill-array-data v10, :array_3bc

    aput-object v10, v9, v1

    new-array v10, v7, [I

    fill-array-data v10, :array_3c4

    aput-object v10, v9, v3

    new-array v10, v7, [I

    fill-array-data v10, :array_3cc

    const/4 v11, 0x5

    aput-object v10, v9, v11

    new-array v10, v7, [I

    fill-array-data v10, :array_3d4

    const/4 v12, 0x6

    aput-object v10, v9, v12

    new-array v10, v7, [I

    fill-array-data v10, :array_3dc

    const/4 v13, 0x7

    aput-object v10, v9, v13

    new-array v10, v7, [I

    fill-array-data v10, :array_3e4

    const/16 v14, 0x8

    aput-object v10, v9, v14

    new-array v10, v7, [I

    fill-array-data v10, :array_3ec

    const/16 v15, 0x9

    aput-object v10, v9, v15

    sput-object v9, Lmiui/util/TypefaceUtils$Holder;->SMALL_RULES:[[I

    new-array v9, v0, [[I

    new-array v10, v7, [I

    fill-array-data v10, :array_3f4

    aput-object v10, v9, v6

    new-array v10, v7, [I

    fill-array-data v10, :array_3fc

    aput-object v10, v9, v5

    new-array v10, v7, [I

    fill-array-data v10, :array_404

    aput-object v10, v9, v7

    new-array v10, v7, [I

    fill-array-data v10, :array_40c

    aput-object v10, v9, v1

    new-array v10, v7, [I

    fill-array-data v10, :array_414

    aput-object v10, v9, v3

    new-array v10, v7, [I

    fill-array-data v10, :array_41c

    aput-object v10, v9, v11

    new-array v10, v7, [I

    fill-array-data v10, :array_424

    aput-object v10, v9, v12

    new-array v10, v7, [I

    fill-array-data v10, :array_42c

    aput-object v10, v9, v13

    new-array v10, v7, [I

    fill-array-data v10, :array_434

    aput-object v10, v9, v14

    new-array v10, v7, [I

    fill-array-data v10, :array_43c

    aput-object v10, v9, v15

    sput-object v9, Lmiui/util/TypefaceUtils$Holder;->NORAML_RULES:[[I

    new-array v0, v0, [[I

    new-array v9, v7, [I

    fill-array-data v9, :array_444

    aput-object v9, v0, v6

    new-array v9, v7, [I

    fill-array-data v9, :array_44c

    aput-object v9, v0, v5

    new-array v9, v7, [I

    fill-array-data v9, :array_454

    aput-object v9, v0, v7

    new-array v9, v7, [I

    fill-array-data v9, :array_45c

    aput-object v9, v0, v1

    new-array v1, v7, [I

    fill-array-data v1, :array_464

    aput-object v1, v0, v3

    new-array v1, v7, [I

    fill-array-data v1, :array_46c

    aput-object v1, v0, v11

    new-array v1, v7, [I

    fill-array-data v1, :array_474

    aput-object v1, v0, v12

    new-array v1, v7, [I

    fill-array-data v1, :array_47c

    aput-object v1, v0, v13

    new-array v1, v7, [I

    fill-array-data v1, :array_484

    aput-object v1, v0, v14

    new-array v1, v7, [I

    fill-array-data v1, :array_48c

    aput-object v1, v0, v15

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->LARGE_RULES:[[I

    new-array v0, v6, [Landroid/graphics/Typeface;

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_TYPEFACES:[Landroid/graphics/Typeface;

    sput-boolean v5, Lmiui/util/TypefaceUtils$Holder;->sDisableScaleUdpate:Z

    invoke-static {v4, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_VAR_FONT:Landroid/graphics/Typeface;

    invoke-static {v2, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MITYPE_VAR_FONT:Landroid/graphics/Typeface;

    invoke-static {v8, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MITYPE_MONO_VAR_FONT:Landroid/graphics/Typeface;

    sput-boolean v6, Lmiui/util/TypefaceUtils$Holder;->sDisableScaleUdpate:Z

    goto :goto_30f

    :cond_29a
    new-array v0, v6, [I

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MITYPE_WGHT:[I

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_WGHT_DARKMODE:[I

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_WGHT:[I

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->WEIGHT_KEYS:[I

    new-array v0, v6, [Ljava/lang/String;

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MITYPE_MONO_NAMES:[Ljava/lang/String;

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MITYPE_NAMES:[Ljava/lang/String;

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_NAMES:[Ljava/lang/String;

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_NAME_ARRAY:[Ljava/lang/String;

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->VF_NAME_ARRAY:[Ljava/lang/String;

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->DEFAULT_NAME_MAP:[Ljava/lang/String;

    new-array v0, v7, [I

    fill-array-data v0, :array_494

    const-class v4, Ljava/lang/String;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_VF_NAME:[[Ljava/lang/String;

    new-array v0, v7, [I

    fill-array-data v0, :array_49c

    const-class v4, I

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->LARGE_RULES:[[I

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->NORAML_RULES:[[I

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->SMALL_RULES:[[I

    const/4 v0, 0x0

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MITYPE_MONO_VAR_FONT:Landroid/graphics/Typeface;

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MITYPE_VAR_FONT:Landroid/graphics/Typeface;

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_VAR_FONT:Landroid/graphics/Typeface;

    new-instance v0, Ljava/io/File;

    const-string v4, "system/fonts/Miui-Regular.ttf"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_30b

    new-array v0, v3, [Landroid/graphics/Typeface;

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_TYPEFACES:[Landroid/graphics/Typeface;

    invoke-static {v2, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v0, v6

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_TYPEFACES:[Landroid/graphics/Typeface;

    invoke-static {v2, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v0, v5

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_TYPEFACES:[Landroid/graphics/Typeface;

    invoke-static {v2, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    aput-object v3, v0, v7

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_TYPEFACES:[Landroid/graphics/Typeface;

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_30f

    :cond_30b
    new-array v0, v6, [Landroid/graphics/Typeface;

    sput-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_TYPEFACES:[Landroid/graphics/Typeface;

    :goto_30f
    const/4 v0, -0x1

    sput v0, Lmiui/util/TypefaceUtils$Holder;->sFontScale:I

    sput v6, Lmiui/util/TypefaceUtils$Holder;->sThemeFontVer:I

    return-void

    nop

    :array_316
    .array-data 4
        0x190
        0x64
        0x12c
        0x1f4
        0x384
        0x2bc
        0x190
        0x190
        0x190
        0x190
    .end array-data

    :array_32e
    .array-data 4
        0x2bc
        0x190
        0x190
    .end array-data

    :array_338
    .array-data 4
        0x190
        0x190
        0x2bc
        0x12c
    .end array-data

    :array_344
    .array-data 4
        0x64
        0xc8
        0x12c
        0x15e
        0x190
        0x1f4
        0x226
        0x258
        0x2bc
        0x384
    .end array-data

    :array_35c
    .array-data 4
        0x96
        0xc8
        0xfa
        0x131
        0x154
        0x190
        0x1e0
        0x21c
        0x276
        0x2bc
    .end array-data

    :array_374
    .array-data 4
        0x96
        0xaf
        0xe1
        0x11d
        0x140
        0x168
        0x1b8
        0x1ea
        0x244
        0x28a
    .end array-data

    :array_38c
    .array-data 4
        0xa
        0x14
        0x1e
        0x28
        0x32
        0x3c
        0x46
        0x50
        0x5a
        0x64
    .end array-data

    :array_3a4
    .array-data 4
        0x64
        0x1f4
    .end array-data

    :array_3ac
    .array-data 4
        0xc8
        0x1f4
    .end array-data

    :array_3b4
    .array-data 4
        0x12c
        0x1f4
    .end array-data

    :array_3bc
    .array-data 4
        0x15e
        0x226
    .end array-data

    :array_3c4
    .array-data 4
        0x15e
        0x226
    .end array-data

    :array_3cc
    .array-data 4
        0x190
        0x258
    .end array-data

    :array_3d4
    .array-data 4
        0x1f4
        0x2bc
    .end array-data

    :array_3dc
    .array-data 4
        0x226
        0x2bc
    .end array-data

    :array_3e4
    .array-data 4
        0x258
        0x2bc
    .end array-data

    :array_3ec
    .array-data 4
        0x2bc
        0x384
    .end array-data

    :array_3f4
    .array-data 4
        0x64
        0x1f4
    .end array-data

    :array_3fc
    .array-data 4
        0x64
        0x1f4
    .end array-data

    :array_404
    .array-data 4
        0xc8
        0x226
    .end array-data

    :array_40c
    .array-data 4
        0x12c
        0x226
    .end array-data

    :array_414
    .array-data 4
        0x12c
        0x258
    .end array-data

    :array_41c
    .array-data 4
        0x15e
        0x2bc
    .end array-data

    :array_424
    .array-data 4
        0x190
        0x2bc
    .end array-data

    :array_42c
    .array-data 4
        0x1f4
        0x384
    .end array-data

    :array_434
    .array-data 4
        0x226
        0x384
    .end array-data

    :array_43c
    .array-data 4
        0x258
        0x384
    .end array-data

    :array_444
    .array-data 4
        0x64
        0x12c
    .end array-data

    :array_44c
    .array-data 4
        0x64
        0x15e
    .end array-data

    :array_454
    .array-data 4
        0xc8
        0x190
    .end array-data

    :array_45c
    .array-data 4
        0xc8
        0x1f4
    .end array-data

    :array_464
    .array-data 4
        0x12c
        0x226
    .end array-data

    :array_46c
    .array-data 4
        0x12c
        0x258
    .end array-data

    :array_474
    .array-data 4
        0x15e
        0x2bc
    .end array-data

    :array_47c
    .array-data 4
        0x190
        0x384
    .end array-data

    :array_484
    .array-data 4
        0x1f4
        0x384
    .end array-data

    :array_48c
    .array-data 4
        0x226
        0x384
    .end array-data

    :array_494
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_49c
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000()[I
    .registers 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->THEME_MIUI_FONT_WEIGHT:[I

    return-object v0
.end method

.method static synthetic access$1100()Landroid/util/SparseArray;
    .registers 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->THEME_MIUI_FONT_CACHE:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1200()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->THEME_MIUIEX_FONT_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->THEME_MIUIEX_FONT_FILES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400()[I
    .registers 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->THEME_MIUIEX_FONT_WEIGHT:[I

    return-object v0
.end method

.method static synthetic access$1500()Landroid/util/SparseArray;
    .registers 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->THEME_MIUIEX_FONT_CACHE:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1600()Landroid/graphics/Typeface;
    .registers 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_VAR_FONT:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$1700()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800()Z
    .registers 1

    sget-boolean v0, Lmiui/util/TypefaceUtils$Holder;->sDisableScaleUdpate:Z

    return v0
.end method

.method static synthetic access$1900()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->DEFAULT_NAME_MAP:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Landroid/util/SparseArray;
    .registers 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_CACHE:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2000()[Landroid/graphics/Typeface;
    .registers 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_TYPEFACES:[Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$2100()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->VF_NAME_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200()[[Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_VF_NAME:[[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300()Landroid/graphics/Typeface;
    .registers 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->MITYPE_MONO_VAR_FONT:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$2400()Landroid/graphics/Typeface;
    .registers 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->MITYPE_VAR_FONT:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$2500()[I
    .registers 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->WEIGHT_KEYS:[I

    return-object v0
.end method

.method static synthetic access$2600()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_NAME_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700()[[I
    .registers 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->NORAML_RULES:[[I

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->DEFAULT_FONT_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_FILES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()[I
    .registers 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_WEIGHT:[I

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_ITALIC_FILES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Landroid/util/SparseArray;
    .registers 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->SYS_FONT_ITALIC_CACHE:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->THEME_MIUI_FONT_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->THEME_MIUI_FONT_FILES:[Ljava/lang/String;

    return-object v0
.end method

.method static cacheFont(Landroid/graphics/Typeface;III)V
    .registers 6

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->FONT_CACHE:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/TypefaceUtils$Holder$FontCacheItem;

    if-nez v0, :cond_15

    new-instance v1, Lmiui/util/TypefaceUtils$Holder$FontCacheItem;

    invoke-direct {v1}, Lmiui/util/TypefaceUtils$Holder$FontCacheItem;-><init>()V

    move-object v0, v1

    sget-object v1, Lmiui/util/TypefaceUtils$Holder;->FONT_CACHE:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_15
    iget v1, v0, Lmiui/util/TypefaceUtils$Holder$FontCacheItem;->scale:I

    if-eq v1, p2, :cond_1e

    iput p2, v0, Lmiui/util/TypefaceUtils$Holder$FontCacheItem;->scale:I

    invoke-virtual {v0}, Lmiui/util/TypefaceUtils$Holder$FontCacheItem;->clear()V

    :cond_1e
    invoke-virtual {v0, p0, p3}, Lmiui/util/TypefaceUtils$Holder$FontCacheItem;->setFont(Landroid/graphics/Typeface;I)V

    return-void
.end method

.method static getCachedFont(III)Landroid/graphics/Typeface;
    .registers 5

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->FONT_CACHE:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/util/TypefaceUtils$Holder$FontCacheItem;

    if-eqz v0, :cond_13

    iget v1, v0, Lmiui/util/TypefaceUtils$Holder$FontCacheItem;->scale:I

    if-ne v1, p1, :cond_13

    invoke-virtual {v0, p2}, Lmiui/util/TypefaceUtils$Holder$FontCacheItem;->getFont(I)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1

    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method static getRules(I)[[I
    .registers 2

    if-eqz p0, :cond_b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->SMALL_RULES:[[I

    return-object v0

    :cond_8
    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->LARGE_RULES:[[I

    return-object v0

    :cond_b
    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->NORAML_RULES:[[I

    return-object v0
.end method

.method static getTextSizeGrade(F)I
    .registers 2

    const/high16 v0, 0x41a00000    # 20.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_15

    const/high16 v0, 0x41400000    # 12.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_15

    const/4 v0, 0x2

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method static getWeightIndex(I)I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lmiui/util/TypefaceUtils$Holder;->WEIGHT_KEYS:[I

    array-length v2, v1

    if-ge v0, v2, :cond_e

    aget v1, v1, v0

    if-ne v1, p0, :cond_b

    return v0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    const/4 v0, -0x1

    return v0
.end method

.method static getWght(IZ)I
    .registers 5

    invoke-static {p1}, Lmiui/util/TypefaceUtils$Holder;->getWghtArray(Z)[I

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_8

    return p0

    :cond_8
    invoke-static {p0}, Lmiui/util/TypefaceUtils$Holder;->getWeightIndex(I)I

    move-result v1

    if-ltz v1, :cond_11

    aget v2, v0, v1

    return v2

    :cond_11
    const/16 v2, 0x190

    invoke-static {v2, p1}, Lmiui/util/TypefaceUtils$Holder;->getWght(IZ)I

    move-result v2

    return v2
.end method

.method private static getWghtArray(Z)[I
    .registers 3

    if-eqz p0, :cond_5

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->MITYPE_WGHT:[I

    return-object v0

    :cond_5
    sget v0, Lmiui/util/TypefaceUtils$Holder;->sUiMode:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_e

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_WGHT_DARKMODE:[I

    return-object v0

    :cond_e
    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->MIUI_WGHT:[I

    return-object v0
.end method

.method static isUsingMiuiFonts()Z
    .registers 1

    sget-object v0, Lmiui/util/TypefaceUtils$Holder;->sIsUsingMiuiFonts:Ljava/lang/Boolean;

    if-nez v0, :cond_9

    # invokes: Lmiui/util/TypefaceUtils;->isMiuiOptimizeEnabled()Z
    invoke-static {}, Lmiui/util/TypefaceUtils;->access$100()Z

    move-result v0

    goto :goto_d

    :cond_9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_d
    return v0
.end method
