.class public Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;
.super Ljava/lang/Object;
.source "PackageInfoWithoutStateUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appInfoFlags(Landroid/content/pm/parsing/ParsingPackageRead;)I
    .registers 4

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isExternalStorage()Z

    move-result v0

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v0

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isBaseHardwareAccelerated()Z

    move-result v1

    const/high16 v2, 0x20000000

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isAllowBackup()Z

    move-result v1

    const v2, 0x8000

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isKillAfterRestore()Z

    move-result v1

    const/high16 v2, 0x10000

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isRestoreAnyVersion()Z

    move-result v1

    const/high16 v2, 0x20000

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isFullBackupOnly()Z

    move-result v1

    const/high16 v2, 0x4000000

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isPersistent()Z

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isDebuggable()Z

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isVmSafeMode()Z

    move-result v1

    const/16 v2, 0x4000

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isHasCode()Z

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isAllowTaskReparenting()Z

    move-result v1

    const/16 v2, 0x20

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isAllowClearUserData()Z

    move-result v1

    const/16 v2, 0x40

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isLargeHeap()Z

    move-result v1

    const/high16 v2, 0x100000

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isUsesCleartextTraffic()Z

    move-result v1

    const/high16 v2, 0x8000000

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isSupportsRtl()Z

    move-result v1

    const/high16 v2, 0x400000

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isTestOnly()Z

    move-result v1

    const/16 v2, 0x100

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isMultiArch()Z

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isExtractNativeLibs()Z

    move-result v1

    const/high16 v2, 0x10000000

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isGame()Z

    move-result v1

    const/high16 v2, 0x2000000

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isSupportsSmallScreens()Z

    move-result v1

    const/16 v2, 0x200

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isSupportsNormalScreens()Z

    move-result v1

    const/16 v2, 0x400

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isSupportsLargeScreens()Z

    move-result v1

    const/16 v2, 0x800

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isSupportsExtraLargeScreens()Z

    move-result v1

    const/high16 v2, 0x80000

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isResizeable()Z

    move-result v1

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isAnyDensity()Z

    move-result v1

    const/16 v2, 0x2000

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static appInfoPrivateFlags(Landroid/content/pm/parsing/ParsingPackageRead;)I
    .registers 4

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isStaticSharedLibrary()Z

    move-result v0

    const/16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v0

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isOverlay()Z

    move-result v1

    const/high16 v2, 0x10000000

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isIsolatedSplitLoading()Z

    move-result v1

    const v2, 0x8000

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isHasDomainUrls()Z

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isProfileableByShell()Z

    move-result v1

    const/high16 v2, 0x800000

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isBackupInForeground()Z

    move-result v1

    const/16 v2, 0x2000

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isUseEmbeddedDex()Z

    move-result v1

    const/high16 v2, 0x2000000

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isDefaultToDeviceProtectedStorage()Z

    move-result v1

    const/16 v2, 0x20

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isDirectBootAware()Z

    move-result v1

    const/16 v2, 0x40

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isPartiallyDirectBootAware()Z

    move-result v1

    const/16 v2, 0x100

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isAllowClearUserDataOnFailedRestore()Z

    move-result v1

    const/high16 v2, 0x4000000

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isAllowAudioPlaybackCapture()Z

    move-result v1

    const/high16 v2, 0x8000000

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isRequestLegacyExternalStorage()Z

    move-result v1

    const/high16 v2, 0x20000000

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isUsesNonSdkApi()Z

    move-result v1

    const/high16 v2, 0x400000

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isHasFragileUserData()Z

    move-result v1

    const/high16 v2, 0x1000000

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isCantSaveState()Z

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isResizeableActivityViaSdkVersion()Z

    move-result v1

    const/16 v2, 0x1000

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isAllowNativeHeapPointerTagging()Z

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getResizeableActivity()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_d6

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_d4

    or-int/lit16 v0, v0, 0x400

    goto :goto_d6

    :cond_d4
    or-int/lit16 v0, v0, 0x800

    :cond_d6
    :goto_d6
    return v0
.end method

.method private static assignSharedFieldsForComponentInfo(Landroid/content/pm/ComponentInfo;Landroid/content/pm/parsing/component/ParsedMainComponent;)V
    .registers 3

    invoke-static {p0, p1}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->assignSharedFieldsForPackageItemInfo(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/parsing/component/ParsedComponent;)V

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedMainComponent;->getDescriptionRes()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedMainComponent;->isDirectBootAware()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedMainComponent;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedMainComponent;->getSplitName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->splitName:Ljava/lang/String;

    return-void
.end method

.method private static assignSharedFieldsForPackageItemInfo(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/parsing/component/ParsedComponent;)V
    .registers 3

    invoke-static {p1}, Landroid/content/pm/parsing/component/ComponentParseUtils;->getNonLocalizedLabel(Landroid/content/pm/parsing/component/ParsedComponent;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/content/pm/parsing/component/ComponentParseUtils;->getIcon(Landroid/content/pm/parsing/component/ParsedComponent;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->icon:I

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedComponent;->getBanner()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->banner:I

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedComponent;->getLabelRes()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedComponent;->getLogo()I

    move-result v0

    iput v0, p0, Landroid/content/pm/PackageItemInfo;->logo:I

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedComponent;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method private static checkUseInstalled(Landroid/content/pm/parsing/ParsingPackageRead;Landroid/content/pm/PackageUserState;I)Z
    .registers 4

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageUserState;->isAvailable(I)Z

    move-result v0

    return v0
.end method

.method private static flag(ZI)I
    .registers 3

    if-eqz p0, :cond_3

    return p1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public static generate(Landroid/content/pm/parsing/ParsingPackageRead;Landroid/apex/ApexInfo;I)Landroid/content/pm/PackageInfo;
    .registers 14

    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7

    new-instance v8, Landroid/content/pm/PackageUserState;

    invoke-direct {v8}, Landroid/content/pm/PackageUserState;-><init>()V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v2, p2

    move-object v10, p1

    invoke-static/range {v0 .. v10}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generateWithComponents(Landroid/content/pm/parsing/ParsingPackageRead;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;ILandroid/apex/ApexInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Landroid/content/pm/parsing/ParsingPackageRead;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;I)Landroid/content/pm/PackageInfo;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/ParsingPackageRead;",
            "[IIJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageUserState;",
            "I)",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v10}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generateWithComponents(Landroid/content/pm/parsing/ParsingPackageRead;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;ILandroid/apex/ApexInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateActivityInfo(Landroid/content/pm/parsing/ParsingPackageRead;Landroid/content/pm/parsing/component/ParsedActivity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generateActivityInfo(Landroid/content/pm/parsing/ParsingPackageRead;Landroid/content/pm/parsing/component/ParsedActivity;ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateActivityInfo(Landroid/content/pm/parsing/ParsingPackageRead;Landroid/content/pm/parsing/component/ParsedActivity;ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ActivityInfo;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    invoke-static {p0, p3, p2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->checkUseInstalled(Landroid/content/pm/parsing/ParsingPackageRead;Landroid/content/pm/PackageUserState;I)Z

    move-result v1

    if-nez v1, :cond_b

    return-object v0

    :cond_b
    if-nez p4, :cond_11

    invoke-static {p0, p2, p3, p5}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generateApplicationInfo(Landroid/content/pm/parsing/ParsingPackageRead;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    :cond_11
    if-nez p4, :cond_14

    return-object v0

    :cond_14
    invoke-static {p1, p4}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generateActivityInfoUnchecked(Landroid/content/pm/parsing/component/ParsedActivity;Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateActivityInfoUnchecked(Landroid/content/pm/parsing/component/ParsedActivity;Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ActivityInfo;
    .registers 6

    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    invoke-static {v0, p0}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->assignSharedFieldsForComponentInfo(Landroid/content/pm/ComponentInfo;Landroid/content/pm/parsing/component/ParsedMainComponent;)V

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedActivity;->getTargetActivity()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedActivity;->getProcessName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedActivity;->isExported()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedActivity;->getTheme()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedActivity;->getUiOptions()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedActivity;->getParentActivityName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedActivity;->getPermission()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedActivity;->getTaskAffinity()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedActivity;->getFlags()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedActivity;->getPrivateFlags()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedActivity;->getLaunchMode()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedActivity;->getDocumentLaunchMode()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedActivity;->getMaxRecents()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedActivity;->getConfigChanges()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedActivity;->getSoftInputMode()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedActivity;->getPersistableMode()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedActivity;->getLockTaskLaunchMode()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedActivity;->getScreenOrientation()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedActivity;->getResizeMode()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedActivity;->getMaxAspectRatio()Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_86

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_87

    :cond_86
    move v3, v2

    :goto_87
    iput v3, v0, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedActivity;->getMinAspectRatio()Ljava/lang/Float;

    move-result-object v3

    if-eqz v3, :cond_93

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :cond_93
    iput v2, v0, Landroid/content/pm/ActivityInfo;->minAspectRatio:F

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedActivity;->getSupportsSizeChanges()Z

    move-result v2

    iput-boolean v2, v0, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedActivity;->getRequestedVrComponent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedActivity;->getRotationAnimation()I

    move-result v2

    iput v2, v0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedActivity;->getColorMode()I

    move-result v2

    iput v2, v0, Landroid/content/pm/ActivityInfo;->colorMode:I

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedActivity;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    iput-object p1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/parsing/ParsingPackageRead;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    invoke-static {p0, p2, p1}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->checkUseInstalled(Landroid/content/pm/parsing/ParsingPackageRead;Landroid/content/pm/PackageUserState;I)Z

    move-result v1

    if-nez v1, :cond_b

    return-object v0

    :cond_b
    invoke-static {p0, p1, p2, p3}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generateApplicationInfoUnchecked(Landroid/content/pm/parsing/ParsingPackageRead;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateApplicationInfoUnchecked(Landroid/content/pm/parsing/ParsingPackageRead;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .registers 9

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    and-int/lit16 v1, p1, 0x80

    const/4 v2, 0x0

    if-nez v1, :cond_e

    iput-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    :cond_e
    and-int/lit16 v1, p1, 0x400

    if-nez v1, :cond_16

    iput-object v2, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    iput-object v2, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryInfos:Ljava/util/List;

    :cond_16
    sget-boolean v1, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    if-nez v1, :cond_1d

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    :cond_1d
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    const/high16 v3, 0x200000

    invoke-static {v2, v3}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v2

    iget-boolean v3, p2, Landroid/content/pm/PackageUserState;->installed:Z

    const/high16 v4, 0x800000

    invoke-static {v3, v4}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v3

    or-int/2addr v2, v3

    iget-boolean v3, p2, Landroid/content/pm/PackageUserState;->suspended:Z

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v3

    or-int/2addr v2, v3

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->instantApp:Z

    const/16 v3, 0x80

    invoke-static {v2, v3}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v2

    iget-boolean v3, p2, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    const/high16 v4, 0x10000

    invoke-static {v3, v4}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v3

    or-int/2addr v2, v3

    iget-boolean v3, p2, Landroid/content/pm/PackageUserState;->hidden:Z

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->flag(ZI)I

    move-result v3

    or-int/2addr v2, v3

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    iget v1, p2, Landroid/content/pm/PackageUserState;->enabled:I

    if-ne v1, v4, :cond_61

    iput-boolean v4, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_7e

    :cond_61
    iget v1, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v1, v2, :cond_72

    const v1, 0x8000

    and-int/2addr v1, p1

    if-eqz v1, :cond_6e

    goto :goto_6f

    :cond_6e
    move v4, v3

    :goto_6f
    iput-boolean v4, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_7e

    :cond_72
    iget v1, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7c

    iget v1, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7e

    :cond_7c
    iput-boolean v3, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    :cond_7e
    :goto_7e
    iget v1, p2, Landroid/content/pm/PackageUserState;->enabled:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8b

    iget v1, p2, Landroid/content/pm/PackageUserState;->categoryHint:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->category:I

    :cond_8b
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->category:I

    if-ne v1, v2, :cond_97

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/content/pm/FallbackCategoryProvider;->getFallbackCategory(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->category:I

    :cond_97
    invoke-static {p2}, Landroid/content/pm/SELinuxUtil;->assignSeinfoUser(Landroid/content/pm/PackageUserState;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/pm/PackageUserState;->getAllOverlayPaths()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    return-object v0
.end method

.method public static generateInstrumentationInfo(Landroid/content/pm/parsing/component/ParsedInstrumentation;Landroid/content/pm/parsing/ParsingPackageRead;II)Landroid/content/pm/InstrumentationInfo;
    .registers 6

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    new-instance v0, Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v0}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    invoke-static {v0, p0}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->assignSharedFieldsForPackageItemInfo(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/parsing/component/ParsedComponent;)V

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedInstrumentation;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedInstrumentation;->getTargetProcesses()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->targetProcesses:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedInstrumentation;->isHandleProfiling()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedInstrumentation;->isFunctionalTest()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    invoke-interface {p1}, Landroid/content/pm/parsing/ParsingPackageRead;->getBaseCodePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {p1}, Landroid/content/pm/parsing/ParsingPackageRead;->getBaseCodePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-interface {p1}, Landroid/content/pm/parsing/ParsingPackageRead;->getSplitNames()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->splitNames:[Ljava/lang/String;

    invoke-interface {p1}, Landroid/content/pm/parsing/ParsingPackageRead;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-interface {p1}, Landroid/content/pm/parsing/ParsingPackageRead;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    invoke-interface {p1}, Landroid/content/pm/parsing/ParsingPackageRead;->getSplitDependencies()Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->splitDependencies:Landroid/util/SparseArray;

    invoke-static {p1, p3}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->getDataDir(Landroid/content/pm/parsing/ParsingPackageRead;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->dataDir:Ljava/lang/String;

    invoke-static {p1, p3}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->getDeviceProtectedDataDir(Landroid/content/pm/parsing/ParsingPackageRead;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    invoke-static {p1, p3}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->getCredentialProtectedDataDir(Landroid/content/pm/parsing/ParsingPackageRead;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    and-int/lit16 v1, p2, 0x80

    if-nez v1, :cond_6b

    return-object v0

    :cond_6b
    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedInstrumentation;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    return-object v0
.end method

.method public static generatePermissionGroupInfo(Landroid/content/pm/parsing/component/ParsedPermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;
    .registers 6

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    new-instance v0, Landroid/content/pm/PermissionGroupInfo;

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getRequestDetailResourceId()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getBackgroundRequestResourceId()I

    move-result v2

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getBackgroundRequestDetailResourceId()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/PermissionGroupInfo;-><init>(III)V

    invoke-static {v0, p0}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->assignSharedFieldsForPackageItemInfo(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/parsing/component/ParsedComponent;)V

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getDescriptionRes()I

    move-result v1

    iput v1, v0, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getPriority()I

    move-result v1

    iput v1, v0, Landroid/content/pm/PermissionGroupInfo;->priority:I

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getRequestRes()I

    move-result v1

    iput v1, v0, Landroid/content/pm/PermissionGroupInfo;->requestRes:I

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getFlags()I

    move-result v1

    iput v1, v0, Landroid/content/pm/PermissionGroupInfo;->flags:I

    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_35

    return-object v0

    :cond_35
    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    return-object v0
.end method

.method public static generatePermissionInfo(Landroid/content/pm/parsing/component/ParsedPermission;I)Landroid/content/pm/PermissionInfo;
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    new-instance v0, Landroid/content/pm/PermissionInfo;

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermission;->getBackgroundPermission()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionInfo;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->assignSharedFieldsForPackageItemInfo(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/parsing/component/ParsedComponent;)V

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermission;->getGroup()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermission;->getRequestRes()I

    move-result v1

    iput v1, v0, Landroid/content/pm/PermissionInfo;->requestRes:I

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermission;->getProtectionLevel()I

    move-result v1

    iput v1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermission;->getDescriptionRes()I

    move-result v1

    iput v1, v0, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermission;->getFlags()I

    move-result v1

    iput v1, v0, Landroid/content/pm/PermissionInfo;->flags:I

    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_33

    return-object v0

    :cond_33
    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedPermission;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    return-object v0
.end method

.method public static generateProviderInfo(Landroid/content/pm/parsing/ParsingPackageRead;Landroid/content/pm/parsing/component/ParsedProvider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generateProviderInfo(Landroid/content/pm/parsing/ParsingPackageRead;Landroid/content/pm/parsing/component/ParsedProvider;ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateProviderInfo(Landroid/content/pm/parsing/ParsingPackageRead;Landroid/content/pm/parsing/component/ParsedProvider;ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ProviderInfo;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    invoke-static {p0, p3, p2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->checkUseInstalled(Landroid/content/pm/parsing/ParsingPackageRead;Landroid/content/pm/PackageUserState;I)Z

    move-result v1

    if-nez v1, :cond_b

    return-object v0

    :cond_b
    if-nez p4, :cond_11

    invoke-static {p0, p2, p3, p5}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generateApplicationInfo(Landroid/content/pm/parsing/ParsingPackageRead;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    :cond_11
    if-nez p4, :cond_14

    return-object v0

    :cond_14
    invoke-static {p1, p2, p4}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generateProviderInfoUnchecked(Landroid/content/pm/parsing/component/ParsedProvider;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateProviderInfoUnchecked(Landroid/content/pm/parsing/component/ParsedProvider;ILandroid/content/pm/ApplicationInfo;)Landroid/content/pm/ProviderInfo;
    .registers 5

    new-instance v0, Landroid/content/pm/ProviderInfo;

    invoke-direct {v0}, Landroid/content/pm/ProviderInfo;-><init>()V

    invoke-static {v0, p0}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->assignSharedFieldsForComponentInfo(Landroid/content/pm/ComponentInfo;Landroid/content/pm/parsing/component/ParsedMainComponent;)V

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedProvider;->isExported()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ProviderInfo;->exported:Z

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedProvider;->getFlags()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ProviderInfo;->flags:I

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedProvider;->getProcessName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedProvider;->isSyncable()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedProvider;->getReadPermission()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedProvider;->isGrantUriPermissions()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedProvider;->isForceUriPermissions()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ProviderInfo;->forceUriPermissions:Z

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedProvider;->isMultiProcess()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedProvider;->getInitOrder()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ProviderInfo;->initOrder:I

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedProvider;->getUriPermissionPatterns()[Landroid/os/PatternMatcher;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedProvider;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    and-int/lit16 v1, p1, 0x800

    if-nez v1, :cond_63

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    :cond_63
    iput-object p2, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public static generateServiceInfo(Landroid/content/pm/parsing/ParsingPackageRead;Landroid/content/pm/parsing/component/ParsedService;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generateServiceInfo(Landroid/content/pm/parsing/ParsingPackageRead;Landroid/content/pm/parsing/component/ParsedService;ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateServiceInfo(Landroid/content/pm/parsing/ParsingPackageRead;Landroid/content/pm/parsing/component/ParsedService;ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ServiceInfo;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    invoke-static {p0, p3, p2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->checkUseInstalled(Landroid/content/pm/parsing/ParsingPackageRead;Landroid/content/pm/PackageUserState;I)Z

    move-result v1

    if-nez v1, :cond_b

    return-object v0

    :cond_b
    if-nez p4, :cond_11

    invoke-static {p0, p2, p3, p5}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generateApplicationInfo(Landroid/content/pm/parsing/ParsingPackageRead;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p4

    :cond_11
    if-nez p4, :cond_14

    return-object v0

    :cond_14
    invoke-static {p1, p4}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generateServiceInfoUnchecked(Landroid/content/pm/parsing/component/ParsedService;Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateServiceInfoUnchecked(Landroid/content/pm/parsing/component/ParsedService;Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ServiceInfo;
    .registers 4

    new-instance v0, Landroid/content/pm/ServiceInfo;

    invoke-direct {v0}, Landroid/content/pm/ServiceInfo;-><init>()V

    invoke-static {v0, p0}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->assignSharedFieldsForComponentInfo(Landroid/content/pm/ComponentInfo;Landroid/content/pm/parsing/component/ParsedMainComponent;)V

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedService;->isExported()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ServiceInfo;->exported:Z

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedService;->getFlags()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ServiceInfo;->flags:I

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedService;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedService;->getPermission()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedService;->getProcessName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedService;->getForegroundServiceType()I

    move-result v1

    iput v1, v0, Landroid/content/pm/ServiceInfo;->mForegroundServiceType:I

    iput-object p1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method private static generateWithComponents(Landroid/content/pm/parsing/ParsingPackageRead;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;ILandroid/apex/ApexInfo;)Landroid/content/pm/PackageInfo;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/ParsingPackageRead;",
            "[IIJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageUserState;",
            "I",
            "Landroid/apex/ApexInfo;",
            ")",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    move-object/from16 v12, p0

    move/from16 v13, p2

    move-object/from16 v14, p8

    move/from16 v15, p9

    invoke-static {v12, v13, v14, v15}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generateApplicationInfo(Landroid/content/pm/parsing/ParsingPackageRead;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    const/16 v17, 0x0

    if-nez v16, :cond_11

    return-object v17

    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, v16

    invoke-static/range {v0 .. v11}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generateWithoutComponents(Landroid/content/pm/parsing/ParsingPackageRead;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;ILandroid/apex/ApexInfo;Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-nez v6, :cond_2c

    return-object v17

    :cond_2c
    and-int/lit8 v0, v13, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_8a

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_8a

    const/4 v0, 0x0

    new-array v9, v8, [Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    move v10, v0

    move v11, v1

    :goto_41
    if-ge v11, v8, :cond_82

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/pm/parsing/component/ParsedActivity;

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isEnabled()Z

    move-result v0

    invoke-static {v14, v7, v0, v5, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->isMatch(Landroid/content/pm/PackageUserState;ZZLandroid/content/pm/parsing/component/ParsedMainComponent;I)Z

    move-result v0

    if-eqz v0, :cond_7d

    sget-object v0, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/content/pm/parsing/component/ParsedActivity;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    goto :goto_7f

    :cond_65
    add-int/lit8 v17, v10, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, v16

    move-object/from16 v18, v5

    move/from16 v5, p9

    invoke-static/range {v0 .. v5}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generateActivityInfo(Landroid/content/pm/parsing/ParsingPackageRead;Landroid/content/pm/parsing/component/ParsedActivity;ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    aput-object v0, v9, v10

    move/from16 v10, v17

    goto :goto_7f

    :cond_7d
    move-object/from16 v18, v5

    :goto_7f
    add-int/lit8 v11, v11, 0x1

    goto :goto_41

    :cond_82
    invoke-static {v9, v10}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ActivityInfo;

    iput-object v0, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    :cond_8a
    and-int/lit8 v0, v13, 0x2

    if-eqz v0, :cond_da

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_da

    const/4 v0, 0x0

    new-array v9, v8, [Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    move v10, v0

    move v11, v1

    :goto_9e
    if-ge v11, v8, :cond_d2

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getReceivers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/pm/parsing/component/ParsedActivity;

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isEnabled()Z

    move-result v0

    invoke-static {v14, v7, v0, v5, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->isMatch(Landroid/content/pm/PackageUserState;ZZLandroid/content/pm/parsing/component/ParsedMainComponent;I)Z

    move-result v0

    if-eqz v0, :cond_cd

    add-int/lit8 v17, v10, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, v16

    move-object/from16 v18, v5

    move/from16 v5, p9

    invoke-static/range {v0 .. v5}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generateActivityInfo(Landroid/content/pm/parsing/ParsingPackageRead;Landroid/content/pm/parsing/component/ParsedActivity;ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    aput-object v0, v9, v10

    move/from16 v10, v17

    goto :goto_cf

    :cond_cd
    move-object/from16 v18, v5

    :goto_cf
    add-int/lit8 v11, v11, 0x1

    goto :goto_9e

    :cond_d2
    invoke-static {v9, v10}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ActivityInfo;

    iput-object v0, v6, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    :cond_da
    and-int/lit8 v0, v13, 0x4

    if-eqz v0, :cond_12a

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_12a

    const/4 v0, 0x0

    new-array v9, v8, [Landroid/content/pm/ServiceInfo;

    const/4 v1, 0x0

    move v10, v0

    move v11, v1

    :goto_ee
    if-ge v11, v8, :cond_122

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/pm/parsing/component/ParsedService;

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isEnabled()Z

    move-result v0

    invoke-static {v14, v7, v0, v5, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->isMatch(Landroid/content/pm/PackageUserState;ZZLandroid/content/pm/parsing/component/ParsedMainComponent;I)Z

    move-result v0

    if-eqz v0, :cond_11d

    add-int/lit8 v17, v10, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, v16

    move-object/from16 v18, v5

    move/from16 v5, p9

    invoke-static/range {v0 .. v5}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generateServiceInfo(Landroid/content/pm/parsing/ParsingPackageRead;Landroid/content/pm/parsing/component/ParsedService;ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    aput-object v0, v9, v10

    move/from16 v10, v17

    goto :goto_11f

    :cond_11d
    move-object/from16 v18, v5

    :goto_11f
    add-int/lit8 v11, v11, 0x1

    goto :goto_ee

    :cond_122
    invoke-static {v9, v10}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ServiceInfo;

    iput-object v0, v6, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    :cond_12a
    and-int/lit8 v0, v13, 0x8

    if-eqz v0, :cond_17a

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_17a

    const/4 v0, 0x0

    new-array v9, v8, [Landroid/content/pm/ProviderInfo;

    const/4 v1, 0x0

    move v10, v0

    move v11, v1

    :goto_13e
    if-ge v11, v8, :cond_172

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getProviders()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/pm/parsing/component/ParsedProvider;

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isEnabled()Z

    move-result v0

    invoke-static {v14, v7, v0, v5, v13}, Landroid/content/pm/parsing/component/ComponentParseUtils;->isMatch(Landroid/content/pm/PackageUserState;ZZLandroid/content/pm/parsing/component/ParsedMainComponent;I)Z

    move-result v0

    if-eqz v0, :cond_16d

    add-int/lit8 v17, v10, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, v16

    move-object/from16 v18, v5

    move/from16 v5, p9

    invoke-static/range {v0 .. v5}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generateProviderInfo(Landroid/content/pm/parsing/ParsingPackageRead;Landroid/content/pm/parsing/component/ParsedProvider;ILandroid/content/pm/PackageUserState;Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    aput-object v0, v9, v10

    move/from16 v10, v17

    goto :goto_16f

    :cond_16d
    move-object/from16 v18, v5

    :goto_16f
    add-int/lit8 v11, v11, 0x1

    goto :goto_13e

    :cond_172
    invoke-static {v9, v10}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/ProviderInfo;

    iput-object v0, v6, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    :cond_17a
    and-int/lit8 v0, v13, 0x10

    if-eqz v0, :cond_1a4

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getInstrumentations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1a4

    new-array v1, v0, [Landroid/content/pm/InstrumentationInfo;

    iput-object v1, v6, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    const/4 v1, 0x0

    :goto_18d
    if-ge v1, v0, :cond_1a4

    iget-object v2, v6, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getInstrumentations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/parsing/component/ParsedInstrumentation;

    invoke-static {v3, v12, v13, v15}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generateInstrumentationInfo(Landroid/content/pm/parsing/component/ParsedInstrumentation;Landroid/content/pm/parsing/ParsingPackageRead;II)Landroid/content/pm/InstrumentationInfo;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_18d

    :cond_1a4
    return-object v6
.end method

.method public static generateWithoutComponents(Landroid/content/pm/parsing/ParsingPackageRead;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;ILandroid/apex/ApexInfo;Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/PackageInfo;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/ParsingPackageRead;",
            "[IIJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageUserState;",
            "I",
            "Landroid/apex/ApexInfo;",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    invoke-static {p0, p8, p2}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->checkUseInstalled(Landroid/content/pm/parsing/ParsingPackageRead;Landroid/content/pm/PackageUserState;I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    invoke-static/range {p0 .. p11}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generateWithoutComponentsUnchecked(Landroid/content/pm/parsing/ParsingPackageRead;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;ILandroid/apex/ApexInfo;Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateWithoutComponentsUnchecked(Landroid/content/pm/parsing/ParsingPackageRead;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;ILandroid/apex/ApexInfo;Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/PackageInfo;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/ParsingPackageRead;",
            "[IIJJ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageUserState;",
            "I",
            "Landroid/apex/ApexInfo;",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    move/from16 v0, p2

    move-object/from16 v1, p7

    move-object/from16 v2, p10

    new-instance v3, Landroid/content/pm/PackageInfo;

    invoke-direct {v3}, Landroid/content/pm/PackageInfo;-><init>()V

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getSplitNames()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getVersionCode()I

    move-result v4

    iput v4, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getVersionCodeMajor()I

    move-result v4

    iput v4, v3, Landroid/content/pm/PackageInfo;->versionCodeMajor:I

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getBaseRevisionCode()I

    move-result v4

    iput v4, v3, Landroid/content/pm/PackageInfo;->baseRevisionCode:I

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getSplitRevisionCodes()[I

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/PackageInfo;->splitRevisionCodes:[I

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getVersionName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getSharedUserId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getSharedUserLabel()I

    move-result v4

    iput v4, v3, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move-object/from16 v4, p11

    iput-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getInstallLocation()I

    move-result v5

    iput v5, v3, Landroid/content/pm/PackageInfo;->installLocation:I

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-nez v5, :cond_5b

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_61

    :cond_5b
    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isRequiredForAllUsers()Z

    move-result v5

    iput-boolean v5, v3, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    :cond_61
    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getRestrictedAccountType()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getRequiredAccountType()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getOverlayTarget()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getOverlayTargetName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/content/pm/PackageInfo;->targetOverlayableName:Ljava/lang/String;

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getOverlayCategory()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getOverlayPriority()I

    move-result v5

    iput v5, v3, Landroid/content/pm/PackageInfo;->overlayPriority:I

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isOverlayIsStatic()Z

    move-result v5

    iput-boolean v5, v3, Landroid/content/pm/PackageInfo;->mOverlayIsStatic:Z

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getCompileSdkVersion()I

    move-result v5

    iput v5, v3, Landroid/content/pm/PackageInfo;->compileSdkVersion:I

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getCompileSdkVersionCodeName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Landroid/content/pm/PackageInfo;->compileSdkVersionCodename:Ljava/lang/String;

    move-wide/from16 v7, p3

    iput-wide v7, v3, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v9, p5

    iput-wide v9, v3, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    and-int/lit16 v5, v0, 0x100

    if-eqz v5, :cond_a8

    move-object/from16 v5, p1

    iput-object v5, v3, Landroid/content/pm/PackageInfo;->gids:[I

    goto :goto_aa

    :cond_a8
    move-object/from16 v5, p1

    :goto_aa
    and-int/lit16 v11, v0, 0x4000

    if-eqz v11, :cond_f3

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getConfigPreferences()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_c5

    new-array v12, v11, [Landroid/content/pm/ConfigurationInfo;

    iput-object v12, v3, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getConfigPreferences()Ljava/util/List;

    move-result-object v12

    iget-object v13, v3, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    invoke-interface {v12, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_c5
    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getReqFeatures()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_dc

    new-array v12, v11, [Landroid/content/pm/FeatureInfo;

    iput-object v12, v3, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getReqFeatures()Ljava/util/List;

    move-result-object v12

    iget-object v13, v3, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    invoke-interface {v12, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_dc
    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getFeatureGroups()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_f3

    new-array v12, v11, [Landroid/content/pm/FeatureGroupInfo;

    iput-object v12, v3, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getFeatureGroups()Ljava/util/List;

    move-result-object v12

    iget-object v13, v3, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    invoke-interface {v12, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :cond_f3
    and-int/lit16 v11, v0, 0x1000

    if-eqz v11, :cond_15a

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getPermissions()Ljava/util/List;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v11

    if-lez v11, :cond_11d

    new-array v12, v11, [Landroid/content/pm/PermissionInfo;

    iput-object v12, v3, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    const/4 v12, 0x0

    :goto_106
    if-ge v12, v11, :cond_11d

    iget-object v13, v3, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getPermissions()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/parsing/component/ParsedPermission;

    invoke-static {v14, v0}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->generatePermissionInfo(Landroid/content/pm/parsing/component/ParsedPermission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v14

    aput-object v14, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_106

    :cond_11d
    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getRequestedPermissions()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_15a

    new-array v12, v11, [Ljava/lang/String;

    iput-object v12, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    new-array v12, v11, [I

    iput-object v12, v3, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    const/4 v12, 0x0

    :goto_130
    if-ge v12, v11, :cond_15a

    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getRequestedPermissions()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    iget-object v14, v3, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aput-object v13, v14, v12

    iget-object v14, v3, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v15, v14, v12

    or-int/2addr v15, v6

    aput v15, v14, v12

    if-eqz v1, :cond_157

    invoke-interface {v1, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_157

    iget-object v14, v3, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v15, v14, v12

    or-int/lit8 v15, v15, 0x2

    aput v15, v14, v12

    :cond_157
    add-int/lit8 v12, v12, 0x1

    goto :goto_130

    :cond_15a
    if-eqz v2, :cond_1a1

    new-instance v11, Ljava/io/File;

    iget-object v12, v2, Landroid/apex/ApexInfo;->modulePath:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v12, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v12, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-boolean v12, v2, Landroid/apex/ApexInfo;->isFactory:Z

    if-eqz v12, :cond_17f

    iget-object v12, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/2addr v13, v6

    iput v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_187

    :cond_17f
    iget-object v12, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v13, -0x2

    iput v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    :goto_187
    iget-boolean v12, v2, Landroid/apex/ApexInfo;->isActive:Z

    if-eqz v12, :cond_195

    iget-object v12, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v14, 0x800000

    or-int/2addr v13, v14

    iput v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_19f

    :cond_195
    iget-object v12, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    const v14, -0x800001

    and-int/2addr v13, v14

    iput v13, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    :goto_19f
    iput-boolean v6, v3, Landroid/content/pm/PackageInfo;->isApex:Z

    :cond_1a1
    invoke-interface/range {p0 .. p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v11

    and-int/lit8 v12, v0, 0x40

    if-eqz v12, :cond_1d1

    invoke-virtual {v11}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_1bd

    new-array v6, v6, [Landroid/content/pm/Signature;

    iput-object v6, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v12, v11, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v12, v12, v13

    aput-object v12, v6, v13

    goto :goto_1d1

    :cond_1bd
    invoke-virtual {v11}, Landroid/content/pm/PackageParser$SigningDetails;->hasSignatures()Z

    move-result v6

    if-eqz v6, :cond_1d1

    iget-object v6, v11, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v6, v6

    new-array v12, v6, [Landroid/content/pm/Signature;

    iput-object v12, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v12, v11, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iget-object v14, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v12, v13, v14, v13, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1d1
    :goto_1d1
    const/high16 v6, 0x8000000

    and-int/2addr v6, v0

    if-eqz v6, :cond_1e5

    sget-object v6, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-eq v11, v6, :cond_1e2

    new-instance v6, Landroid/content/pm/SigningInfo;

    invoke-direct {v6, v11}, Landroid/content/pm/SigningInfo;-><init>(Landroid/content/pm/PackageParser$SigningDetails;)V

    iput-object v6, v3, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    goto :goto_1e5

    :cond_1e2
    const/4 v6, 0x0

    iput-object v6, v3, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    :cond_1e5
    :goto_1e5
    return-object v3
.end method

.method public static getCredentialProtectedDataDir(Landroid/content/pm/parsing/ParsingPackageRead;I)Ljava/io/File;
    .registers 4

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/os/Environment;->getDataUserCePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getDataDir(Landroid/content/pm/parsing/ParsingPackageRead;I)Ljava/io/File;
    .registers 4

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->isDefaultToDeviceProtectedStorage()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {p0, p1}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->getDeviceProtectedDataDir(Landroid/content/pm/parsing/ParsingPackageRead;I)Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_1c
    invoke-static {p0, p1}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->getCredentialProtectedDataDir(Landroid/content/pm/parsing/ParsingPackageRead;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceProtectedDataDir(Landroid/content/pm/parsing/ParsingPackageRead;I)Ljava/io/File;
    .registers 4

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getVolumeUuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Landroid/content/pm/parsing/ParsingPackageRead;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/os/Environment;->getDataUserDePackageDirectory(Ljava/lang/String;ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
