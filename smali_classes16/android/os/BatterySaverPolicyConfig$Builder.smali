.class public final Landroid/os/BatterySaverPolicyConfig$Builder;
.super Ljava/lang/Object;
.source "BatterySaverPolicyConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatterySaverPolicyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAdjustBrightnessFactor:F

.field private mAdvertiseIsEnabled:Z

.field private mDeferFullBackup:Z

.field private mDeferKeyValueBackup:Z

.field private final mDeviceSpecificSettings:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDisableAnimation:Z

.field private mDisableAod:Z

.field private mDisableLaunchBoost:Z

.field private mDisableOptionalSensors:Z

.field private mDisableSoundTrigger:Z

.field private mDisableVibration:Z

.field private mEnableAdjustBrightness:Z

.field private mEnableDataSaver:Z

.field private mEnableFirewall:Z

.field private mEnableNightMode:Z

.field private mEnableQuickDoze:Z

.field private mForceAllAppsStandby:Z

.field private mForceBackgroundCheck:Z

.field private mLocationMode:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mAdjustBrightnessFactor:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mAdvertiseIsEnabled:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeferFullBackup:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeferKeyValueBackup:Z

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeviceSpecificSettings:Landroid/util/ArrayMap;

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableAnimation:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableAod:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableLaunchBoost:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableOptionalSensors:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableSoundTrigger:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableVibration:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableAdjustBrightness:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableDataSaver:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableFirewall:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableNightMode:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableQuickDoze:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mForceAllAppsStandby:Z

    iput-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mForceBackgroundCheck:Z

    iput v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mLocationMode:I

    return-void
.end method

.method static synthetic access$000(Landroid/os/BatterySaverPolicyConfig$Builder;)F
    .registers 2

    iget v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mAdjustBrightnessFactor:F

    return v0
.end method

.method static synthetic access$100(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mAdvertiseIsEnabled:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableVibration:Z

    return v0
.end method

.method static synthetic access$1100(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableAdjustBrightness:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableDataSaver:Z

    return v0
.end method

.method static synthetic access$1300(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableFirewall:Z

    return v0
.end method

.method static synthetic access$1400(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableNightMode:Z

    return v0
.end method

.method static synthetic access$1500(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableQuickDoze:Z

    return v0
.end method

.method static synthetic access$1600(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mForceAllAppsStandby:Z

    return v0
.end method

.method static synthetic access$1700(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mForceBackgroundCheck:Z

    return v0
.end method

.method static synthetic access$1800(Landroid/os/BatterySaverPolicyConfig$Builder;)I
    .registers 2

    iget v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mLocationMode:I

    return v0
.end method

.method static synthetic access$200(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeferFullBackup:Z

    return v0
.end method

.method static synthetic access$300(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeferKeyValueBackup:Z

    return v0
.end method

.method static synthetic access$400(Landroid/os/BatterySaverPolicyConfig$Builder;)Landroid/util/ArrayMap;
    .registers 2

    iget-object v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeviceSpecificSettings:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$500(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableAnimation:Z

    return v0
.end method

.method static synthetic access$600(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableAod:Z

    return v0
.end method

.method static synthetic access$700(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableLaunchBoost:Z

    return v0
.end method

.method static synthetic access$800(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableOptionalSensors:Z

    return v0
.end method

.method static synthetic access$900(Landroid/os/BatterySaverPolicyConfig$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableSoundTrigger:Z

    return v0
.end method


# virtual methods
.method public addDeviceSpecificSetting(Ljava/lang/String;Ljava/lang/String;)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 5

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeviceSpecificSettings:Landroid/util/ArrayMap;

    invoke-static {p2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Landroid/os/BatterySaverPolicyConfig;
    .registers 3

    new-instance v0, Landroid/os/BatterySaverPolicyConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/BatterySaverPolicyConfig;-><init>(Landroid/os/BatterySaverPolicyConfig$Builder;Landroid/os/BatterySaverPolicyConfig$1;)V

    return-object v0
.end method

.method public setAdjustBrightnessFactor(F)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mAdjustBrightnessFactor:F

    return-object p0
.end method

.method public setAdvertiseIsEnabled(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mAdvertiseIsEnabled:Z

    return-object p0
.end method

.method public setDeferFullBackup(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeferFullBackup:Z

    return-object p0
.end method

.method public setDeferKeyValueBackup(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDeferKeyValueBackup:Z

    return-object p0
.end method

.method public setDisableAnimation(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableAnimation:Z

    return-object p0
.end method

.method public setDisableAod(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableAod:Z

    return-object p0
.end method

.method public setDisableLaunchBoost(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableLaunchBoost:Z

    return-object p0
.end method

.method public setDisableOptionalSensors(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableOptionalSensors:Z

    return-object p0
.end method

.method public setDisableSoundTrigger(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableSoundTrigger:Z

    return-object p0
.end method

.method public setDisableVibration(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mDisableVibration:Z

    return-object p0
.end method

.method public setEnableAdjustBrightness(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableAdjustBrightness:Z

    return-object p0
.end method

.method public setEnableDataSaver(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableDataSaver:Z

    return-object p0
.end method

.method public setEnableFirewall(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableFirewall:Z

    return-object p0
.end method

.method public setEnableNightMode(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableNightMode:Z

    return-object p0
.end method

.method public setEnableQuickDoze(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mEnableQuickDoze:Z

    return-object p0
.end method

.method public setForceAllAppsStandby(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mForceAllAppsStandby:Z

    return-object p0
.end method

.method public setForceBackgroundCheck(Z)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mForceBackgroundCheck:Z

    return-object p0
.end method

.method public setLocationMode(I)Landroid/os/BatterySaverPolicyConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/os/BatterySaverPolicyConfig$Builder;->mLocationMode:I

    return-object p0
.end method
