.class public Landroid/inputmethodservice/MiuiBottomConfig;
.super Ljava/lang/Object;
.source "MiuiBottomConfig.java"


# static fields
.field private static final MIUI_BOTTOM_VERSION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MiuiBottomConfig"

.field public static sBigChinDevices:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sMiddleChinDevices:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sSmallChinDevices:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sSmallChinDevices:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sMiddleChinDevices:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sSmallChinDevices:Ljava/util/HashSet;

    const-string v1, "andromeda"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sSmallChinDevices:Ljava/util/HashSet;

    const-string v1, "cepheus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sSmallChinDevices:Ljava/util/HashSet;

    const-string v1, "crux"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sSmallChinDevices:Ljava/util/HashSet;

    const-string/jumbo v1, "pyxis"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sSmallChinDevices:Ljava/util/HashSet;

    const-string/jumbo v1, "vela"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sSmallChinDevices:Ljava/util/HashSet;

    const-string v1, "begonia"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sSmallChinDevices:Ljava/util/HashSet;

    const-string v1, "grus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sSmallChinDevices:Ljava/util/HashSet;

    const-string/jumbo v1, "perseus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sSmallChinDevices:Ljava/util/HashSet;

    const-string/jumbo v1, "raphael"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sSmallChinDevices:Ljava/util/HashSet;

    const-string v1, "davinci"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sMiddleChinDevices:Ljava/util/HashSet;

    const-string v1, "dipper"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sMiddleChinDevices:Ljava/util/HashSet;

    const-string/jumbo v1, "onc"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sMiddleChinDevices:Ljava/util/HashSet;

    const-string/jumbo v1, "sirius"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sMiddleChinDevices:Ljava/util/HashSet;

    const-string/jumbo v1, "olive"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sMiddleChinDevices:Ljava/util/HashSet;

    const-string/jumbo v1, "platina"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sMiddleChinDevices:Ljava/util/HashSet;

    const-string v1, "lavender"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sMiddleChinDevices:Ljava/util/HashSet;

    const-string v1, "ginkgo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sMiddleChinDevices:Ljava/util/HashSet;

    const-string/jumbo v1, "olivelite"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sMiddleChinDevices:Ljava/util/HashSet;

    const-string v1, "equuleus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sMiddleChinDevices:Ljava/util/HashSet;

    const-string/jumbo v1, "ursa"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sMiddleChinDevices:Ljava/util/HashSet;

    const-string/jumbo v1, "tulip"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sMiddleChinDevices:Ljava/util/HashSet;

    const-string/jumbo v1, "violet"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sMiddleChinDevices:Ljava/util/HashSet;

    const-string v1, "lotus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    const-string v1, "chiron"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    const-string/jumbo v1, "ysl"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    const-string/jumbo v1, "vince"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    const-string v1, "cactus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    const-string v1, "cereus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    const-string/jumbo v1, "nitrogen"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    const-string/jumbo v1, "wayne"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    const-string/jumbo v1, "whyred"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    const-string v1, "laurus"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    const-string v1, "beryllium"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    const-string v1, "daisy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    const-string/jumbo v1, "rosy"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    const-string/jumbo v1, "pine"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    const-string/jumbo v1, "polaris"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    const-string/jumbo v1, "willow"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    const-string v1, "lithium"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLayoutForDevice()I
    .registers 3

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sBigChinDevices:Ljava/util/HashSet;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "MiuiBottomConfig"

    if-nez v0, :cond_21

    sget-object v0, Landroid/inputmethodservice/MiuiBottomConfig;->sMiddleChinDevices:Ljava/util/HashSet;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_21

    :cond_17
    const-string/jumbo v0, "use normal bottom"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x110b0016

    return v0

    :cond_21
    :goto_21
    const-string/jumbo v0, "use low bottom"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x110b0017

    return v0
.end method

.method public static getMiuiBottomVersion()I
    .registers 1

    const/4 v0, 0x2

    return v0
.end method
