.class public Lmiui/securitycenter/powercenter/BatterySipper;
.super Ljava/lang/Object;
.source "BatterySipper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lmiui/securitycenter/powercenter/BatterySipper;",
        ">;"
    }
.end annotation


# static fields
.field static final AMBIENT_DISPLAY:I = 0xb

.field static final APP:I = 0x6

.field static final BLUETOOTH:I = 0x4

.field static final CAMERA:I = 0x9

.field static final CELL:I = 0x1

.field static final FLASHLIGHT:I = 0x7

.field static final IDLE:I = 0x0

.field static final OTHER:I = 0xa

.field static final PHONE:I = 0x2

.field static final SCREEN:I = 0x5

.field static final USER:I = 0x8

.field static final WIFI:I = 0x3


# instance fields
.field cpuFgTime:J

.field cpuTime:J

.field defaultPackageName:Ljava/lang/String;

.field drainType:I

.field gpsTime:J

.field mobileRxBytes:J

.field mobileTxBytes:J

.field name:Ljava/lang/String;

.field noCoveragePercent:D

.field uid:I

.field usageTime:J

.field value:D

.field wakeLockTime:J

.field wifiRunningTime:J

.field wifiRxBytes:J

.field wifiTxBytes:J


# direct methods
.method public constructor <init>(Landroid/content/Context;IID)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->uid:I

    iput p2, p0, Lmiui/securitycenter/powercenter/BatterySipper;->drainType:I

    iput-wide p4, p0, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    iput p3, p0, Lmiui/securitycenter/powercenter/BatterySipper;->uid:I

    invoke-direct {p0, p1}, Lmiui/securitycenter/powercenter/BatterySipper;->getNameAndPackageName(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;D)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->uid:I

    iput-object p2, p0, Lmiui/securitycenter/powercenter/BatterySipper;->defaultPackageName:Ljava/lang/String;

    const/16 v0, 0x3e8

    iput v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->uid:I

    const/4 v0, 0x6

    iput v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->drainType:I

    iput-wide p3, p0, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    invoke-direct {p0, p1, p2}, Lmiui/securitycenter/powercenter/BatterySipper;->getOfficialName(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getNameAndPackageName(Landroid/content/Context;)V
    .registers 11

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v1, p0, Lmiui/securitycenter/powercenter/BatterySipper;->uid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    array-length v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2b

    :try_start_12
    aget-object v2, v1, v4

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_24

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lmiui/securitycenter/powercenter/BatterySipper;->name:Ljava/lang/String;

    :cond_24
    aget-object v4, v1, v4

    iput-object v4, p0, Lmiui/securitycenter/powercenter/BatterySipper;->defaultPackageName:Ljava/lang/String;
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_28} :catch_29

    goto :goto_2a

    :catch_29
    move-exception v2

    :goto_2a
    goto :goto_51

    :cond_2b
    array-length v2, v1

    move v3, v4

    :goto_2d
    if-ge v3, v2, :cond_51

    aget-object v5, v1, v3

    :try_start_31
    invoke-virtual {v0, v5, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget v7, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v7, :cond_4c

    iget v7, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v5, v7, v8}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_49

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lmiui/securitycenter/powercenter/BatterySipper;->name:Ljava/lang/String;

    :cond_49
    iput-object v5, p0, Lmiui/securitycenter/powercenter/BatterySipper;->defaultPackageName:Ljava/lang/String;
    :try_end_4b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_31 .. :try_end_4b} :catch_4d

    goto :goto_51

    :cond_4c
    goto :goto_4e

    :catch_4d
    move-exception v6

    :goto_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_51
    :goto_51
    return-void
.end method

.method private getOfficialName(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_17

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lmiui/securitycenter/powercenter/BatterySipper;->name:Ljava/lang/String;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_16} :catch_18

    const/4 v1, 0x1

    :cond_17
    goto :goto_19

    :catch_18
    move-exception v3

    :goto_19
    if-nez v1, :cond_36

    :try_start_1b
    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v3, v2, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v3, :cond_34

    iget v3, v2, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p2, v3, v4}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_34

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/securitycenter/powercenter/BatterySipper;->name:Ljava/lang/String;
    :try_end_33
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_33} :catch_35

    const/4 v1, 0x1

    :cond_34
    goto :goto_36

    :catch_35
    move-exception v2

    :cond_36
    :goto_36
    if-nez v1, :cond_3c

    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatterySipper;->defaultPackageName:Ljava/lang/String;

    iput-object v2, p0, Lmiui/securitycenter/powercenter/BatterySipper;->name:Ljava/lang/String;

    :cond_3c
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lmiui/securitycenter/powercenter/BatterySipper;

    invoke-virtual {p0, p1}, Lmiui/securitycenter/powercenter/BatterySipper;->compareTo(Lmiui/securitycenter/powercenter/BatterySipper;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lmiui/securitycenter/powercenter/BatterySipper;)I
    .registers 6

    invoke-virtual {p1}, Lmiui/securitycenter/powercenter/BatterySipper;->getSortValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lmiui/securitycenter/powercenter/BatterySipper;->getSortValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public getDrainType()I
    .registers 2

    iget v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->drainType:I

    return v0
.end method

.method public getObjectValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    const-string v0, "name"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->name:Ljava/lang/String;

    return-object v0

    :cond_b
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1a
    const-string v0, "value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_29
    const-string v0, "drainType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->drainType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_38
    const-string v0, "usageTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->usageTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_47
    const-string v0, "cpuTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->cpuTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_56
    const-string v0, "gpsTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->gpsTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_65
    const-string v0, "wifiRunningTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->wifiRunningTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_74
    const-string v0, "cpuFgTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->cpuFgTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_83
    const-string v0, "wakeLockTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->wakeLockTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_92
    const-string v0, "mobileRxBytes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->mobileRxBytes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_a1
    const-string v0, "mobileTxBytes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->mobileTxBytes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_b0
    const-string v0, "noCoveragePercent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bf

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->noCoveragePercent:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_bf
    const-string v0, "defaultPackageName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ca

    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->defaultPackageName:Ljava/lang/String;

    return-object v0

    :cond_ca
    const-string v0, "wifiRxBytes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->wifiRxBytes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_d9
    const-string v0, "wifiTxBytes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->wifiTxBytes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_e8
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->defaultPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSortValue()D
    .registers 3

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    return-wide v0
.end method

.method public getUid()I
    .registers 2

    iget v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->uid:I

    return v0
.end method

.method public getValue()D
    .registers 3

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    return-wide v0
.end method
