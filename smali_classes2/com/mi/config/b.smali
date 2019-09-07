.class public Lcom/mi/config/b;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field public static final Am:Z

.field public static final An:Z

.field public static final Bm:Z

.field public static final Bn:Z

.field public static final Cm:Z

.field public static final Cn:Z

.field public static final Dm:Z

.field public static final Dn:Z

.field public static final Em:Z

.field public static final En:Z

.field public static final Fm:Z

.field public static final Fn:Z

.field public static final Gm:Z

.field public static final Gn:Z

.field public static final Hm:Z

.field public static final Hn:Z

.field public static final IS_HONGMI:Z

.field public static final IS_MI2A:Z

.field public static final IS_XIAOMI:Z

.field public static final Im:Z

.field public static final In:Z

.field public static final Jm:Z

.field public static final Jn:Z

.field public static final Km:Z

.field public static final Kn:Z

.field public static final Lm:Z

.field public static final Ln:Z

.field public static final Mm:Z

.field public static final Mn:Z

.field public static final Nm:Z

.field public static final Nn:Z

.field public static final Om:Z

.field public static final Pm:Z

.field public static final Pn:Z

.field public static final Qm:Z

.field public static final Qn:Z

.field public static final Rm:Z

.field private static final Rn:I = 0x1

.field public static final Sm:Z

.field private static final Sn:I = 0x4

.field public static final Tm:Z

.field private static final Tn:I = 0x8

.field public static final Um:Z

.field private static Un:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final Vm:Z

.field private static final Vn:[Ljava/lang/String;

.field public static final Wm:Z

.field private static Wn:J = 0x0L

.field public static final Xm:Z

.field private static Xn:Ljava/lang/Boolean; = null

.field public static final Ym:Z

.field private static final Yn:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final Zm:Z

.field public static final _m:Z

.field public static final an:Z

.field public static final bn:Z

.field public static final cn:Z

.field public static final en:Z

.field public static final fn:Z

.field public static final gn:Z

.field public static final hn:Z

.field public static final jn:Z

.field public static final km:Ljava/lang/String;

.field public static final kn:Z

.field public static final lm:Ljava/lang/String; = "qcom"

.field public static final ln:Z

.field public static final mm:Ljava/lang/String; = "mediatek"

.field public static final mn:Z

.field public static final nm:Ljava/lang/String; = "leadcore"

.field public static final nn:Z

.field public static final om:Ljava/lang/String; = "nvidia"

.field public static final pn:Z

.field public static final qm:Ljava/lang/String; = "intel"

.field public static final qn:Z

.field private static final rm:I = 0x64

.field public static final rn:Z

.field public static final sm:Ljava/lang/String;

.field public static final sn:Z

.field public static final tm:Z

.field public static final tn:Z

.field public static final um:Z

.field public static final un:Z

.field public static final vm:Z

.field public static final vn:Z

.field public static final wm:Z

.field public static final wn:Z

.field public static final xm:Z

.field public static final xn:Z

.field public static final ym:Z

.field public static final yn:Z

.field public static final zm:Z

.field public static final zn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    sget-object v0, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/mi/config/b;->sm:Ljava/lang/String;

    sget-boolean v0, Lmiui/os/Build;->IS_MITWO:Z

    sput-boolean v0, Lcom/mi/config/b;->tm:Z

    sget-boolean v0, Lmiui/os/Build;->IS_MI2A:Z

    sput-boolean v0, Lcom/mi/config/b;->IS_MI2A:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v1, "pisces"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->um:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "cancro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "MI 3"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    sput-boolean v0, Lcom/mi/config/b;->vm:Z

    sget-boolean v0, Lcom/mi/config/b;->vm:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/mi/config/b;->um:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/mi/config/b;->wm:Z

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO_A:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO_S:Z

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    sput-boolean v0, Lcom/mi/config/b;->xm:Z

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO_S:Z

    sput-boolean v0, Lcom/mi/config/b;->ym:Z

    sget-boolean v0, Lcom/mi/config/b;->xm:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/mi/config/b;->ym:Z

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v0, v3

    goto :goto_5

    :cond_5
    :goto_4
    move v0, v2

    :goto_5
    sput-boolean v0, Lcom/mi/config/b;->zm:Z

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOS_LTE_MTK:Z

    sput-boolean v0, Lcom/mi/config/b;->Am:Z

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWO_A:Z

    sput-boolean v0, Lcom/mi/config/b;->Bm:Z

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_THREE:Z

    sput-boolean v0, Lcom/mi/config/b;->Cm:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v4, "gucci"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->Dm:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v4, "hermes"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->Em:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v4, "hennessy"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->Fm:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v4, "dior"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->Gm:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v4, "kenzo"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->Hm:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v4, "kate"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->Im:Z

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX:Z

    if-nez v0, :cond_7

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v4, "HM2014816"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    move v2, v3

    :cond_7
    :goto_6
    sput-boolean v2, Lcom/mi/config/b;->Jm:Z

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX_LC:Z

    sput-boolean v0, Lcom/mi/config/b;->Km:Z

    sget-boolean v0, Lmiui/os/Build;->IS_MIFOUR:Z

    sput-boolean v0, Lcom/mi/config/b;->Lm:Z

    sget-boolean v0, Lmiui/os/Build;->IS_MIPAD:Z

    sput-boolean v0, Lcom/mi/config/b;->Mm:Z

    sget-boolean v0, Lmiui/os/Build;->IS_MIFIVE:Z

    sput-boolean v0, Lcom/mi/config/b;->Nm:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "leo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->Om:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "ferrari"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->Pm:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "ido"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->Qm:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "aqua"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->Rm:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "gemini"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->Sm:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "gold"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->Tm:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "capricorn"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->Um:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "natrium"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->Vm:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "lithium"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->Wm:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "scorpio"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->Xm:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "libra"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->Ym:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "land"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->Zm:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "hydrogen"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->_m:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "helium"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->an:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "omega"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->bn:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "nike"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->cn:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "mark"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->en:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "prada"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->fn:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "mido"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->gn:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "rolex"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->hn:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "sagit"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->jn:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "centaur"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->kn:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "achilles"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->ln:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "jason"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->mn:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "tiffany"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->nn:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "ulysse"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->pn:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "oxygen"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->qn:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "chiron"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->rn:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "ugg"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->sn:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "vince"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->tn:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "whyred"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->un:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "beryllium"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->vn:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v2, "violet"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->wn:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->xn:Z

    const-string v0, "is_hongmi"

    invoke-static {v0, v3}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->IS_HONGMI:Z

    const-string v0, "is_xiaomi"

    invoke-static {v0, v3}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->IS_XIAOMI:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v1, "hammerhead"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->yn:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v1, "santoni"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->zn:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v1, "polaris"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->An:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v1, "sirius"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->Bn:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v1, "dipper"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->Cn:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v1, "ursa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->Dn:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v1, "equuleus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->En:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v1, "andromeda"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->Fn:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v1, "perseus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->Gn:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v1, "cepheus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->Hn:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v1, "grus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->In:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v1, "pine"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->Jn:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v1, "pyxis"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->Kn:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v1, "vela"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->Ln:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v1, "laurus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->Mn:Z

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v1, "laurel_sprout"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mi/config/b;->Nn:Z

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    sput-boolean v0, Lcom/mi/config/b;->Pn:Z

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    sput-boolean v0, Lcom/mi/config/b;->Qn:Z

    const-string v0, "KR"

    const-string v1, "JP"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/config/b;->Vn:[Ljava/lang/String;

    const-wide v0, 0x100000000L

    sput-wide v0, Lcom/mi/config/b;->Wn:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/mi/config/b;->Yn:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Ai()Z
    .locals 2

    const-string v0, "vendor"

    invoke-static {v0}, Lcom/mi/config/d;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "qcom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static Aj()Z
    .locals 2

    const-string v0, "support_camera_ubifocus"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Bi()Z
    .locals 2

    const-string v0, "is_rgb888_egl_prefer"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Bj()Z
    .locals 2

    const-string v0, "support_camera_video_pause"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Ci()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static Cj()Z
    .locals 2

    const-string v0, "support_camera_4k_quality"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Di()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static Dj()Z
    .locals 2

    const-string v0, "is_surface_size_limit"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Ei()Z
    .locals 2

    const-string v0, "is_camera_preview_with_subthread_looper"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Ej()Z
    .locals 1

    sget-boolean v0, Lcom/mi/config/b;->IS_XIAOMI:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->IS_HONGMI:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static Fi()Z
    .locals 2

    const-string v0, "support_3d_face_beauty"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Fj()Z
    .locals 2

    sget-boolean v0, Lcom/mi/config/b;->Bm:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->Km:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->vm:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->Cm:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->xm:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->ym:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->Am:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->tm:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->IS_MI2A:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->wm:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->Lm:Z

    if-nez v0, :cond_0

    const-string v0, "is_video_snapshot_size_limit"

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static G(Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lcom/mi/config/b;->Vn:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static Gi()Z
    .locals 2

    const-string v0, "support_camera_burst_shoot_denoise"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Gj()Z
    .locals 1

    sget-boolean v0, Lcom/mi/config/b;->tm:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->IS_MI2A:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static Hi()Z
    .locals 2

    const-string v0, "support_camera_dynamic_light_spot"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Hj()Z
    .locals 2

    const-string v0, "support_picture_watermark"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Ii()Z
    .locals 2

    const-string v0, "is_support_fhd_fhr"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Ij()Z
    .locals 2

    const-string v0, "support_realtime_manual_exposure_time"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Ji()Z
    .locals 2

    const-string v0, "support_front_beauty_mfnr"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Jj()Z
    .locals 2

    const-string v0, "use_legacy_normal_filter"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Ki()Z
    .locals 2

    const-string v0, "support_front_flash"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Li()Z
    .locals 2

    const-string v0, "is_full_size_effect"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Mi()Z
    .locals 2

    const-string v0, "support_camera_gradienter"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Nh()Z
    .locals 2

    sget-boolean v0, Lcom/mi/config/b;->Qn:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "support_camera_boost_brightness"

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static Ni()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static Ob()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->Ob()Z

    move-result v0

    return v0
.end method

.method public static Oh()Z
    .locals 2

    const-string v0, "enable_algorithm_in_file_suffix"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Oi()Z
    .locals 2

    const-string v0, "support_mi_face_beauty"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Ph()Ljava/lang/String;
    .locals 1

    const-string v0, "camera_continuous_shot_callback_class"

    invoke-static {v0}, Lcom/mi/config/d;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Pi()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/b;->Fi()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mi/config/b;->Oi()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static Qh()Ljava/lang/String;
    .locals 1

    const-string v0, "camera_continuous_shot_callback_setter"

    invoke-static {v0}, Lcom/mi/config/d;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Qi()Z
    .locals 2

    const-string v0, "support_psensor_pocket_mode"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Rh()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/mi/config/b;->Un:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mi/config/b;->Un:Ljava/util/ArrayList;

    const-string v0, "fp_nav_event_name_list"

    invoke-static {v0}, Lcom/mi/config/d;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/mi/config/b;->Un:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lcom/mi/config/b;->Un:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static Ri()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->Ab()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->IS_HONGMI:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static Sh()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/mi/config/b;->_h()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_l"

    return-object v0

    :cond_0
    invoke-static {}, Lcom/mi/config/b;->qi()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "_in"

    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "c_0x18"

    invoke-virtual {v0, v2, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "BROWN EDITION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Explorer"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "ROY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "_b"

    return-object v0

    :cond_4
    invoke-static {}, Lcom/mi/config/b;->ai()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "_s"

    return-object v0

    :cond_5
    invoke-static {}, Lcom/mi/config/b;->ji()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/mi/config/b;->ii()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    return-object v1

    :cond_7
    :goto_0
    const-string v0, "_global"

    return-object v0

    :cond_8
    :goto_1
    const-string v0, "_a"

    return-object v0
.end method

.method public static Si()Z
    .locals 2

    const-string v0, "support_screen_light"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Tc()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->Tc()Z

    move-result v0

    return v0
.end method

.method public static Th()I
    .locals 2

    sget v0, Lcom/android/camera/AutoLockManager;->HIBERNATION_TIMEOUT:I

    const-string v1, "camera_hibernation_timeout_in_minutes"

    invoke-static {v1, v0}, Lcom/mi/config/d;->getInteger(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static Ti()Z
    .locals 2

    const-string v0, "support_camera_square_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Uh()Z
    .locals 2

    const-string v0, "sensor_has_latency"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Ui()Z
    .locals 2

    invoke-static {}, Lcom/mi/config/b;->Ki()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "support_video_front_flash"

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static Vh()Z
    .locals 2

    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    int-to-float v0, v0

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const-string v0, "is_18x9_ratio_screen"

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static Vi()Z
    .locals 2

    const-string v0, "support_video_hfr_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Wh()Z
    .locals 2

    invoke-static {}, Lcom/mi/config/b;->gl()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/a;->Ib()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lcom/mi/config/b;->Rh()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mi/config/b;->Rh()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public static Wi()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "camera_supported_asd"

    invoke-static {v1, v0}, Lcom/mi/config/d;->getInteger(Ljava/lang/String;I)I

    move-result v1

    and-int/lit8 v1, v1, 0xd

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static Xh()Z
    .locals 2

    const/4 v0, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/Util;->sRegion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mi/config/b;->G(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    invoke-static {v0}, Lcom/mi/config/b;->G(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static Xi()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "support_camera_age_detection"

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static Yh()Z
    .locals 2

    const-string v0, "is_capture_stop_face_detection"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Yi()Z
    .locals 2

    const-string v0, "support_camera_aohdr"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Zh()Z
    .locals 2

    const-string v0, "is_camera_app_water_mark"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static Zi()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "camera_supported_asd"

    invoke-static {v1, v0}, Lcom/mi/config/d;->getInteger(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method public static _h()Z
    .locals 3

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v1, "onc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "ro.boot.hwversion"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x32

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static _i()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "camera_supported_asd"

    invoke-static {v1, v0}, Lcom/mi/config/d;->getInteger(Ljava/lang/String;I)I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static ai()Z
    .locals 2

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v1, "lavender"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.boot.hwc"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "India_48_5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static aj()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static bi()Z
    .locals 2

    const-string v0, "is_camera_face_detection_need_orientation"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static bj()Z
    .locals 2

    const-string v0, "support_camera_audio_focus"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ci()Z
    .locals 2

    invoke-static {}, Lcom/mi/config/b;->Ai()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static cj()Z
    .locals 2

    const-string v0, "support_chroma_flash"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static di()Z
    .locals 1

    sget-boolean v0, Lcom/mi/config/b;->Wm:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/mi/config/b;->rn:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/mi/config/b;->An:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static dj()Z
    .locals 2

    const-string v0, "is_camera_use_still_effect_image"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static ei()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/b;->hi()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/mi/config/b;->Kn:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/mi/config/b;->In:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static ej()Z
    .locals 2

    const-string v0, "support_edge_handgrip"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static fi()Z
    .locals 2

    sget-boolean v0, Lcom/mi/config/b;->un:Z

    if-eqz v0, :cond_0

    const-string v0, "ro.boot.hwc"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "India"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "is_front_remosic_sensor"

    invoke-static {v1, v0}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static fj()Z
    .locals 2

    const-string v0, "support_camera_face_info_water_mark"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static fl()Z
    .locals 2

    const-string v0, "ro.hardware.fp.fod"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getBurstShootCount()I
    .locals 2

    const-string v0, "burst_shoot_count"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/mi/config/d;->getInteger(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static gi()Z
    .locals 2

    sget-boolean v0, Lcom/mi/config/b;->Bm:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->Km:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->vm:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->Cm:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->xm:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->ym:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->Am:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->tm:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->IS_MI2A:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->wm:Z

    if-nez v0, :cond_0

    const-string v0, "is_front_video_quality_1080p"

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static gj()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static gl()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "front_fingerprint_sensor"

    invoke-static {v1, v0}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/mi/config/b;->fl()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static hi()Z
    .locals 1

    sget-boolean v0, Lcom/mi/config/b;->Gn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static hj()Z
    .locals 1

    sget-boolean v0, Lcom/mi/config/b;->Hm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    if-nez v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/mi/config/b;->Zm:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static ii()Z
    .locals 2

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v1, "davinci"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static ij()Z
    .locals 2

    const-string v0, "support_camera_record_location"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isLowRamDevice()Z
    .locals 4

    sget-object v0, Lcom/mi/config/b;->Xn:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->getTotalMemory(Landroid/content/Context;)J

    move-result-wide v0

    sget-wide v2, Lcom/mi/config/b;->Wn:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    sput-object v0, Lcom/mi/config/b;->Xn:Ljava/lang/Boolean;

    :cond_1
    sget-object v0, Lcom/mi/config/b;->Xn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isMTKPlatform()Z
    .locals 4

    sget-object v0, Lcom/mi/config/b;->Yn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/mi/config/b;->Yn:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/mi/config/b;->Yn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "vendor"

    invoke-static {v1}, Lcom/mi/config/d;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mi/config/b;->Yn:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v3, "mediatek"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/mi/config/b;->Yn:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isPad()Z
    .locals 2

    const-string v0, "is_pad"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportSuperResolution()Z
    .locals 2

    const-string v0, "support_super_resolution"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSupportedOpticalZoom()Z
    .locals 2

    const-string v0, "is_support_optical_zoom"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ji()Z
    .locals 2

    sget-object v0, Lcom/mi/config/b;->km:Ljava/lang/String;

    const-string v1, "raphael"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static jj()Z
    .locals 2

    const-string v0, "support_camera_burst_shoot"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ki()Z
    .locals 2

    const-string v0, "is_camera_freeze_after_hdr_capture"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static kj()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "support_camera_magic_mirror"

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static li()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "is_hrf_video_capture_support"

    invoke-static {v1, v0}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/mi/config/b;->isMTKPlatform()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static lj()Z
    .locals 2

    const-string v0, "support_camera_manual_function"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static mi()Z
    .locals 2

    const-string v0, "support_hfr_video_pause"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static mj()Z
    .locals 2

    invoke-static {}, Lcom/mi/config/b;->_h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "support_camera_movie_solid"

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static nj()Z
    .locals 1

    invoke-static {}, Lcom/mi/config/b;->Xh()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static oi()Z
    .locals 2

    const-string v0, "is_hal_does_caf_when_flash_on"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static oj()Z
    .locals 2

    const-string v0, "support_camera_new_style_time_water_mark"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static pi()Z
    .locals 2

    const-string v0, "is_camera_hold_blur_background"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static pj()Z
    .locals 2

    const-string v0, "support_object_track"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static qi()Z
    .locals 2

    sget-boolean v0, Lcom/mi/config/b;->vn:Z

    if-eqz v0, :cond_0

    const-string v0, "ro.boot.hwc"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "India"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static qj()Z
    .locals 2

    const-string v0, "support_camera_peaking_mf"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ri()Z
    .locals 2

    const-string v0, "is_camera_isp_rotated"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static rj()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "support_camera_quick_snap"

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static si()Z
    .locals 2

    const-string v0, "vendor"

    invoke-static {v0}, Lcom/mi/config/d;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "leadcore"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static sj()Z
    .locals 2

    const-string v0, "support_dual_sd_card"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ti()Z
    .locals 2

    const-string v0, "is_camera_lower_qrscan_frequency"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static tj()Z
    .locals 2

    const-string v0, "support_camera_shader_effect"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static ui()Z
    .locals 2

    const-string v0, "is_lower_size_effect"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static uj()Z
    .locals 2

    const-string v0, "support_camera_skin_beauty"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static v(Z)Z
    .locals 2

    const-string v0, "ro.miui.customized.region"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fr_sfr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public static vi()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static vj()Z
    .locals 2

    const-string v0, "is_support_stereo"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static wi()Z
    .locals 2

    sget-boolean v0, Lcom/mi/config/b;->Km:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "is_need_force_recycle_effect"

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static wj()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "is_support_tele_asd_night"

    invoke-static {v1, v0}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/mi/config/b;->aj()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static xi()Z
    .locals 2

    sget-boolean v0, Lcom/mi/config/b;->vm:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->Lm:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_HONGMI_TWOX:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/mi/config/b;->Bm:Z

    if-nez v0, :cond_0

    const-string v0, "is_new_hdr_param_key_used"

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static xj()Z
    .locals 2

    const-string v0, "support_camera_tilt_shift"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static yi()Z
    .locals 2

    const-string v0, "vendor"

    invoke-static {v0}, Lcom/mi/config/d;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nvidia"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static yj()Z
    .locals 2

    const-string v0, "support_camera_water_mark"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static zi()Z
    .locals 2

    const-string v0, "support_full_size_panorama"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static zj()Z
    .locals 2

    const-string v0, "support_camera_torch_capture"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/config/d;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
