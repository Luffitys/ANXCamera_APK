.class public final Landroid/media/tv/tuner/filter/TlvFilterConfiguration;
.super Landroid/media/tv/tuner/filter/FilterConfiguration;
.source "TlvFilterConfiguration.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final PACKET_TYPE_COMPRESSED:I = 0x3

.field public static final PACKET_TYPE_IPV4:I = 0x1

.field public static final PACKET_TYPE_IPV6:I = 0x2

.field public static final PACKET_TYPE_NULL:I = 0xff

.field public static final PACKET_TYPE_SIGNALING:I = 0xfe


# instance fields
.field private final mIsCompressedIpPacket:Z

.field private final mPacketType:I

.field private final mPassthrough:Z


# direct methods
.method private constructor <init>(Landroid/media/tv/tuner/filter/Settings;IZZ)V
    .registers 5

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/FilterConfiguration;-><init>(Landroid/media/tv/tuner/filter/Settings;)V

    iput p2, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration;->mPacketType:I

    iput-boolean p3, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration;->mIsCompressedIpPacket:Z

    iput-boolean p4, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration;->mPassthrough:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/tuner/filter/Settings;IZZLandroid/media/tv/tuner/filter/TlvFilterConfiguration$1;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/tv/tuner/filter/TlvFilterConfiguration;-><init>(Landroid/media/tv/tuner/filter/Settings;IZZ)V

    return-void
.end method

.method public static builder()Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;
    .registers 2

    new-instance v0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;-><init>(Landroid/media/tv/tuner/filter/TlvFilterConfiguration$1;)V

    return-object v0
.end method


# virtual methods
.method public getPacketType()I
    .registers 2

    iget v0, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration;->mPacketType:I

    return v0
.end method

.method public getType()I
    .registers 2

    const/16 v0, 0x8

    return v0
.end method

.method public isCompressedIpPacket()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration;->mIsCompressedIpPacket:Z

    return v0
.end method

.method public isPassthrough()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration;->mPassthrough:Z

    return v0
.end method
