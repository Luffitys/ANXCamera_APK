.class public Lmiui/securitycenter/powercenter/PowerRankHelper;
.super Ljava/lang/Object;
.source "PowerRankHelper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PowerRankHelper"


# instance fields
.field private final mAppUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/securitycenter/powercenter/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mMaxPower:D

.field private mMiscPower:D

.field private final mMiscUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/securitycenter/powercenter/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemAppUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/securitycenter/powercenter/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalPower:D

.field private mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMaxPower:D

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mAppUsageList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscUsageList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mSystemAppUsageList:Ljava/util/List;

    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-direct {v0, p1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x0

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mUm:Landroid/os/UserManager;

    iput-object p1, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addEntry(Lmiui/securitycenter/powercenter/BatterySipper;)V
    .registers 6

    iget-wide v0, p1, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    iget-wide v2, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMaxPower:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_c

    iget-wide v0, p1, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    iput-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMaxPower:D

    :cond_c
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mTotalPower:D

    iget-wide v2, p1, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mTotalPower:D

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscPower:D

    iget-wide v2, p1, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscPower:D

    iget-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscUsageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getAppUsageList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/securitycenter/powercenter/BatterySipper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mAppUsageList:Ljava/util/List;

    return-object v0
.end method

.method public getMiscUsageList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/securitycenter/powercenter/BatterySipper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscUsageList:Ljava/util/List;

    return-object v0
.end method

.method public getMiscUsageTotal()D
    .registers 3

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscPower:D

    return-wide v0
.end method

.method public getSystemAppUsageList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/securitycenter/powercenter/BatterySipper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mSystemAppUsageList:Ljava/util/List;

    return-object v0
.end method

.method public getUsageTotal()D
    .registers 3

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mTotalPower:D

    return-wide v0
.end method

.method public refreshStats()V
    .registers 13

    iget-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMaxPower:D

    iput-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mTotalPower:D

    iput-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscPower:D

    iget-object v2, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mAppUsageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscUsageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mSystemAppUsageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    :try_start_23
    iget-object v2, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getSystemAppUsageList"

    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v4, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatterySipper;

    iget-object v7, v6, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v8, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v7, v8, :cond_5c

    iget-object v7, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lmiui/securitycenter/powercenter/BatterySipperHelper;->makeBatterySipperForSystemApp(Landroid/content/Context;Lcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;

    move-result-object v7

    iget-object v8, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mSystemAppUsageList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_5c} :catch_5e

    :cond_5c
    goto :goto_3f

    :cond_5d
    goto :goto_5f

    :catch_5e
    move-exception v2

    :goto_5f
    iget-object v2, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v2

    iget-object v4, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mContext:Landroid/content/Context;

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lmiui/securitycenter/powercenter/BatterySipperHelper;->makeBatterySipper(Landroid/content/Context;ILcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_72
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_115

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatterySipper;

    iget-object v8, v6, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v9, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v8, v9, :cond_9a

    iget-object v7, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mContext:Landroid/content/Context;

    const/4 v8, 0x6

    invoke-static {v7, v8, v6}, Lmiui/securitycenter/powercenter/BatterySipperHelper;->makeBatterySipper(Landroid/content/Context;ILcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;

    move-result-object v7

    iget-wide v8, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mTotalPower:D

    iget-wide v10, v7, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    add-double/2addr v8, v10

    iput-wide v8, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mTotalPower:D

    iget-object v8, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mAppUsageList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_113

    :cond_9a
    iget-object v8, v6, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v9, Lcom/android/internal/os/BatterySipper$DrainType;->PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v8, v9, :cond_aa

    iget-object v8, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mContext:Landroid/content/Context;

    invoke-static {v8, v7, v6}, Lmiui/securitycenter/powercenter/BatterySipperHelper;->makeBatterySipper(Landroid/content/Context;ILcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;

    move-result-object v7

    invoke-direct {p0, v7}, Lmiui/securitycenter/powercenter/PowerRankHelper;->addEntry(Lmiui/securitycenter/powercenter/BatterySipper;)V

    goto :goto_113

    :cond_aa
    iget-object v7, v6, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v8, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v7, v8, :cond_bb

    iget-object v7, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mContext:Landroid/content/Context;

    const/4 v8, 0x5

    invoke-static {v7, v8, v6}, Lmiui/securitycenter/powercenter/BatterySipperHelper;->makeBatterySipper(Landroid/content/Context;ILcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;

    move-result-object v7

    invoke-direct {p0, v7}, Lmiui/securitycenter/powercenter/PowerRankHelper;->addEntry(Lmiui/securitycenter/powercenter/BatterySipper;)V

    goto :goto_113

    :cond_bb
    iget-object v7, v6, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v8, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v7, v8, :cond_cc

    iget-object v7, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mContext:Landroid/content/Context;

    const/4 v8, 0x3

    invoke-static {v7, v8, v6}, Lmiui/securitycenter/powercenter/BatterySipperHelper;->makeBatterySipper(Landroid/content/Context;ILcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;

    move-result-object v7

    invoke-direct {p0, v7}, Lmiui/securitycenter/powercenter/PowerRankHelper;->addEntry(Lmiui/securitycenter/powercenter/BatterySipper;)V

    goto :goto_113

    :cond_cc
    iget-object v7, v6, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v8, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v7, v8, :cond_dd

    iget-object v7, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mContext:Landroid/content/Context;

    const/4 v8, 0x4

    invoke-static {v7, v8, v6}, Lmiui/securitycenter/powercenter/BatterySipperHelper;->makeBatterySipper(Landroid/content/Context;ILcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;

    move-result-object v7

    invoke-direct {p0, v7}, Lmiui/securitycenter/powercenter/PowerRankHelper;->addEntry(Lmiui/securitycenter/powercenter/BatterySipper;)V

    goto :goto_113

    :cond_dd
    iget-object v7, v6, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v8, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v7, v8, :cond_ed

    iget-object v7, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mContext:Landroid/content/Context;

    invoke-static {v7, v3, v6}, Lmiui/securitycenter/powercenter/BatterySipperHelper;->makeBatterySipper(Landroid/content/Context;ILcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;

    move-result-object v7

    invoke-direct {p0, v7}, Lmiui/securitycenter/powercenter/PowerRankHelper;->addEntry(Lmiui/securitycenter/powercenter/BatterySipper;)V

    goto :goto_113

    :cond_ed
    iget-object v7, v6, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v8, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v7, v8, :cond_fe

    iget-object v7, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-static {v7, v8, v6}, Lmiui/securitycenter/powercenter/BatterySipperHelper;->makeBatterySipper(Landroid/content/Context;ILcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;

    move-result-object v7

    invoke-direct {p0, v7}, Lmiui/securitycenter/powercenter/PowerRankHelper;->addEntry(Lmiui/securitycenter/powercenter/BatterySipper;)V

    goto :goto_113

    :cond_fe
    iget-object v7, v6, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v8, Lcom/android/internal/os/BatterySipper$DrainType;->AMBIENT_DISPLAY:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v7, v8, :cond_110

    iget-object v7, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mContext:Landroid/content/Context;

    const/16 v8, 0xb

    invoke-static {v7, v8, v6}, Lmiui/securitycenter/powercenter/BatterySipperHelper;->makeBatterySipper(Landroid/content/Context;ILcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;

    move-result-object v7

    invoke-direct {p0, v7}, Lmiui/securitycenter/powercenter/PowerRankHelper;->addEntry(Lmiui/securitycenter/powercenter/BatterySipper;)V

    goto :goto_113

    :cond_110
    invoke-static {v4, v6}, Lmiui/securitycenter/powercenter/BatterySipperHelper;->addBatterySipper(Lmiui/securitycenter/powercenter/BatterySipper;Lcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;

    :goto_113
    goto/16 :goto_72

    :cond_115
    iget-wide v5, v4, Lmiui/securitycenter/powercenter/BatterySipper;->usageTime:J

    const-wide/16 v8, 0x0

    cmp-long v3, v5, v8

    if-lez v3, :cond_126

    iget-wide v5, v4, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    cmpl-double v0, v5, v0

    if-lez v0, :cond_126

    invoke-direct {p0, v4}, Lmiui/securitycenter/powercenter/PowerRankHelper;->addEntry(Lmiui/securitycenter/powercenter/BatterySipper;)V

    :cond_126
    iget-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mAppUsageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v7, :cond_133

    iget-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mAppUsageList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_133
    iget-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscUsageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v7, :cond_140

    iget-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscUsageList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_140
    return-void
.end method
