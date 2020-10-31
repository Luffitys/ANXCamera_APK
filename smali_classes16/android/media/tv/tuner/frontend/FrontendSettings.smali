.class public abstract Landroid/media/tv/tuner/frontend/FrontendSettings;
.super Ljava/lang/Object;
.source "FrontendSettings.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/frontend/FrontendSettings$InnerFec;,
        Landroid/media/tv/tuner/frontend/FrontendSettings$Type;
    }
.end annotation


# static fields
.field public static final FEC_11_15:J = 0x400000L

.field public static final FEC_11_20:J = 0x800000L

.field public static final FEC_11_45:J = 0x1000000L

.field public static final FEC_13_18:J = 0x2000000L

.field public static final FEC_13_45:J = 0x4000000L

.field public static final FEC_14_45:J = 0x8000000L

.field public static final FEC_1_2:J = 0x2L

.field public static final FEC_1_3:J = 0x4L

.field public static final FEC_1_4:J = 0x8L

.field public static final FEC_1_5:J = 0x10L

.field public static final FEC_23_36:J = 0x10000000L

.field public static final FEC_25_36:J = 0x20000000L

.field public static final FEC_26_45:J = 0x40000000L

.field public static final FEC_28_45:J = -0x80000000L

.field public static final FEC_29_45:J = 0x1L

.field public static final FEC_2_3:J = 0x20L

.field public static final FEC_2_5:J = 0x40L

.field public static final FEC_2_9:J = 0x80L

.field public static final FEC_31_45:J = 0x2L

.field public static final FEC_32_45:J = 0x4L

.field public static final FEC_3_4:J = 0x100L

.field public static final FEC_3_5:J = 0x200L

.field public static final FEC_4_15:J = 0x800L

.field public static final FEC_4_5:J = 0x400L

.field public static final FEC_5_6:J = 0x1000L

.field public static final FEC_5_9:J = 0x2000L

.field public static final FEC_6_7:J = 0x4000L

.field public static final FEC_77_90:J = 0x8L

.field public static final FEC_7_15:J = 0x20000L

.field public static final FEC_7_8:J = 0x8000L

.field public static final FEC_7_9:J = 0x10000L

.field public static final FEC_8_15:J = 0x80000L

.field public static final FEC_8_9:J = 0x40000L

.field public static final FEC_9_10:J = 0x100000L

.field public static final FEC_9_20:J = 0x200000L

.field public static final FEC_AUTO:J = 0x1L

.field public static final FEC_UNDEFINED:J = 0x0L

.field public static final TYPE_ANALOG:I = 0x1

.field public static final TYPE_ATSC:I = 0x2

.field public static final TYPE_ATSC3:I = 0x3

.field public static final TYPE_DVBC:I = 0x4

.field public static final TYPE_DVBS:I = 0x5

.field public static final TYPE_DVBT:I = 0x6

.field public static final TYPE_ISDBS:I = 0x7

.field public static final TYPE_ISDBS3:I = 0x8

.field public static final TYPE_ISDBT:I = 0x9

.field public static final TYPE_UNDEFINED:I


# instance fields
.field private final mFrequency:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/tv/tuner/frontend/FrontendSettings;->mFrequency:I

    return-void
.end method


# virtual methods
.method public getFrequency()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/frontend/FrontendSettings;->mFrequency:I

    return v0
.end method

.method public abstract getType()I
.end method
