.class public Landroid/media/tv/tuner/filter/RecordSettings;
.super Landroid/media/tv/tuner/filter/Settings;
.source "RecordSettings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/filter/RecordSettings$Builder;,
        Landroid/media/tv/tuner/filter/RecordSettings$ScIndexMask;,
        Landroid/media/tv/tuner/filter/RecordSettings$ScHevcIndex;,
        Landroid/media/tv/tuner/filter/RecordSettings$ScIndex;,
        Landroid/media/tv/tuner/filter/RecordSettings$ScIndexType;,
        Landroid/media/tv/tuner/filter/RecordSettings$TsIndexMask;
    }
.end annotation


# static fields
.field public static final INDEX_TYPE_NONE:I = 0x0

.field public static final INDEX_TYPE_SC:I = 0x1

.field public static final INDEX_TYPE_SC_HEVC:I = 0x2

.field public static final SC_HEVC_INDEX_AUD:I = 0x2

.field public static final SC_HEVC_INDEX_SLICE_BLA_N_LP:I = 0x10

.field public static final SC_HEVC_INDEX_SLICE_BLA_W_RADL:I = 0x8

.field public static final SC_HEVC_INDEX_SLICE_CE_BLA_W_LP:I = 0x4

.field public static final SC_HEVC_INDEX_SLICE_IDR_N_LP:I = 0x40

.field public static final SC_HEVC_INDEX_SLICE_IDR_W_RADL:I = 0x20

.field public static final SC_HEVC_INDEX_SLICE_TRAIL_CRA:I = 0x80

.field public static final SC_HEVC_INDEX_SPS:I = 0x1

.field public static final SC_INDEX_B_FRAME:I = 0x4

.field public static final SC_INDEX_I_FRAME:I = 0x1

.field public static final SC_INDEX_P_FRAME:I = 0x2

.field public static final SC_INDEX_SEQUENCE:I = 0x8

.field public static final TS_INDEX_ADAPTATION_EXTENSION_FLAG:I = 0x1000

.field public static final TS_INDEX_CHANGE_TO_EVEN_SCRAMBLED:I = 0x8

.field public static final TS_INDEX_CHANGE_TO_NOT_SCRAMBLED:I = 0x4

.field public static final TS_INDEX_CHANGE_TO_ODD_SCRAMBLED:I = 0x10

.field public static final TS_INDEX_DISCONTINUITY_INDICATOR:I = 0x20

.field public static final TS_INDEX_FIRST_PACKET:I = 0x1

.field public static final TS_INDEX_OPCR_FLAG:I = 0x200

.field public static final TS_INDEX_PAYLOAD_UNIT_START_INDICATOR:I = 0x2

.field public static final TS_INDEX_PCR_FLAG:I = 0x100

.field public static final TS_INDEX_PRIORITY_INDICATOR:I = 0x80

.field public static final TS_INDEX_PRIVATE_DATA:I = 0x800

.field public static final TS_INDEX_RANDOM_ACCESS_INDICATOR:I = 0x40

.field public static final TS_INDEX_SPLICING_POINT_FLAG:I = 0x400


# instance fields
.field private final mScIndexMask:I

.field private final mScIndexType:I

.field private final mTsIndexMask:I


# direct methods
.method private constructor <init>(IIII)V
    .registers 6

    const/4 v0, 0x6

    invoke-static {p1, v0}, Landroid/media/tv/tuner/TunerUtils;->getFilterSubtype(II)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/tv/tuner/filter/Settings;-><init>(I)V

    iput p2, p0, Landroid/media/tv/tuner/filter/RecordSettings;->mTsIndexMask:I

    iput p3, p0, Landroid/media/tv/tuner/filter/RecordSettings;->mScIndexType:I

    iput p4, p0, Landroid/media/tv/tuner/filter/RecordSettings;->mScIndexMask:I

    return-void
.end method

.method synthetic constructor <init>(IIIILandroid/media/tv/tuner/filter/RecordSettings$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/tv/tuner/filter/RecordSettings;-><init>(IIII)V

    return-void
.end method

.method public static builder(I)Landroid/media/tv/tuner/filter/RecordSettings$Builder;
    .registers 3

    new-instance v0, Landroid/media/tv/tuner/filter/RecordSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/tv/tuner/filter/RecordSettings$Builder;-><init>(ILandroid/media/tv/tuner/filter/RecordSettings$1;)V

    return-object v0
.end method


# virtual methods
.method public getScIndexMask()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/RecordSettings;->mScIndexMask:I

    return v0
.end method

.method public getScIndexType()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/RecordSettings;->mScIndexType:I

    return v0
.end method

.method public getTsIndexMask()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/RecordSettings;->mTsIndexMask:I

    return v0
.end method
