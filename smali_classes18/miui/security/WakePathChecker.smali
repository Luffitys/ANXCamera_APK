.class public Lmiui/security/WakePathChecker;
.super Ljava/lang/Object;
.source "WakePathChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/security/WakePathChecker$WakePathRuleData;
    }
.end annotation


# static fields
.field private static final CALL_LIST_LOG_MAP_MAX_SIZE:I = 0xc8

.field private static final GET_CONTENT_PROVIDER_RULE_INFOS_LIST_INDEX:I = 0x2

.field private static final GET_CONTENT_PROVIDER_RULE_INFOS_WHITELIST_INDEX:I = 0x6

.field private static final RULE_INFOS_LIST_COUNT:I = 0x8

.field private static final SEND_BROADCAST_RULE_INFOS_LIST_INDEX:I = 0x1

.field private static final SEND_BROADCAST_RULE_INFOS_WHITELIST_INDEX:I = 0x5

.field private static final START_ACTIVITY_RULE_INFOS_LIST_INDEX:I = 0x0

.field private static final START_ACTIVITY_RULE_INFOS_WHITELIST_INDEX:I = 0x4

.field private static final START_SERVICE_RULE_INFOS_LIST_INDEX:I = 0x3

.field private static final START_SERVICE_RULE_INFOS_WHITELIST_INDEX:I = 0x7

.field private static final TAG:Ljava/lang/String;

.field public static final WAKEPATH_CONFIRM_DIALOG_WHITELIST_TYPE_CALLEE:I = 0x1

.field public static final WAKEPATH_CONFIRM_DIALOG_WHITELIST_TYPE_CALLER:I = 0x2

.field private static sInstance:Lmiui/security/WakePathChecker;


# instance fields
.field private mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private mBindServiceCheckActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCallListLogLocker:Ljava/lang/Object;

.field mCallListLogMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lmiui/security/WakePathRuleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/internal/app/IWakePathCallback;

.field mLauncherPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/IPackageManager;

.field private mSupportWakePathV2:Z

.field mTrackCallListLogEnabled:Z

.field private mUpdatePkgsEnable:Z

.field private mUpdatePkgsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserWakePathRuleDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lmiui/security/WakePathChecker$WakePathRuleData;",
            ">;"
        }
    .end annotation
.end field

.field private mWakePathCallerWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWakePathConfirmDialogWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lmiui/security/WakePathChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsEnable:Z

    iput-boolean v0, p0, Lmiui/security/WakePathChecker;->mSupportWakePathV2:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mCallListLogLocker:Ljava/lang/Object;

    sget-boolean v1, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathCallerWhiteList:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mBindServiceCheckActions:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    iget-boolean v1, p0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    if-eqz v1, :cond_53

    new-instance v1, Ljava/util/HashMap;

    const/16 v3, 0xc8

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    :cond_53
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    const-string v3, "com.mfashiongallery.express"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    const-string v3, "com.mi.dlabs.vr.thor"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathCallerWhiteList:Ljava/util/List;

    const-string v3, "com.miui.home"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathCallerWhiteList:Ljava/util/List;

    const-string v3, "com.miui.securitycenter"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lmiui/security/WakePathChecker;->mBindServiceCheckActions:Ljava/util/List;

    const-string v3, "miui.action.CAMERA_EMPTY_SERVICE"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lmiui/security/WakePathChecker;->mBindServiceCheckActions:Ljava/util/List;

    const-string v3, "android.media.browse.MediaBrowserService"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "appops"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v3

    iput-object v3, p0, Lmiui/security/WakePathChecker;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iput-object v3, p0, Lmiui/security/WakePathChecker;->mPackageManager:Landroid/content/pm/IPackageManager;

    :try_start_8f
    const-string v4, "com.lbe.security.miui"

    invoke-interface {v3, v4, v0, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    const/16 v4, 0x7e

    if-lt v3, v4, :cond_9d

    iput-boolean v2, p0, Lmiui/security/WakePathChecker;->mSupportWakePathV2:Z
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_9d} :catch_9e

    :cond_9d
    goto :goto_a6

    :catch_9e
    move-exception v0

    sget-object v2, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    const-string v3, "get lbeInfo exception!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a6
    return-void
.end method

.method static synthetic access$000(Lmiui/security/WakePathChecker;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/security/WakePathChecker;->updateLauncherPackageNames(Landroid/content/Context;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lmiui/security/WakePathChecker;
    .registers 2

    const-class v0, Lmiui/security/WakePathChecker;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lmiui/security/WakePathChecker;->sInstance:Lmiui/security/WakePathChecker;

    if-nez v1, :cond_e

    new-instance v1, Lmiui/security/WakePathChecker;

    invoke-direct {v1}, Lmiui/security/WakePathChecker;-><init>()V

    sput-object v1, Lmiui/security/WakePathChecker;->sInstance:Lmiui/security/WakePathChecker;

    :cond_e
    sget-object v1, Lmiui/security/WakePathChecker;->sInstance:Lmiui/security/WakePathChecker;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getWakePathRuleDataByUser(I)Lmiui/security/WakePathChecker$WakePathRuleData;
    .registers 6

    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, -0x1

    if-ne p1, v0, :cond_a

    :cond_9
    const/4 p1, 0x0

    :cond_a
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_d
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/security/WakePathChecker$WakePathRuleData;

    if-nez v1, :cond_2a

    new-instance v2, Lmiui/security/WakePathChecker$WakePathRuleData;

    invoke-direct {v2, p0}, Lmiui/security/WakePathChecker$WakePathRuleData;-><init>(Lmiui/security/WakePathChecker;)V

    move-object v1, v2

    iget-object v2, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    monitor-exit v0

    return-object v1

    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private matchWakePathRuleInfos(Lmiui/security/WakePathChecker$WakePathRuleData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 23

    const/4 v0, 0x0

    move-object v1, p0

    move/from16 v8, p6

    invoke-direct {p0, v8}, Lmiui/security/WakePathChecker;->wakeTypeToRuleInfosListIndex(I)I

    move-result v9

    const/4 v10, 0x0

    if-ltz v9, :cond_4d

    const/16 v2, 0x8

    if-lt v9, v2, :cond_12

    move-object/from16 v11, p1

    goto :goto_4f

    :cond_12
    move-object/from16 v11, p1

    iget-object v2, v11, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathRuleInfosList:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_26

    goto :goto_4c

    :cond_26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    const/4 v2, 0x0

    move v13, v2

    :goto_2c
    if-ge v13, v12, :cond_4b

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lmiui/security/WakePathRuleInfo;

    move-object v2, v14

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lmiui/security/WakePathRuleInfo;->equals(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_48

    const/4 v2, 0x1

    return v2

    :cond_48
    add-int/lit8 v13, v13, 0x1

    goto :goto_2c

    :cond_4b
    return v10

    :cond_4c
    :goto_4c
    return v10

    :cond_4d
    move-object/from16 v11, p1

    :goto_4f
    sget-object v2, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    const-string v3, "MIUILOG-WAKEPATH invalid parameter"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10
.end method

.method private shouldBlockServiceAndProvider(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_3
    iget-object v3, p0, Lmiui/security/WakePathChecker;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, v2, p3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    move-object v0, v3

    iget-object v3, p0, Lmiui/security/WakePathChecker;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p2, v2, p3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_10} :catch_12

    move-object v1, v3

    goto :goto_1a

    :catch_12
    move-exception v3

    sget-object v4, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    const-string v5, "get PackageInfo exception!"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1a
    if-eqz v0, :cond_48

    if-eqz v1, :cond_48

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/16 v5, 0x2710

    if-le v3, v5, :cond_46

    if-le v4, v5, :cond_46

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5

    if-nez v5, :cond_46

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5

    if-nez v5, :cond_46

    const/4 v2, 0x1

    goto :goto_47

    :cond_46
    nop

    :goto_47
    return v2

    :cond_48
    return v2
.end method

.method private trackCallListInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 23

    move-object/from16 v1, p0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    iget-object v11, v1, Lmiui/security/WakePathChecker;->mCallListLogLocker:Ljava/lang/Object;

    monitor-enter v11

    :try_start_9
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c3

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move/from16 v15, p5

    goto/16 :goto_c9

    :cond_1d
    iget-object v0, v1, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    if-eqz v0, :cond_bb

    iget-object v0, v1, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_2d

    monitor-exit v11

    return-void

    :cond_2d
    invoke-static/range {p1 .. p4}, Lmiui/security/WakePathRuleInfo;->getHashCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v12, v0

    if-nez v12, :cond_7d

    sget-object v0, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIUILOG-WAKEPATH trackCallListInfo: hashCode == 0,(action ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_40
    .catchall {:try_start_9 .. :try_end_40} :catchall_e9

    move-object/from16 v13, p1

    :try_start_42
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " className="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_7a

    move-object/from16 v14, p2

    :try_start_4c
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callee="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " wakeType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_64
    .catchall {:try_start_4c .. :try_end_64} :catchall_77

    move/from16 v15, p5

    :try_start_66
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v11

    return-void

    :catchall_77
    move-exception v0

    goto/16 :goto_ee

    :catchall_7a
    move-exception v0

    goto/16 :goto_ec

    :cond_7d
    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move/from16 v15, p5

    iget-object v0, v1, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/WakePathRuleInfo;
    :try_end_8f
    .catchall {:try_start_66 .. :try_end_8f} :catchall_f2

    move-object/from16 v16, v0

    if-nez v16, :cond_c1

    :try_start_93
    new-instance v0, Lmiui/security/WakePathRuleInfo;

    const/4 v8, 0x0

    move-object v2, v0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v2 .. v8}, Lmiui/security/WakePathRuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_a4} :catch_a9
    .catchall {:try_start_93 .. :try_end_a4} :catchall_f2

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    goto :goto_af

    :catch_a9
    move-exception v0

    :try_start_aa
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object/from16 v0, v16

    :goto_af
    if-eqz v0, :cond_c1

    iget-object v2, v1, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c1

    :cond_bb
    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move/from16 v15, p5

    :cond_c1
    :goto_c1
    monitor-exit v11

    return-void

    :cond_c3
    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move/from16 v15, p5

    :goto_c9
    sget-object v0, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIUILOG-WAKEPATH trackCallListInfo: invalid parameter caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callee="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v11

    return-void

    :catchall_e9
    move-exception v0

    move-object/from16 v13, p1

    :goto_ec
    move-object/from16 v14, p2

    :goto_ee
    move/from16 v15, p5

    :goto_f0
    monitor-exit v11
    :try_end_f1
    .catchall {:try_start_aa .. :try_end_f1} :catchall_f2

    throw v0

    :catchall_f2
    move-exception v0

    goto :goto_f0
.end method

.method private updateLauncherPackageNames(Landroid/content/Context;)V
    .registers 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v6, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateLauncherPackageNames ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_4b} :catch_4e

    nop

    goto :goto_1e

    :cond_4d
    goto :goto_56

    :catch_4e
    move-exception v2

    sget-object v3, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    const-string v4, "updateLauncherPackageNames"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_56
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    monitor-enter v2

    :try_start_59
    iget-object v3, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7b

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_68
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_68

    :cond_7b
    monitor-exit v2

    return-void

    :catchall_7d
    move-exception v3

    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_59 .. :try_end_7f} :catchall_7d

    throw v3
.end method

.method private wakeTypeToRuleInfosListIndex(I)I
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2d

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2b

    const/4 v1, 0x4

    if-eq p1, v1, :cond_29

    const/16 v1, 0x8

    if-eq p1, v1, :cond_27

    const/16 v1, 0x20

    if-eq p1, v1, :cond_25

    const/16 v1, 0x40

    if-eq p1, v1, :cond_23

    const/16 v1, 0x80

    if-eq p1, v1, :cond_21

    const/16 v1, 0x100

    if-eq p1, v1, :cond_1f

    goto :goto_2f

    :cond_1f
    const/4 v0, 0x7

    goto :goto_2f

    :cond_21
    const/4 v0, 0x6

    goto :goto_2f

    :cond_23
    const/4 v0, 0x5

    goto :goto_2f

    :cond_25
    const/4 v0, 0x4

    goto :goto_2f

    :cond_27
    const/4 v0, 0x3

    goto :goto_2f

    :cond_29
    const/4 v0, 0x2

    goto :goto_2f

    :cond_2b
    const/4 v0, 0x1

    goto :goto_2f

    :cond_2d
    const/4 v0, 0x0

    nop

    :goto_2f
    return v0
.end method


# virtual methods
.method public checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 16

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_93

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_93

    :cond_f
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    monitor-enter v0

    :try_start_12
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    monitor-exit v0

    return v1

    :cond_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_90

    iget-object v2, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    monitor-enter v2

    :try_start_20
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mLauncherPackageNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    monitor-exit v2

    return v1

    :cond_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_8d

    iget-object v0, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;

    monitor-enter v0

    :try_start_2e
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    monitor-exit v0

    return v1

    :cond_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_8a

    invoke-direct {p0, p4}, Lmiui/security/WakePathChecker;->getWakePathRuleDataByUser(I)Lmiui/security/WakePathChecker$WakePathRuleData;

    move-result-object v2

    monitor-enter v2

    :try_start_3e
    iget-object v0, v2, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    if-eqz v0, :cond_61

    iget-object v0, v2, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_61

    iget-object v0, v2, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    const/4 v6, 0x1

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    const/4 v9, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v8, p4

    invoke-virtual/range {v3 .. v9}, Lmiui/security/WakePathChecker;->recordWakePathCall(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    monitor-exit v2

    return v1

    :cond_61
    iget-object v0, v2, Lmiui/security/WakePathChecker$WakePathRuleData;->mAllowedStartActivityRulesMap:Ljava/util/Map;

    if-eqz v0, :cond_84

    iget-object v0, v2, Lmiui/security/WakePathChecker$WakePathRuleData;->mAllowedStartActivityRulesMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_84

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    const/4 v7, 0x1

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const/4 v10, 0x1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v9, p4

    invoke-virtual/range {v4 .. v10}, Lmiui/security/WakePathChecker;->recordWakePathCall(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    monitor-exit v2

    return v1

    :cond_84
    monitor-exit v2

    const/4 v0, 0x0

    return v0

    :catchall_87
    move-exception v0

    monitor-exit v2
    :try_end_89
    .catchall {:try_start_3e .. :try_end_89} :catchall_87

    throw v0

    :catchall_8a
    move-exception v1

    :try_start_8b
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw v1

    :catchall_8d
    move-exception v0

    :try_start_8e
    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v0

    :catchall_90
    move-exception v1

    :try_start_91
    monitor-exit v0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw v1

    :cond_93
    :goto_93
    return v1
.end method

.method public checkBroadcastWakePath(Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ResolveInfo;I)Z
    .registers 23

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const/4 v2, 0x1

    if-eqz p1, :cond_70

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_70

    :cond_e
    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const/4 v6, -0x1

    const/4 v7, -0x1

    if-eqz p1, :cond_32

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_32

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :cond_32
    if-eqz v1, :cond_4e

    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_4e

    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_4a

    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_4a
    iget-object v8, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :cond_4e
    if-eqz v0, :cond_52

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_52
    move-object/from16 v15, p2

    invoke-static {v3, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5b

    return v2

    :cond_5b
    const/16 v16, 0x2

    move-object/from16 v8, p0

    move-object v9, v4

    move-object v10, v5

    move-object/from16 v11, p2

    move-object v12, v3

    move v13, v6

    move v14, v7

    move/from16 v15, v16

    move/from16 v16, p5

    invoke-virtual/range {v8 .. v16}, Lmiui/security/WakePathChecker;->matchWakePathRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Z

    move-result v8

    xor-int/2addr v2, v8

    return v2

    :cond_70
    :goto_70
    return v2
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "========================================WAKEPATH DUMP BEGIN========================================"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_8
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    monitor-enter v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_ca

    :try_start_b
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_c5

    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/security/WakePathChecker$WakePathRuleData;

    const-string v4, "----------------------------------------"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez v3, :cond_39

    goto :goto_1d

    :cond_39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v4, v3, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    if-eqz v4, :cond_6c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "whitelist="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_71

    :cond_6c
    const-string v4, "whitelist is null."

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_71
    const/4 v4, 0x0

    :goto_72
    const/16 v5, 0x8

    if-ge v4, v5, :cond_c3

    iget-object v5, v3, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathRuleInfosList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_98

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rule info index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " size=0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c0

    :cond_98
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rule info index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathRuleInfosList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_c0
    add-int/lit8 v4, v4, 0x1

    goto :goto_72

    :cond_c3
    goto/16 :goto_1d

    :cond_c5
    monitor-exit v0

    goto :goto_d2

    :catchall_c7
    move-exception v1

    monitor-exit v0
    :try_end_c9
    .catchall {:try_start_b .. :try_end_c9} :catchall_c7

    :try_start_c9
    throw v1
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_ca} :catch_ca

    :catch_ca
    move-exception v0

    sget-object v1, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    const-string v2, "dump"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d2
    const-string v0, "========================================WAKEPATH DUMP END========================================"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getWakePathCallListLog()Landroid/content/pm/ParceledListSlice;
    .registers 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    if-eqz v1, :cond_22

    iget-object v1, p0, Lmiui/security/WakePathChecker;->mCallListLogLocker:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    iget-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    if-eqz v2, :cond_1d

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v2

    iget-object v2, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    :cond_1d
    monitor-exit v1

    goto :goto_22

    :catchall_1f
    move-exception v2

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_1f

    throw v2

    :cond_22
    :goto_22
    if-nez v0, :cond_26

    const/4 v1, 0x0

    return-object v1

    :cond_26
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lmiui/security/WakePathChecker;->updateLauncherPackageNames(Landroid/content/Context;)V

    return-void
.end method

.method public matchWakePathRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Z
    .registers 17

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lmiui/security/WakePathChecker;->matchWakePathRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Z

    move-result v0

    return v0
.end method

.method public matchWakePathRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Z
    .registers 30

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v8, p8

    invoke-static {v13, v15}, Lmiui/security/AppRunningControlManager;->matchRule(Ljava/lang/String;I)Z

    move-result v0

    const/4 v7, 0x1

    if-eqz v0, :cond_56

    sget-object v0, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppRunningControl, Reject userId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " caller= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " callee= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " classname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " wakeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_56
    iget-boolean v0, v9, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    if-eqz v0, :cond_69

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lmiui/security/WakePathChecker;->trackCallListInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_69
    invoke-direct {v9, v8}, Lmiui/security/WakePathChecker;->getWakePathRuleDataByUser(I)Lmiui/security/WakePathChecker$WakePathRuleData;

    move-result-object v6

    monitor-enter v6

    :try_start_6e
    iget-object v0, v9, Lmiui/security/WakePathChecker;->mWakePathCallerWhiteList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/16 v16, 0x0

    if-nez v0, :cond_2c9

    iget-object v0, v6, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;
    :try_end_7a
    .catchall {:try_start_6e .. :try_end_7a} :catchall_2e3

    if-eqz v0, :cond_97

    :try_start_7c
    iget-object v0, v6, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_97

    iget-object v0, v6, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_8a
    .catchall {:try_start_7c .. :try_end_8a} :catchall_91

    if-eqz v0, :cond_97

    move-object/from16 v19, v6

    move v9, v8

    goto/16 :goto_2cc

    :catchall_91
    move-exception v0

    move-object/from16 v19, v6

    move v9, v8

    goto/16 :goto_2e7

    :cond_97
    const/16 v5, 0x2718

    const/16 v4, 0x8

    if-ne v15, v4, :cond_150

    if-lez v14, :cond_150

    if-eqz v13, :cond_150

    :try_start_a1
    iget-object v0, v9, Lmiui/security/WakePathChecker;->mBindServiceCheckActions:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_145

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    if-nez v0, :cond_141

    iget-object v0, v9, Lmiui/security/WakePathChecker;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-eqz v0, :cond_141

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_b7
    .catchall {:try_start_a1 .. :try_end_b7} :catchall_149

    move-wide/from16 v17, v0

    :try_start_b9
    iget-object v0, v9, Lmiui/security/WakePathChecker;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, v5, v14, v13}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_121

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_c5} :catch_12c
    .catchall {:try_start_b9 .. :try_end_c5} :catchall_128

    const/16 v20, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p7

    move/from16 v5, v19

    move-object/from16 v19, v6

    move/from16 v6, p8

    move v14, v7

    move/from16 v7, v20

    :try_start_d8
    invoke-virtual/range {v1 .. v7}, Lmiui/security/WakePathChecker;->recordWakePathCall(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    sget-object v1, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIUILOG-AutoStart, BindService Reject userId= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " caller= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callee= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " classname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " wakeType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_119} :catch_11f
    .catchall {:try_start_d8 .. :try_end_119} :catchall_13b

    nop

    :try_start_11a
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v19

    return v14

    :catch_11f
    move-exception v0

    goto :goto_130

    :cond_121
    move-object/from16 v19, v6

    move v14, v7

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_127
    .catchall {:try_start_11a .. :try_end_127} :catchall_2c4

    :goto_127
    goto :goto_153

    :catchall_128
    move-exception v0

    move-object/from16 v19, v6

    goto :goto_13c

    :catch_12c
    move-exception v0

    move-object/from16 v19, v6

    move v14, v7

    :goto_130
    :try_start_130
    sget-object v1, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    const-string v2, "checkOperation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_137
    .catchall {:try_start_130 .. :try_end_137} :catchall_13b

    :try_start_137
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_127

    :catchall_13b
    move-exception v0

    :goto_13c
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v0

    :cond_141
    move-object/from16 v19, v6

    move v14, v7

    goto :goto_153

    :cond_145
    move-object/from16 v19, v6

    move v14, v7

    goto :goto_153

    :catchall_149
    move-exception v0

    move-object/from16 v19, v6

    move/from16 v14, p6

    goto/16 :goto_2e6

    :cond_150
    move-object/from16 v19, v6

    move v14, v7

    :goto_153
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_241

    iget-boolean v0, v9, Lmiui/security/WakePathChecker;->mSupportWakePathV2:Z
    :try_end_159
    .catchall {:try_start_137 .. :try_end_159} :catchall_2c4

    if-eqz v0, :cond_241

    const/16 v1, 0x8

    if-eq v15, v1, :cond_16b

    const/4 v0, 0x4

    if-eq v15, v0, :cond_16b

    const/4 v0, 0x2

    if-ne v15, v0, :cond_166

    goto :goto_16b

    :cond_166
    move/from16 v14, p6

    move v9, v8

    goto/16 :goto_244

    :cond_16b
    :goto_16b
    move v7, v14

    move/from16 v14, p6

    if-lez v14, :cond_243

    if-eqz v13, :cond_243

    :try_start_172
    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    if-nez v0, :cond_23b

    iget-object v0, v9, Lmiui/security/WakePathChecker;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-eqz v0, :cond_23b

    iget-object v0, v9, Lmiui/security/WakePathChecker;->mPackageManager:Landroid/content/pm/IPackageManager;

    if-eqz v0, :cond_23b

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_184
    .catchall {:try_start_172 .. :try_end_184} :catchall_23d

    move-wide/from16 v17, v0

    :try_start_186
    invoke-direct {v9, v12, v13, v8}, Lmiui/security/WakePathChecker;->shouldBlockServiceAndProvider(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_223

    iget-object v0, v9, Lmiui/security/WakePathChecker;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v1, 0x2718

    invoke-interface {v0, v1, v14, v13}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0
    :try_end_194
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_194} :catch_22b
    .catchall {:try_start_186 .. :try_end_194} :catchall_228

    if-eqz v0, :cond_221

    shl-int/lit8 v20, v15, 0x5

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move v9, v7

    move/from16 v7, v20

    move v9, v8

    move/from16 v8, p8

    :try_start_1aa
    invoke-direct/range {v1 .. v8}, Lmiui/security/WakePathChecker;->matchWakePathRuleInfos(Lmiui/security/WakePathChecker$WakePathRuleData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1c8

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p7

    move/from16 v6, p8

    invoke-virtual/range {v1 .. v7}, Lmiui/security/WakePathChecker;->recordWakePathCall(Ljava/lang/String;Ljava/lang/String;IIIZ)V
    :try_end_1c2
    .catch Ljava/lang/Exception; {:try_start_1aa .. :try_end_1c2} :catch_21f
    .catchall {:try_start_1aa .. :try_end_1c2} :catchall_235

    nop

    :try_start_1c3
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v19
    :try_end_1c7
    .catchall {:try_start_1c3 .. :try_end_1c7} :catchall_2e9

    return v16

    :cond_1c8
    :try_start_1c8
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p7

    move/from16 v6, p8

    invoke-virtual/range {v1 .. v7}, Lmiui/security/WakePathChecker;->recordWakePathCall(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    sget-object v1, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIUILOG-AutoStart, Service/Provider/Broadcast Reject userId= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " caller= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " callee= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " classname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " wakeType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_218
    .catch Ljava/lang/Exception; {:try_start_1c8 .. :try_end_218} :catch_21f
    .catchall {:try_start_1c8 .. :try_end_218} :catchall_235

    nop

    :try_start_219
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v19

    const/4 v1, 0x1

    return v1

    :catch_21f
    move-exception v0

    goto :goto_22d

    :cond_221
    move v9, v8

    goto :goto_224

    :cond_223
    move v9, v8

    :goto_224
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_227
    .catchall {:try_start_219 .. :try_end_227} :catchall_2e9

    goto :goto_244

    :catchall_228
    move-exception v0

    move v9, v8

    goto :goto_236

    :catch_22b
    move-exception v0

    move v9, v8

    :goto_22d
    :try_start_22d
    sget-object v1, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    const-string v2, "checkOperation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_234
    .catchall {:try_start_22d .. :try_end_234} :catchall_235

    goto :goto_224

    :catchall_235
    move-exception v0

    :goto_236
    :try_start_236
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    throw v0

    :cond_23b
    move v9, v8

    goto :goto_244

    :catchall_23d
    move-exception v0

    move v9, v8

    goto/16 :goto_2e7

    :cond_241
    move/from16 v14, p6

    :cond_243
    move v9, v8

    :goto_244
    move-object/from16 v1, p0

    move-object/from16 v2, v19

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lmiui/security/WakePathChecker;->matchWakePathRuleInfos(Lmiui/security/WakePathChecker$WakePathRuleData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2ad

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p7

    move/from16 v6, p8

    invoke-virtual/range {v1 .. v7}, Lmiui/security/WakePathChecker;->recordWakePathCall(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    sget-object v0, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MIUILOG-WAKEPATH: call was rejected by wakepath. userId= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " caller= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " callee= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " classname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " wakeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v19

    const/4 v1, 0x1

    return v1

    :cond_2ad
    const/4 v1, 0x1

    if-eq v15, v1, :cond_2c2

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p7

    move/from16 v6, p8

    invoke-virtual/range {v1 .. v7}, Lmiui/security/WakePathChecker;->recordWakePathCall(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    :cond_2c2
    monitor-exit v19

    return v16

    :catchall_2c4
    move-exception v0

    move/from16 v14, p6

    move v9, v8

    goto :goto_2e7

    :cond_2c9
    move-object/from16 v19, v6

    move v9, v8

    :goto_2cc
    const/4 v1, 0x1

    if-eq v15, v1, :cond_2e1

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p7

    move/from16 v6, p8

    invoke-virtual/range {v1 .. v7}, Lmiui/security/WakePathChecker;->recordWakePathCall(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    :cond_2e1
    monitor-exit v19

    return v16

    :catchall_2e3
    move-exception v0

    move-object/from16 v19, v6

    :goto_2e6
    move v9, v8

    :goto_2e7
    monitor-exit v19
    :try_end_2e8
    .catchall {:try_start_236 .. :try_end_2e8} :catchall_2e9

    throw v0

    :catchall_2e9
    move-exception v0

    goto :goto_2e7
.end method

.method public onPackageAdded(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lmiui/security/WakePathChecker$1;

    invoke-direct {v0, p0, p1}, Lmiui/security/WakePathChecker$1;-><init>(Lmiui/security/WakePathChecker;Landroid/content/Context;)V

    invoke-virtual {v0}, Lmiui/security/WakePathChecker$1;->start()V

    return-void
.end method

.method public pushUpdatePkgsData(Ljava/util/List;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    iput-boolean p2, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsEnable:Z

    if-eqz p1, :cond_1d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1d

    :cond_b
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsList:Ljava/util/List;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1a

    throw v1

    :cond_1d
    :goto_1d
    return-void
.end method

.method public pushWakePathConfirmDialogWhiteList(ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_34

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_34

    :cond_9
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1e

    iget-object v0, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    monitor-enter v0

    :try_start_f
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogWhitelist:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    goto :goto_33

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_1b

    throw v1

    :cond_1e
    const/4 v0, 0x2

    if-ne p1, v0, :cond_33

    iget-object v0, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;

    monitor-enter v0

    :try_start_24
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lmiui/security/WakePathChecker;->mWakePathConfirmDialogCallerWhitelist:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    goto :goto_33

    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_30

    throw v1

    :cond_33
    :goto_33
    return-void

    :cond_34
    :goto_34
    return-void
.end method

.method public pushWakePathRuleInfos(ILjava/util/List;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lmiui/security/WakePathRuleInfo;",
            ">;I)V"
        }
    .end annotation

    sget-object v0, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MIUILOG-WAKEPATH pushWakePathRuleInfos: wakeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_20

    const/4 v2, 0x0

    goto :goto_24

    :cond_20
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    :goto_24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3}, Lmiui/security/WakePathChecker;->getWakePathRuleDataByUser(I)Lmiui/security/WakePathChecker$WakePathRuleData;

    move-result-object v0

    monitor-enter v0

    const/16 v1, 0x11

    if-ne p1, v1, :cond_75

    :try_start_37
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lmiui/security/WakePathChecker$WakePathRuleData;->mAllowedStartActivityRulesMap:Ljava/util/Map;

    if-eqz p2, :cond_84

    const/4 v1, 0x0

    :goto_41
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_74

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/security/WakePathRuleInfo;

    iget-object v3, v0, Lmiui/security/WakePathChecker$WakePathRuleData;->mAllowedStartActivityRulesMap:Ljava/util/Map;

    invoke-virtual {v2}, Lmiui/security/WakePathRuleInfo;->getCalleeExpress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_6a

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    iget-object v4, v0, Lmiui/security/WakePathChecker$WakePathRuleData;->mAllowedStartActivityRulesMap:Ljava/util/Map;

    invoke-virtual {v2}, Lmiui/security/WakePathRuleInfo;->getCalleeExpress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6a
    invoke-virtual {v2}, Lmiui/security/WakePathRuleInfo;->getCallerExpress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    :cond_74
    goto :goto_84

    :cond_75
    invoke-direct {p0, p1}, Lmiui/security/WakePathChecker;->wakeTypeToRuleInfosListIndex(I)I

    move-result v1

    if-ltz v1, :cond_84

    const/16 v2, 0x8

    if-ge v1, v2, :cond_84

    iget-object v2, v0, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathRuleInfosList:Ljava/util/List;

    invoke-interface {v2, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_84
    :goto_84
    monitor-exit v0

    return-void

    :catchall_86
    move-exception v1

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_37 .. :try_end_88} :catchall_86

    throw v1
.end method

.method public pushWakePathWhiteList(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    sget-object v0, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MIUILOG-WAKEPATH pushWakePathWhiteList: userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_18

    const/4 v2, 0x0

    goto :goto_1c

    :cond_18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lmiui/security/WakePathChecker;->getWakePathRuleDataByUser(I)Lmiui/security/WakePathChecker$WakePathRuleData;

    move-result-object v0

    monitor-enter v0

    :try_start_2b
    iput-object p1, v0, Lmiui/security/WakePathChecker$WakePathRuleData;->mWakePathWhiteList:Ljava/util/List;

    monitor-exit v0

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public recordWakePathCall(Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .registers 10

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_48

    :cond_f
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;

    if-eqz v0, :cond_47

    const-string v1, "@"

    if-eqz p6, :cond_2d

    :try_start_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3, p5}, Lcom/android/internal/app/IWakePathCallback;->onAllowCall(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_42

    :cond_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3, p5}, Lcom/android/internal/app/IWakePathCallback;->onRejectCall(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_42} :catch_43

    :goto_42
    goto :goto_47

    :catch_43
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_47
    :goto_47
    return-void

    :cond_48
    :goto_48
    return-void
.end method

.method public registerWakePathCallback(Lcom/android/internal/app/IWakePathCallback;)V
    .registers 2

    iput-object p1, p0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;

    return-void
.end method

.method public removeWakePathData(I)V
    .registers 5

    sget-object v0, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MIUILOG-WAKEPATH removeWakePathData: userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3a

    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_3a

    :cond_1f
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_22
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/security/WakePathChecker$WakePathRuleData;

    if-eqz v1, :cond_35

    iget-object v2, p0, Lmiui/security/WakePathChecker;->mUserWakePathRuleDataMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    monitor-exit v0

    return-void

    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_22 .. :try_end_39} :catchall_37

    throw v1

    :cond_3a
    :goto_3a
    return-void
.end method

.method public setTrackWakePathCallListLogEnabled(Z)V
    .registers 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    return-void

    :cond_4
    iput-boolean p1, p0, Lmiui/security/WakePathChecker;->mTrackCallListLogEnabled:Z

    if-nez p1, :cond_1c

    iget-object v0, p0, Lmiui/security/WakePathChecker;->mCallListLogLocker:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lmiui/security/WakePathChecker;->mCallListLogMap:Ljava/util/Map;

    :cond_17
    monitor-exit v0

    goto :goto_1c

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_b .. :try_end_1b} :catchall_19

    throw v1

    :cond_1c
    :goto_1c
    return-void
.end method

.method public updatePath(Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)V
    .registers 9

    const/4 v0, 0x1

    if-ne p3, v0, :cond_4c

    if-nez p4, :cond_4c

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_a

    goto :goto_4c

    :cond_a
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;

    if-eqz v0, :cond_4b

    iget-boolean v0, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsEnable:Z

    if-nez v0, :cond_13

    return-void

    :cond_13
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsList:Ljava/util/List;

    monitor-enter v0

    :try_start_16
    iget-object v1, p0, Lmiui/security/WakePathChecker;->mUpdatePkgsList:Ljava/util/List;

    iget-object v2, p2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    monitor-exit v0

    return-void

    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_48

    :try_start_23
    iget-object v0, p0, Lmiui/security/WakePathChecker;->mCallback:Lcom/android/internal/app/IWakePathCallback;

    const/4 v1, 0x0

    iget-object v2, p2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1, v2}, Lcom/android/internal/app/IWakePathCallback;->onUpdateCall(ILandroid/content/Intent;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2b} :catch_2c

    goto :goto_4b

    :catch_2c
    move-exception v0

    sget-object v1, Lmiui/security/WakePathChecker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePath error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    :catchall_48
    move-exception v1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v1

    :cond_4b
    :goto_4b
    return-void

    :cond_4c
    :goto_4c
    return-void
.end method
