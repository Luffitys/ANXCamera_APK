.class public final Landroid/media/tv/tuner/filter/TsFilterConfiguration$Builder;
.super Ljava/lang/Object;
.source "TsFilterConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/tuner/filter/TsFilterConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mSettings:Landroid/media/tv/tuner/filter/Settings;

.field private mTpid:I


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/tv/tuner/filter/TsFilterConfiguration$Builder;->mTpid:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/tuner/filter/TsFilterConfiguration$1;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/TsFilterConfiguration$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/tuner/filter/TsFilterConfiguration;
    .registers 5

    new-instance v0, Landroid/media/tv/tuner/filter/TsFilterConfiguration;

    iget-object v1, p0, Landroid/media/tv/tuner/filter/TsFilterConfiguration$Builder;->mSettings:Landroid/media/tv/tuner/filter/Settings;

    iget v2, p0, Landroid/media/tv/tuner/filter/TsFilterConfiguration$Builder;->mTpid:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/tv/tuner/filter/TsFilterConfiguration;-><init>(Landroid/media/tv/tuner/filter/Settings;ILandroid/media/tv/tuner/filter/TsFilterConfiguration$1;)V

    return-object v0
.end method

.method public setSettings(Landroid/media/tv/tuner/filter/Settings;)Landroid/media/tv/tuner/filter/TsFilterConfiguration$Builder;
    .registers 2

    iput-object p1, p0, Landroid/media/tv/tuner/filter/TsFilterConfiguration$Builder;->mSettings:Landroid/media/tv/tuner/filter/Settings;

    return-object p0
.end method

.method public setTpid(I)Landroid/media/tv/tuner/filter/TsFilterConfiguration$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/tuner/filter/TsFilterConfiguration$Builder;->mTpid:I

    return-object p0
.end method
