.class public interface abstract Landroid/content/pm/parsing/ParsingPackageRead;
.super Ljava/lang/Object;
.source "ParsingPackageRead.java"

# interfaces
.implements Landroid/os/Parcelable;


# virtual methods
.method public abstract getActivities()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAdoptPermissions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppComponentFactory()Ljava/lang/String;
.end method

.method public abstract getAttributions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedAttribution;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAutoRevokePermissions()I
.end method

.method public abstract getBackupAgentName()Ljava/lang/String;
.end method

.method public abstract getBanner()I
.end method

.method public abstract getBaseCodePath()Ljava/lang/String;
.end method

.method public abstract getBaseRevisionCode()I
.end method

.method public abstract getCategory()I
.end method

.method public abstract getClassLoaderName()Ljava/lang/String;
.end method

.method public abstract getClassName()Ljava/lang/String;
.end method

.method public abstract getCodePath()Ljava/lang/String;
.end method

.method public abstract getCompatibleWidthLimitDp()I
.end method

.method public abstract getCompileSdkVersion()I
.end method

.method public abstract getCompileSdkVersionCodeName()Ljava/lang/String;
.end method

.method public abstract getConfigPreferences()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ConfigurationInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDescriptionRes()I
.end method

.method public abstract getFeatureGroups()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureGroupInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFullBackupContent()I
.end method

.method public abstract getGwpAsanMode()I
.end method

.method public abstract getIconRes()I
.end method

.method public abstract getImplicitPermissions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getInstallLocation()I
.end method

.method public abstract getInstrumentations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKeySetMapping()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getLabelRes()I
.end method

.method public abstract getLargestWidthLimitDp()I
.end method

.method public abstract getLibraryNames()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLogo()I
.end method

.method public abstract getManageSpaceActivityName()Ljava/lang/String;
.end method

.method public abstract getMaxAspectRatio()F
.end method

.method public abstract getMetaData()Landroid/os/Bundle;
.end method

.method public abstract getMimeGroups()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMinAspectRatio()F
.end method

.method public abstract getMinExtensionVersions()Landroid/util/SparseIntArray;
.end method

.method public abstract getMinSdkVersion()I
.end method

.method public abstract getNetworkSecurityConfigRes()I
.end method

.method public abstract getNonLocalizedLabel()Ljava/lang/CharSequence;
.end method

.method public abstract getOriginalPackages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOverlayCategory()Ljava/lang/String;
.end method

.method public abstract getOverlayPriority()I
.end method

.method public abstract getOverlayTarget()Ljava/lang/String;
.end method

.method public abstract getOverlayTargetName()Ljava/lang/String;
.end method

.method public abstract getOverlayables()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getPermission()Ljava/lang/String;
.end method

.method public abstract getPermissionGroups()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedPermissionGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPermissions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedPermission;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPreferredActivityFilters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getProcessName()Ljava/lang/String;
.end method

.method public abstract getProcesses()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/component/ParsedProcess;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProtectedBroadcasts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProviders()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedProvider;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getQueriesIntents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getQueriesPackages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getQueriesProviders()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRealPackage()Ljava/lang/String;
.end method

.method public abstract getReceivers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReqFeatures()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequestedPermissions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequiredAccountType()Ljava/lang/String;
.end method

.method public abstract getRequiresSmallestWidthDp()I
.end method

.method public abstract getResizeableActivity()Ljava/lang/Boolean;
.end method

.method public abstract getRestrictUpdateHash()[B
.end method

.method public abstract getRestrictedAccountType()Ljava/lang/String;
.end method

.method public abstract getRoundIconRes()I
.end method

.method public abstract getServices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedService;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSharedUserId()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSharedUserLabel()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;
.end method

.method public abstract getSplitClassLoaderNames()[Ljava/lang/String;
.end method

.method public abstract getSplitCodePaths()[Ljava/lang/String;
.end method

.method public abstract getSplitDependencies()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end method

.method public abstract getSplitFlags()[I
.end method

.method public abstract getSplitNames()[Ljava/lang/String;
.end method

.method public abstract getSplitRevisionCodes()[I
.end method

.method public abstract getStaticSharedLibName()Ljava/lang/String;
.end method

.method public abstract getStaticSharedLibVersion()J
.end method

.method public abstract getTargetSandboxVersion()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getTargetSdkVersion()I
.end method

.method public abstract getTaskAffinity()Ljava/lang/String;
.end method

.method public abstract getTheme()I
.end method

.method public abstract getUiOptions()I
.end method

.method public abstract getUpgradeKeySets()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUsesLibraries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUsesOptionalLibraries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUsesStaticLibraries()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUsesStaticLibrariesCertDigests()[[Ljava/lang/String;
.end method

.method public abstract getUsesStaticLibrariesVersions()[J
.end method

.method public abstract getVersionCode()I
.end method

.method public abstract getVersionCodeMajor()I
.end method

.method public abstract getVersionName()Ljava/lang/String;
.end method

.method public abstract getVolumeUuid()Ljava/lang/String;
.end method

.method public abstract getZygotePreloadName()Ljava/lang/String;
.end method

.method public abstract hasPreserveLegacyExternalStorage()Z
.end method

.method public abstract isAllowAudioPlaybackCapture()Z
.end method

.method public abstract isAllowBackup()Z
.end method

.method public abstract isAllowClearUserData()Z
.end method

.method public abstract isAllowClearUserDataOnFailedRestore()Z
.end method

.method public abstract isAllowNativeHeapPointerTagging()Z
.end method

.method public abstract isAllowTaskReparenting()Z
.end method

.method public abstract isAnyDensity()Z
.end method

.method public abstract isBackupInForeground()Z
.end method

.method public abstract isBaseHardwareAccelerated()Z
.end method

.method public abstract isCantSaveState()Z
.end method

.method public abstract isCrossProfile()Z
.end method

.method public abstract isDebuggable()Z
.end method

.method public abstract isDefaultToDeviceProtectedStorage()Z
.end method

.method public abstract isDirectBootAware()Z
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isExternalStorage()Z
.end method

.method public abstract isExtractNativeLibs()Z
.end method

.method public abstract isForceQueryable()Z
.end method

.method public abstract isFullBackupOnly()Z
.end method

.method public abstract isGame()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isHasCode()Z
.end method

.method public abstract isHasDomainUrls()Z
.end method

.method public abstract isHasFragileUserData()Z
.end method

.method public abstract isIsolatedSplitLoading()Z
.end method

.method public abstract isKillAfterRestore()Z
.end method

.method public abstract isLargeHeap()Z
.end method

.method public abstract isMultiArch()Z
.end method

.method public abstract isOverlay()Z
.end method

.method public abstract isOverlayIsStatic()Z
.end method

.method public abstract isPartiallyDirectBootAware()Z
.end method

.method public abstract isPersistent()Z
.end method

.method public abstract isProfileableByShell()Z
.end method

.method public abstract isRequestLegacyExternalStorage()Z
.end method

.method public abstract isRequiredForAllUsers()Z
.end method

.method public abstract isResizeable()Z
.end method

.method public abstract isResizeableActivityViaSdkVersion()Z
.end method

.method public abstract isRestoreAnyVersion()Z
.end method

.method public abstract isStaticSharedLibrary()Z
.end method

.method public abstract isSupportsExtraLargeScreens()Z
.end method

.method public abstract isSupportsLargeScreens()Z
.end method

.method public abstract isSupportsNormalScreens()Z
.end method

.method public abstract isSupportsRtl()Z
.end method

.method public abstract isSupportsSmallScreens()Z
.end method

.method public abstract isTestOnly()Z
.end method

.method public abstract isUse32BitAbi()Z
.end method

.method public abstract isUseEmbeddedDex()Z
.end method

.method public abstract isUsesCleartextTraffic()Z
.end method

.method public abstract isUsesNonSdkApi()Z
.end method

.method public abstract isVisibleToInstantApps()Z
.end method

.method public abstract isVmSafeMode()Z
.end method

.method public abstract toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract toAppInfoWithoutStateWithoutFlags()Landroid/content/pm/ApplicationInfo;
.end method
