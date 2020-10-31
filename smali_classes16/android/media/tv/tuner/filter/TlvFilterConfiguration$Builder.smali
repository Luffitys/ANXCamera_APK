.class public final Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;
.super Ljava/lang/Object;
.source "TlvFilterConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/filter/TlvFilterConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mIsCompressedIpPacket:Z

.field private mPacketType:I

.field private mPassthrough:Z

.field private mSettings:Landroid/media/tv/tuner/filter/Settings;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mPacketType:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mIsCompressedIpPacket:Z

    iput-boolean v0, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mPassthrough:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/tuner/filter/TlvFilterConfiguration$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/tuner/filter/TlvFilterConfiguration;
    .registers 8

    new-instance v6, Landroid/media/tv/tuner/filter/TlvFilterConfiguration;

    iget-object v1, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mSettings:Landroid/media/tv/tuner/filter/Settings;

    iget v2, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mPacketType:I

    iget-boolean v3, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mIsCompressedIpPacket:Z

    iget-boolean v4, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mPassthrough:Z

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/media/tv/tuner/filter/TlvFilterConfiguration;-><init>(Landroid/media/tv/tuner/filter/Settings;IZZLandroid/media/tv/tuner/filter/TlvFilterConfiguration$1;)V

    return-object v6
.end method

.method public setCompressedIpPacket(Z)Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mIsCompressedIpPacket:Z

    return-object p0
.end method

.method public setPacketType(I)Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mPacketType:I

    return-object p0
.end method

.method public setPassthrough(Z)Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mPassthrough:Z

    return-object p0
.end method

.method public setSettings(Landroid/media/tv/tuner/filter/Settings;)Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;
    .registers 2

    iput-object p1, p0, Landroid/media/tv/tuner/filter/TlvFilterConfiguration$Builder;->mSettings:Landroid/media/tv/tuner/filter/Settings;

    return-object p0
.end method
