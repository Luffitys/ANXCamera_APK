.class public final Landroid/net/wifi/WifiMigration$SettingsMigrationData;
.super Ljava/lang/Object;
.source "WifiMigration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiMigration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SettingsMigrationData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiMigration$SettingsMigrationData$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiMigration$SettingsMigrationData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mP2pDeviceName:Ljava/lang/String;

.field private final mP2pFactoryResetPending:Z

.field private final mScanAlwaysAvailable:Z

.field private final mScanThrottleEnabled:Z

.field private final mSoftApTimeoutEnabled:Z

.field private final mVerboseLoggingEnabled:Z

.field private final mWakeupEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/net/wifi/WifiMigration$SettingsMigrationData$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiMigration$SettingsMigrationData$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;ZZZZ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mScanAlwaysAvailable:Z

    iput-boolean p2, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mP2pFactoryResetPending:Z

    iput-object p3, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mP2pDeviceName:Ljava/lang/String;

    iput-boolean p4, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mSoftApTimeoutEnabled:Z

    iput-boolean p5, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mWakeupEnabled:Z

    iput-boolean p6, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mScanThrottleEnabled:Z

    iput-boolean p7, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mVerboseLoggingEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(ZZLjava/lang/String;ZZZZLandroid/net/wifi/WifiMigration$1;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Landroid/net/wifi/WifiMigration$SettingsMigrationData;-><init>(ZZLjava/lang/String;ZZZZ)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getP2pDeviceName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mP2pDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public isP2pFactoryResetPending()Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mP2pFactoryResetPending:Z

    return v0
.end method

.method public isScanAlwaysAvailable()Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mScanAlwaysAvailable:Z

    return v0
.end method

.method public isScanThrottleEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mScanThrottleEnabled:Z

    return v0
.end method

.method public isSoftApTimeoutEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mSoftApTimeoutEnabled:Z

    return v0
.end method

.method public isVerboseLoggingEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mVerboseLoggingEnabled:Z

    return v0
.end method

.method public isWakeUpEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mWakeupEnabled:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-boolean v0, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mScanAlwaysAvailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mP2pFactoryResetPending:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mP2pDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mSoftApTimeoutEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mWakeupEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mScanThrottleEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/net/wifi/WifiMigration$SettingsMigrationData;->mVerboseLoggingEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
