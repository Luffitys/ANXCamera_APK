.class public Landroid/util/MiuiFontSizeUtils;
.super Ljava/lang/Object;
.source "MiuiFontSizeUtils.java"


# static fields
.field private static final DEFAULT_DENSITY_320:Landroid/util/SparseIntArray;

.field private static final DEFAULT_DENSITY_440:Landroid/util/SparseIntArray;

.field private static final DEFAULT_DENSITY_480:Landroid/util/SparseIntArray;

.field private static final DEFAULT_FONT_SCALE_320:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_FONT_SCALE_440:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_FONT_SCALE_480:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final DPI_320:I = 0x140

.field private static final DPI_480:I = 0x1e0

.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const-string v0, "MiuiFontSizeUtils"

    sput-object v0, Landroid/util/MiuiFontSizeUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_DENSITY_440:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_DENSITY_480:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_DENSITY_320:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_FONT_SCALE_440:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_FONT_SCALE_480:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_FONT_SCALE_320:Landroid/util/SparseArray;

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_DENSITY_440:Landroid/util/SparseIntArray;

    const/16 v1, 0xc

    const/16 v2, 0x1b8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_DENSITY_440:Landroid/util/SparseIntArray;

    const/16 v3, 0xd

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_DENSITY_440:Landroid/util/SparseIntArray;

    const/16 v4, 0xe

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_DENSITY_440:Landroid/util/SparseIntArray;

    const/16 v2, 0xf

    const/16 v5, 0x21c

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_DENSITY_440:Landroid/util/SparseIntArray;

    const/16 v6, 0xb

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_DENSITY_480:Landroid/util/SparseIntArray;

    const/16 v7, 0x1e0

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_DENSITY_480:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_DENSITY_480:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4, v7}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_DENSITY_480:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_DENSITY_480:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_DENSITY_320:Landroid/util/SparseIntArray;

    const/16 v5, 0x140

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_DENSITY_320:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_DENSITY_320:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_DENSITY_320:Landroid/util/SparseIntArray;

    const/16 v5, 0x168

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_DENSITY_320:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_FONT_SCALE_440:Landroid/util/SparseArray;

    const v5, 0x3f5c28f6    # 0.86f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_FONT_SCALE_440:Landroid/util/SparseArray;

    const v7, 0x3f933333    # 1.15f

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v0, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_FONT_SCALE_440:Landroid/util/SparseArray;

    const v8, 0x3fa8f5c3    # 1.32f

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_FONT_SCALE_440:Landroid/util/SparseArray;

    const v9, 0x3f8ccccd    # 1.1f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_FONT_SCALE_440:Landroid/util/SparseArray;

    const v9, 0x3f91eb85    # 1.14f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_FONT_SCALE_480:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_FONT_SCALE_480:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_FONT_SCALE_480:Landroid/util/SparseArray;

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_FONT_SCALE_480:Landroid/util/SparseArray;

    const v9, 0x3f95c28f    # 1.17f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_FONT_SCALE_480:Landroid/util/SparseArray;

    const v9, 0x3f99999a    # 1.2f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v6, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_FONT_SCALE_320:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_FONT_SCALE_320:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_FONT_SCALE_320:Landroid/util/SparseArray;

    invoke-virtual {v0, v4, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_FONT_SCALE_320:Landroid/util/SparseArray;

    invoke-virtual {v0, v2, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_FONT_SCALE_320:Landroid/util/SparseArray;

    const v1, 0x3fa147ae    # 1.26f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static clearForcedDisplayDensity(II)V
    .registers 3

    new-instance v0, Landroid/util/MiuiFontSizeUtils$1;

    invoke-direct {v0, p0, p1}, Landroid/util/MiuiFontSizeUtils$1;-><init>(II)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getDensity(II)I
    .registers 5

    const/16 v0, 0x140

    if-eq p1, v0, :cond_e

    const/16 v0, 0x1e0

    if-eq p1, v0, :cond_b

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_DENSITY_440:Landroid/util/SparseIntArray;

    goto :goto_11

    :cond_b
    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_DENSITY_480:Landroid/util/SparseIntArray;

    goto :goto_11

    :cond_e
    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_DENSITY_320:Landroid/util/SparseIntArray;

    nop

    :goto_11
    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    packed-switch p0, :pswitch_data_3e

    return p1

    :pswitch_19
    const-string v2, "hugeui_density"

    invoke-static {v2, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v2

    return v2

    :pswitch_20
    const-string v2, "largeui_density"

    invoke-static {v2, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v2

    return v2

    :pswitch_27
    const-string/jumbo v2, "mediumui_density"

    invoke-static {v2, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v2

    return v2

    :pswitch_2f
    const-string/jumbo v2, "smallui_density"

    invoke-static {v2, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v2

    return v2

    :pswitch_37
    const-string v2, "godzillaui_density"

    invoke-static {v2, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v2

    return v2

    :pswitch_data_3e
    .packed-switch 0xb
        :pswitch_37
        :pswitch_2f
        :pswitch_27
        :pswitch_20
        :pswitch_19
    .end packed-switch
.end method

.method public static getFontScaleV2(II)F
    .registers 5

    const/16 v0, 0x140

    if-eq p1, v0, :cond_e

    const/16 v0, 0x1e0

    if-eq p1, v0, :cond_b

    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_FONT_SCALE_440:Landroid/util/SparseArray;

    goto :goto_11

    :cond_b
    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_FONT_SCALE_480:Landroid/util/SparseArray;

    goto :goto_11

    :cond_e
    sget-object v0, Landroid/util/MiuiFontSizeUtils;->DEFAULT_FONT_SCALE_320:Landroid/util/SparseArray;

    nop

    :goto_11
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    packed-switch p0, :pswitch_data_5e

    return v1

    :pswitch_25
    const-string v1, "hugeui_font_scale_v2"

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    :pswitch_30
    const-string v1, "largeui_font_scale"

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    :pswitch_3b
    const-string/jumbo v1, "mediumui_font_scale"

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    :pswitch_47
    const-string/jumbo v1, "smallui_font_scale"

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    :pswitch_53
    const-string v1, "godzillaui_font_scale_v2"

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    :pswitch_data_5e
    .packed-switch 0xb
        :pswitch_53
        :pswitch_47
        :pswitch_3b
        :pswitch_30
        :pswitch_25
    .end packed-switch
.end method

.method public static setDensityDpi(II)V
    .registers 5

    sget v0, Landroid/util/MiuiDisplayMetrics;->DENSITY_DEVICE:I

    invoke-static {p0, v0}, Landroid/util/MiuiFontSizeUtils;->getDensity(II)I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_d

    invoke-static {v2, p1}, Landroid/util/MiuiFontSizeUtils;->clearForcedDisplayDensity(II)V

    goto :goto_10

    :cond_d
    invoke-static {v2, v1, p1}, Landroid/util/MiuiFontSizeUtils;->setForcedDisplayDensity(III)V

    :goto_10
    return-void
.end method

.method private static setForcedDisplayDensity(III)V
    .registers 4

    new-instance v0, Landroid/util/MiuiFontSizeUtils$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/util/MiuiFontSizeUtils$2;-><init>(III)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
