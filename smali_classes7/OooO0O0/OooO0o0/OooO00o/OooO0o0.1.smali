.class public LOooO0O0/OooO0o0/OooO00o/OooO0o0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final OooO:Z

.field public static final OooO00o:Ljava/lang/String;

.field public static final OooO0O0:Ljava/lang/String; = "qcom"

.field public static final OooO0OO:Ljava/lang/String; = "mediatek"

.field private static final OooO0Oo:I = 0x64

.field public static final OooO0o:Z

.field public static final OooO0o0:Ljava/lang/String;

.field public static final OooO0oO:Z

.field public static final OooO0oo:Z

.field public static final OooOO0:Z

.field public static final OooOO0O:Z

.field public static final OooOO0o:Z

.field public static final OooOOO:Z

.field public static final OooOOO0:Z

.field public static final OooOOOO:Z

.field public static final OooOOOo:Z

.field public static final OooOOo:Z

.field public static final OooOOo0:Z

.field public static final OooOOoo:Z

.field public static final OooOo:Z

.field public static final OooOo0:Z

.field public static final OooOo00:Z

.field public static final OooOo0O:Z

.field public static final OooOo0o:Z

.field public static final OooOoO:Z

.field public static final OooOoO0:Z

.field public static final OooOoOO:Z

.field public static final OooOoo:Z

.field public static final OooOoo0:Z

.field public static final OooOooO:Z

.field public static final OooOooo:Z

.field public static final Oooo:Z

.field public static final Oooo0:Z

.field public static final Oooo000:Z

.field public static final Oooo00O:Z

.field public static final Oooo00o:Z

.field public static final Oooo0O0:Z

.field public static final Oooo0OO:Z

.field public static final Oooo0o:Z

.field public static final Oooo0o0:Z

.field public static final Oooo0oO:Z

.field public static final Oooo0oo:Z

.field public static final OoooO:Z

.field public static final OoooO0:Z

.field public static final OoooO00:Z

.field public static final OoooO0O:Z

.field public static final OoooOO0:Z

.field public static final OoooOOO:Z

.field public static final OoooOOo:Z

.field public static final OoooOo0:Z

.field private static final OoooOoO:I = 0x1

.field private static final OoooOoo:I = 0x4

.field private static final Ooooo00:I = 0x8

.field private static Ooooo0o:Ljava/util/ArrayList; = null

.field private static final OooooO0:[Ljava/lang/String;

.field private static final OooooOO:Ljava/lang/String; = "ro.boot.hwversion"

.field private static final OooooOo:Ljava/util/concurrent/atomic/AtomicReference;

.field public static final o000oOoO:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    sget-object v0, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO0o0:Ljava/lang/String;

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v1, "beryllium"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO0o:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v1, "lavender"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO0oO:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v1, "violet"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO0oo:Z

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->Oooo0oo()Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO:Z

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o0000O0O()Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOO0:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v1, "polaris"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOO0O:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v1, "sirius"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOO0o:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v1, "dipper"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOOO0:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v1, "andromeda"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOOO:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v1, "perseus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOOOO:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v1, "cepheus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOOOo:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v1, "raphael"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOOo0:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v1, "grus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOOo:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v1, "begonia"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOOoo:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v1, "phoenix"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "phoenixin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOo00:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "begoniain"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOo0:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "ginkgo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOo0O:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "pyxis"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOo0o:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "vela"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOo:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "laurus"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOoO0:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "laurel_sprout"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOoO:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "tucana"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOoOO:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "umi"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOoo0:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "cmi"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOoo:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "cas"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOooO:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "apollo"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "apolloin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v2

    :goto_3
    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOooo:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "bomb"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "banana"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v0, v1

    goto :goto_5

    :cond_5
    :goto_4
    move v0, v2

    :goto_5
    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->Oooo000:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "lmi"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "lmiin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    move v0, v1

    goto :goto_7

    :cond_7
    :goto_6
    move v0, v2

    :goto_7
    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->Oooo00O:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "lmipro"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "lmiinpro"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    move v0, v1

    goto :goto_9

    :cond_9
    :goto_8
    move v0, v2

    :goto_9
    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->Oooo00o:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "draco"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->Oooo0:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "picasso"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v4, "picassoin"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_a

    :cond_a
    move v0, v1

    goto :goto_b

    :cond_b
    :goto_a
    move v0, v2

    :goto_b
    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->Oooo0O0:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v4, "monet"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v4, "monetin"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_c

    :cond_c
    move v0, v1

    goto :goto_d

    :cond_d
    :goto_c
    move v0, v2

    :goto_d
    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->Oooo0OO:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v4, "vangogh"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->Oooo0o0:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->Oooo0o:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "gauguin"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "gauguinpro"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "gauguininpro"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_e

    :cond_e
    move v0, v1

    goto :goto_f

    :cond_f
    :goto_e
    move v0, v2

    :goto_f
    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->Oooo0oO:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "cezanne"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->Oooo0oo:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "crux"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->Oooo:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "curtana"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "durandal"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "excalibur"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "joyeuse"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "gram"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_10

    :cond_10
    move v0, v1

    goto :goto_11

    :cond_11
    :goto_10
    move v0, v2

    :goto_11
    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OoooO00:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "dandelion"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OoooO0:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "angelica"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "angelican"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "angelicain"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "cattail"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_12

    :cond_12
    move v0, v1

    goto :goto_13

    :cond_13
    :goto_12
    move v0, v2

    :goto_13
    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OoooO0O:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "merlin"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "merlinnfc"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_14

    :cond_14
    move v0, v1

    goto :goto_15

    :cond_15
    :goto_14
    move v0, v2

    :goto_15
    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OoooO:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "cannon"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v3, "cannong"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    move v1, v2

    :cond_17
    sput-boolean v1, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OoooOO0:Z

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o000oOoO:Z

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OoooOOO:Z

    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OoooOOo:Z

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v1, "venus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OoooOo0:Z

    const-string v0, "KR"

    const-string v1, "JP"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooooO0:[Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooooOo:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO()[I
    .locals 4

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->Oooo0o0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-array v0, v2, [I

    return-object v0

    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [I

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static OooO00o()Z
    .locals 1

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OoooOOO:Z

    if-nez v0, :cond_0

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooO00o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static OooO0O0()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooOO0()Z

    move-result v0

    return v0
.end method

.method public static OooO0OO()F
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooOOOO()F

    move-result v0

    return v0
.end method

.method public static OooO0Oo()I
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->OooOo0o()I

    move-result v0

    return v0
.end method

.method public static OooO0o()Ljava/util/ArrayList;
    .locals 2

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->Ooooo0o:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->Ooooo0o:Ljava/util/ArrayList;

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO0oO()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->Ooooo0o:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->Ooooo0o:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static OooO0o0()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/camera/Util;->sRegion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static OooO0oO()[Ljava/lang/String;
    .locals 2

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->Oooo00O()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static OooO0oo()I
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->Oooo0OO()I

    move-result v0

    return v0
.end method

.method public static OooOO0()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->oo0o0Oo()Z

    move-result v0

    return v0
.end method

.method public static OooOO0O()Z
    .locals 2

    invoke-static {}, Lcom/android/camera/Display;->getWindowHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/android/camera/Display;->getWindowWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O0O00()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static OooOO0o()Z
    .locals 2

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOo0O()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000ooO0()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO0o()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO0o()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public static OooOOO()Z
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO0o0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooooO0(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static OooOOO0()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o000o()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOo00:Z

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

.method public static OooOOOO()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0000Ooo()Z

    move-result v0

    return v0
.end method

.method public static OooOOOo()Z
    .locals 2

    const-string v0, "ro.boot.hwversion"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->Oooo:Z

    if-eqz v1, :cond_1

    const-string v1, "7.1.7"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "7.2.0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static OooOOo()Z
    .locals 2

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO0oO:Z

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

.method public static OooOOo0()Z
    .locals 3

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

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

.method public static OooOOoo()Z
    .locals 2

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO0oO:Z

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

.method public static OooOo()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0000OO0()Z

    move-result v0

    return v0
.end method

.method public static OooOo0()Z
    .locals 1

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOO0O:Z

    return v0
.end method

.method private static OooOo00()Z
    .locals 2

    const-string v0, "ro.hardware.fp.fod"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static OooOo0O()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0000O0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOo00()Z

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

.method public static OooOo0o()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOooO()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOo0o:Z

    if-nez v0, :cond_1

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOOo:Z

    if-nez v0, :cond_1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00o000o()Z

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

.method public static OooOoO()Z
    .locals 2

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->Oooo0o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "picasso_48m"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static OooOoO0()Z
    .locals 1

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOOoo:Z

    if-nez v0, :cond_1

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOo0:Z

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

.method public static OooOoOO()Z
    .locals 6

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->Oooo0o:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    const-string v2, "3.9.3"

    const-string v3, "3.9.5"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "ro.boot.hwversion"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move v4, v1

    :goto_0
    if-ge v4, v0, :cond_2

    aget-object v5, v2, v4

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static OooOoo()Z
    .locals 2

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v1, "equuleus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static OooOoo0()Z
    .locals 1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    return v0
.end method

.method public static OooOooO()Z
    .locals 1

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOOOO:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static OooOooo()Z
    .locals 1

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOOOo:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static Oooo()Z
    .locals 2

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO0o:Z

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

.method public static Oooo0()Z
    .locals 1

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOoOO:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static Oooo000()Z
    .locals 2

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v1, "davinci"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static Oooo00O()Z
    .locals 2

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v1, "raphael"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static Oooo00o()Z
    .locals 1

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOo0o:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static Oooo0O0()Z
    .locals 2

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v1, "toco"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static Oooo0OO()Z
    .locals 2

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v1, "lmi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static Oooo0o()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0000Oo0()Z

    move-result v0

    return v0
.end method

.method public static Oooo0o0()Z
    .locals 1

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OoooO:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static Oooo0oO()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0000OoO()Z

    move-result v0

    return v0
.end method

.method public static Oooo0oo()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0000o0()Z

    move-result v0

    return v0
.end method

.method public static OoooO()Z
    .locals 3

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOoOO:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    const-string v2, "03"

    if-lt v0, v1, :cond_1

    const-string v0, "persist.vendor.camera.rearMain.vendorID"

    :goto_0
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    const-string v0, "persist.camera.rearMain.vendorID"

    goto :goto_0
.end method

.method public static OoooO0()Z
    .locals 2

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OoooO00:Z

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

.method public static OoooO00()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0000o0O()Z

    move-result v0

    return v0
.end method

.method public static OoooO0O()Z
    .locals 1

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->Oooo00O:Z

    if-nez v0, :cond_1

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->Oooo00o:Z

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

.method public static OoooOO0()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0000oO0()Z

    move-result v0

    return v0
.end method

.method public static OoooOOO()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000O0o()Z

    move-result v0

    return v0
.end method

.method public static OoooOOo()Z
    .locals 2

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO00o:Ljava/lang/String;

    const-string v1, "raphael"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Premium Edition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static OoooOo0()Z
    .locals 1

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOoOO:Z

    if-eqz v0, :cond_0

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OoooO()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static OoooOoO()Z
    .locals 2

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o0000o0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "qcom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static OoooOoo()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000Oo0()Z

    move-result v0

    return v0
.end method

.method public static Ooooo00()Z
    .locals 1

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOoo:Z

    if-nez v0, :cond_1

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOoo0:Z

    if-nez v0, :cond_1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OoooO0O()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OoooO00:Z

    if-nez v0, :cond_1

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->Oooo0oO:Z

    if-nez v0, :cond_1

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->Oooo0OO:Z

    if-nez v0, :cond_1

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->Oooo0o0:Z

    if-nez v0, :cond_1

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->Oooo0O0:Z

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

.method public static Ooooo0o()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000O00()Z

    move-result v0

    return v0
.end method

.method private static OooooO0(Ljava/lang/String;)Z
    .locals 5

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooooO0:[Ljava/lang/String;

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

.method public static OooooOO()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000O0oO()Z

    move-result v0

    return v0
.end method

.method public static OooooOo()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000OO00()Z

    move-result v0

    return v0
.end method

.method public static Oooooo()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000oo0o()Z

    move-result v0

    return v0
.end method

.method public static Oooooo0()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000o00()Z

    move-result v0

    return v0
.end method

.method public static OoooooO()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o000ooo()Z

    move-result v0

    return v0
.end method

.method public static Ooooooo()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00()Z

    move-result v0

    return v0
.end method

.method public static o0000()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OooOO()Z

    move-result v0

    return v0
.end method

.method public static o00000()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OoOO()Z

    move-result v0

    return v0
.end method

.method public static o000000()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OoO00()Z

    move-result v0

    return v0
.end method

.method public static o000000O()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OoO0()Z

    move-result v0

    return v0
.end method

.method public static o000000o()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OoO()Z

    move-result v0

    return v0
.end method

.method public static o00000O()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OoOOo()Z

    move-result v0

    return v0
.end method

.method public static o00000O0()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OoOOO()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static o00000OO()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OoOo0()Z

    move-result v0

    return v0
.end method

.method public static o00000Oo()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OoOo()Z

    move-result v0

    return v0
.end method

.method public static o00000o0()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OoOoo()Z

    move-result v0

    return v0
.end method

.method public static o00000oO()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00Ooo0o()Z

    move-result v0

    return v0
.end method

.method public static o00000oo()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OooO0()Z

    move-result v0

    return v0
.end method

.method public static o0000O(Z)Z
    .locals 3

    const-string v0, "ro.miui.customized.region"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fr_sfr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const-string v1, "fr_orange"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "jp_kd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "es_vodafone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO0o0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    return p0

    :cond_2
    :goto_0
    return v2
.end method

.method public static o0000O0()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o000O()Z

    move-result v0

    return v0
.end method

.method public static o0000O00()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OooOo()Z

    move-result v0

    return v0
.end method

.method public static o0000O0O()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o000o()Z

    move-result v0

    return v0
.end method

.method public static o0000OO()I
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oo000()I

    move-result v0

    return v0
.end method

.method public static o0000OO0()I
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o0OOO()I

    move-result v0

    return v0
.end method

.method public static o0000OOO()Z
    .locals 2

    const-string v0, "ro.boot.camera.config"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static o0000OOo()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO()[I

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static o0000Oo()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00oo()Z

    move-result v0

    return v0
.end method

.method public static o0000Oo0()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00oO000()Z

    move-result v0

    return v0
.end method

.method public static o0000OoO()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00ooOo()Z

    move-result v0

    return v0
.end method

.method public static o0000Ooo()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00Ooo0O()Z

    move-result v0

    return v0
.end method

.method public static o0000o0()Ljava/lang/String;
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0ooOoOO()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static o0000oO()Z
    .locals 1

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOO0:Z

    if-nez v0, :cond_0

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static o0000oo()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0O00o0()Z

    move-result v0

    return v0
.end method

.method public static o000OO()Z
    .locals 4

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00o00o()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/android/camera/Util;->TOTAL_MEMORY_GB:J

    const-wide/16 v2, 0x6

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static o000OOo()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOOO()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static o000oOoO()Z
    .locals 4

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooooOo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooooOo:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    sget-object v1, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooooOo:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o0000o0()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooooOo:Ljava/util/concurrent/atomic/AtomicReference;

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
    sget-object v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooooOo:Ljava/util/concurrent/atomic/AtomicReference;

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

.method public static o00O0O()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0OO()Z

    move-result v0

    return v0
.end method

.method public static o00Oo0()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooooOo()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o00O0O()Z

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

.method public static o00Ooo()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O0o0O()Z

    move-result v0

    return v0
.end method

.method public static o00o0O()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000Oo00()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooO:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static o00oO0O()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o0000OO()I

    move-result v0

    and-int/lit8 v0, v0, 0xd

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static o00oO0o()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0o0Oo()Z

    move-result v0

    return v0
.end method

.method public static o00ooo()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OO00O()Z

    move-result v0

    return v0
.end method

.method public static o0O0O00()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->OooOOo0()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00Oo()Z

    move-result v0

    return v0
.end method

.method public static o0OO00O()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00Oo0oo()Z

    move-result v0

    return v0
.end method

.method public static o0OOO0o()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00Oo00()Z

    move-result v0

    return v0
.end method

.method public static o0Oo0oo()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00Oo0oO()Z

    move-result v0

    return v0
.end method

.method public static o0OoOo0()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00O00()Z

    move-result v0

    return v0
.end method

.method public static o0ooOO0()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00OOooo()Z

    move-result v0

    return v0
.end method

.method public static o0ooOOo()Z
    .locals 2

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0o0;->o0000OO()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static o0ooOoO()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o00Oo000()Z

    move-result v0

    return v0
.end method

.method public static oo000o()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00OO00o()Z

    move-result v0

    return v0
.end method

.method public static oo0o0Oo()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->OooOo()Lcom/mi/device/Common;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/device/Common;->o0oOO()Z

    move-result v0

    return v0
.end method

.method public static ooOO()Z
    .locals 1

    invoke-static {}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o000000O()LOooO0O0/OooO0o0/OooO00o/OooO0Oo;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0o0/OooO00o/OooO0Oo;->o00O000()Z

    move-result v0

    return v0
.end method
