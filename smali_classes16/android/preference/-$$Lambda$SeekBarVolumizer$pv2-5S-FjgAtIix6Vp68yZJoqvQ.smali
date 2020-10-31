.class public final synthetic Landroid/preference/-$$Lambda$SeekBarVolumizer$pv2-5S-FjgAtIix6Vp68yZJoqvQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Landroid/preference/-$$Lambda$SeekBarVolumizer$pv2-5S-FjgAtIix6Vp68yZJoqvQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/preference/-$$Lambda$SeekBarVolumizer$pv2-5S-FjgAtIix6Vp68yZJoqvQ;

    invoke-direct {v0}, Landroid/preference/-$$Lambda$SeekBarVolumizer$pv2-5S-FjgAtIix6Vp68yZJoqvQ;-><init>()V

    sput-object v0, Landroid/preference/-$$Lambda$SeekBarVolumizer$pv2-5S-FjgAtIix6Vp68yZJoqvQ;->INSTANCE:Landroid/preference/-$$Lambda$SeekBarVolumizer$pv2-5S-FjgAtIix6Vp68yZJoqvQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Landroid/preference/SeekBarVolumizer;->lambda$getVolumeGroupIdForLegacyStreamType$1(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method
