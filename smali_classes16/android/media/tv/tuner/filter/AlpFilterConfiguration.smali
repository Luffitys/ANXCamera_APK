.class public final Landroid/media/tv/tuner/filter/AlpFilterConfiguration;
.super Landroid/media/tv/tuner/filter/FilterConfiguration;
.source "AlpFilterConfiguration.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;,
        Landroid/media/tv/tuner/filter/AlpFilterConfiguration$LengthType;
    }
.end annotation


# static fields
.field public static final LENGTH_TYPE_UNDEFINED:I = 0x0

.field public static final LENGTH_TYPE_WITHOUT_ADDITIONAL_HEADER:I = 0x1

.field public static final LENGTH_TYPE_WITH_ADDITIONAL_HEADER:I = 0x2

.field public static final PACKET_TYPE_COMPRESSED:I = 0x2

.field public static final PACKET_TYPE_EXTENSION:I = 0x6

.field public static final PACKET_TYPE_IPV4:I = 0x0

.field public static final PACKET_TYPE_MPEG2_TS:I = 0x7

.field public static final PACKET_TYPE_SIGNALING:I = 0x4


# instance fields
.field private final mLengthType:I

.field private final mPacketType:I


# direct methods
.method private constructor <init>(Landroid/media/tv/tuner/filter/Settings;II)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/FilterConfiguration;-><init>(Landroid/media/tv/tuner/filter/Settings;)V

    iput p2, p0, Landroid/media/tv/tuner/filter/AlpFilterConfiguration;->mPacketType:I

    iput p3, p0, Landroid/media/tv/tuner/filter/AlpFilterConfiguration;->mLengthType:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/tuner/filter/Settings;IILandroid/media/tv/tuner/filter/AlpFilterConfiguration$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/media/tv/tuner/filter/AlpFilterConfiguration;-><init>(Landroid/media/tv/tuner/filter/Settings;II)V

    return-void
.end method

.method public static builder()Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;
    .registers 2

    new-instance v0, Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;-><init>(Landroid/media/tv/tuner/filter/AlpFilterConfiguration$1;)V

    return-object v0
.end method


# virtual methods
.method public getLengthType()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/AlpFilterConfiguration;->mLengthType:I

    return v0
.end method

.method public getPacketType()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/AlpFilterConfiguration;->mPacketType:I

    return v0
.end method

.method public getType()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method
