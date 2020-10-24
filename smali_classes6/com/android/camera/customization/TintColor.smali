.class public Lcom/android/camera/customization/TintColor;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final COLOR_BLUE:Ljava/lang/String; = "#9895FF"

.field private static final COLOR_CYAN:Ljava/lang/String; = "#75E9E3"

.field private static final COLOR_GREEN:Ljava/lang/String; = "#0199FF"

.field private static final COLOR_RED:Ljava/lang/String; = "#F5C89D"

.field private static final COLOR_YELLOW:Ljava/lang/String; = "#FFCE16"

.field public static final KEY_TINT_COLOR:Ljava/lang/String; = "pref_tint_color"

.field private static final LOG_TAG:Ljava/lang/String; = "TintColor"

.field private static sAvailableColors:Ljava/util/List;


# instance fields
.field private final color:Ljava/lang/String;

.field private final name:I

.field private final previewCH:I

.field private final previewEN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/camera/customization/TintColor;->availableColors()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/customization/TintColor;->sAvailableColors:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/customization/TintColor;->color:Ljava/lang/String;

    iput p2, p0, Lcom/android/camera/customization/TintColor;->name:I

    iput p3, p0, Lcom/android/camera/customization/TintColor;->previewCH:I

    iput p4, p0, Lcom/android/camera/customization/TintColor;->previewEN:I

    return-void
.end method

.method private static availableColors()Ljava/util/List;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/camera/customization/TintColor;

    const-string v2, "#FFCE16"

    const v3, 0x7f10025b

    const v4, 0x7f080121

    const v5, 0x7f080122

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/customization/TintColor;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/customization/TintColor;

    const-string v2, "#FFC396"

    const v3, 0x7f10025a

    const v4, 0x7f08011b

    const v5, 0x7f08011c

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/customization/TintColor;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/customization/TintColor;

    const-string v2, "#9895FF"

    const v3, 0x7f10025c

    const v4, 0x7f08011f

    const v5, 0x7f080120

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/customization/TintColor;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/customization/TintColor;

    const-string v2, "#30C0FF"

    const v3, 0x7f10025e

    const v4, 0x7f080119

    const v5, 0x7f08011a

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/customization/TintColor;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/camera/customization/TintColor;

    const-string v2, "#75E9E3"

    const v3, 0x7f10025f

    const v4, 0x7f08011d

    const v5, 0x7f08011e

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/customization/TintColor;-><init>(Ljava/lang/String;III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getAvailableColors()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/android/camera/customization/TintColor;->sAvailableColors:Ljava/util/List;

    return-object v0
.end method

.method public static isYellowTintColor()Z
    .locals 2

    invoke-static {}, Lcom/android/camera/customization/TintColor;->readColorId()I

    move-result v0

    sget-object v1, Lcom/android/camera/customization/TintColor;->sAvailableColors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/customization/TintColor;

    iget-object v0, v0, Lcom/android/camera/customization/TintColor;->color:Ljava/lang/String;

    const-string v1, "#FFCE16"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static persistColorId(I)V
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object v0

    const-string v1, "pref_tint_color"

    invoke-interface {v0, v1, p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putInt(Ljava/lang/String;I)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->apply()V

    return-void
.end method

.method public static readColorId()I
    .locals 3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const-string v1, "pref_tint_color"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/DataItemBase;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static tintColor()I
    .locals 2

    invoke-static {}, Lcom/android/camera/customization/TintColor;->readColorId()I

    move-result v0

    sget-object v1, Lcom/android/camera/customization/TintColor;->sAvailableColors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/customization/TintColor;

    invoke-virtual {v0}, Lcom/android/camera/customization/TintColor;->color()I

    move-result v0

    return v0
.end method


# virtual methods
.method public color()I
    .locals 0

    iget-object p0, p0, Lcom/android/camera/customization/TintColor;->color:Ljava/lang/String;

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public name()I
    .locals 0

    iget p0, p0, Lcom/android/camera/customization/TintColor;->name:I

    return p0
.end method

.method public previewResource()I
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/camera/customization/TintColor;->previewCH:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/camera/customization/TintColor;->previewEN:I

    :goto_0
    return p0
.end method
