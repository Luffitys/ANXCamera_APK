.class public final Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;
.super Ljava/lang/Object;
.source "AlpFilterConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/filter/AlpFilterConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mLengthType:I

.field private mPacketType:I

.field private mSettings:Landroid/media/tv/tuner/filter/Settings;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;->mPacketType:I

    iput v0, p0, Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;->mLengthType:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/tuner/filter/AlpFilterConfiguration$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/tuner/filter/AlpFilterConfiguration;
    .registers 6

    new-instance v0, Landroid/media/tv/tuner/filter/AlpFilterConfiguration;

    iget-object v1, p0, Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;->mSettings:Landroid/media/tv/tuner/filter/Settings;

    iget v2, p0, Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;->mPacketType:I

    iget v3, p0, Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;->mLengthType:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/tv/tuner/filter/AlpFilterConfiguration;-><init>(Landroid/media/tv/tuner/filter/Settings;IILandroid/media/tv/tuner/filter/AlpFilterConfiguration$1;)V

    return-object v0
.end method

.method public setLengthType(I)Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;->mLengthType:I

    return-object p0
.end method

.method public setPacketType(I)Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;->mPacketType:I

    return-object p0
.end method

.method public setSettings(Landroid/media/tv/tuner/filter/Settings;)Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;
    .registers 2

    iput-object p1, p0, Landroid/media/tv/tuner/filter/AlpFilterConfiguration$Builder;->mSettings:Landroid/media/tv/tuner/filter/Settings;

    return-object p0
.end method
