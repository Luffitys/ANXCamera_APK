.class public final Landroid/os/PowerSaveState$Builder;
.super Ljava/lang/Object;
.source "PowerSaveState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerSaveState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBatterySaverEnabled:Z

.field private mBrightnessFactor:F

.field private mGlobalBatterySaverEnabled:Z

.field private mLocationMode:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/PowerSaveState$Builder;->mBatterySaverEnabled:Z

    iput-boolean v0, p0, Landroid/os/PowerSaveState$Builder;->mGlobalBatterySaverEnabled:Z

    iput v0, p0, Landroid/os/PowerSaveState$Builder;->mLocationMode:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroid/os/PowerSaveState$Builder;->mBrightnessFactor:F

    return-void
.end method

.method static synthetic access$000(Landroid/os/PowerSaveState$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/PowerSaveState$Builder;->mBatterySaverEnabled:Z

    return v0
.end method

.method static synthetic access$100(Landroid/os/PowerSaveState$Builder;)I
    .registers 2

    iget v0, p0, Landroid/os/PowerSaveState$Builder;->mLocationMode:I

    return v0
.end method

.method static synthetic access$200(Landroid/os/PowerSaveState$Builder;)F
    .registers 2

    iget v0, p0, Landroid/os/PowerSaveState$Builder;->mBrightnessFactor:F

    return v0
.end method

.method static synthetic access$300(Landroid/os/PowerSaveState$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/PowerSaveState$Builder;->mGlobalBatterySaverEnabled:Z

    return v0
.end method


# virtual methods
.method public build()Landroid/os/PowerSaveState;
    .registers 2

    new-instance v0, Landroid/os/PowerSaveState;

    invoke-direct {v0, p0}, Landroid/os/PowerSaveState;-><init>(Landroid/os/PowerSaveState$Builder;)V

    return-object v0
.end method

.method public setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/PowerSaveState$Builder;->mBatterySaverEnabled:Z

    return-object p0
.end method

.method public setBrightnessFactor(F)Landroid/os/PowerSaveState$Builder;
    .registers 2

    iput p1, p0, Landroid/os/PowerSaveState$Builder;->mBrightnessFactor:F

    return-object p0
.end method

.method public setGlobalBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/PowerSaveState$Builder;->mGlobalBatterySaverEnabled:Z

    return-object p0
.end method

.method public setLocationMode(I)Landroid/os/PowerSaveState$Builder;
    .registers 2

    iput p1, p0, Landroid/os/PowerSaveState$Builder;->mLocationMode:I

    return-object p0
.end method
