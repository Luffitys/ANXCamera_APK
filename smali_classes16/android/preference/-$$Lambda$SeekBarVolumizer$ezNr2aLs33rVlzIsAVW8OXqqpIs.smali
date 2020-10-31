.class public final synthetic Landroid/preference/-$$Lambda$SeekBarVolumizer$ezNr2aLs33rVlzIsAVW8OXqqpIs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Landroid/preference/-$$Lambda$SeekBarVolumizer$ezNr2aLs33rVlzIsAVW8OXqqpIs;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/preference/-$$Lambda$SeekBarVolumizer$ezNr2aLs33rVlzIsAVW8OXqqpIs;

    invoke-direct {v0}, Landroid/preference/-$$Lambda$SeekBarVolumizer$ezNr2aLs33rVlzIsAVW8OXqqpIs;-><init>()V

    sput-object v0, Landroid/preference/-$$Lambda$SeekBarVolumizer$ezNr2aLs33rVlzIsAVW8OXqqpIs;->INSTANCE:Landroid/preference/-$$Lambda$SeekBarVolumizer$ezNr2aLs33rVlzIsAVW8OXqqpIs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/media/audiopolicy/AudioProductStrategy;

    invoke-static {p1}, Landroid/preference/SeekBarVolumizer;->lambda$getVolumeGroupIdForLegacyStreamType$0(Landroid/media/audiopolicy/AudioProductStrategy;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
