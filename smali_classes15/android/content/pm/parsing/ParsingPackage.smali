.class public interface abstract Landroid/content/pm/parsing/ParsingPackage;
.super Ljava/lang/Object;
.source "ParsingPackage.java"

# interfaces
.implements Landroid/content/pm/parsing/ParsingPackageRead;


# virtual methods
.method public abstract addActivity(Landroid/content/pm/parsing/component/ParsedActivity;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract addAdoptPermission(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract addAttribution(Landroid/content/pm/parsing/component/ParsedAttribution;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract addImplicitPermission(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract addInstrumentation(Landroid/content/pm/parsing/component/ParsedInstrumentation;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract addLibraryName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract addOriginalPackage(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract addOverlayable(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract addPermission(Landroid/content/pm/parsing/component/ParsedPermission;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract addPermissionGroup(Landroid/content/pm/parsing/component/ParsedPermissionGroup;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract addPreferredActivityFilter(Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedIntentInfo;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract addProtectedBroadcast(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract addProvider(Landroid/content/pm/parsing/component/ParsedProvider;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract addQueriesIntent(Landroid/content/Intent;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract addQueriesPackage(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract addQueriesProvider(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract addReceiver(Landroid/content/pm/parsing/component/ParsedActivity;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract addReqFeature(Landroid/content/pm/FeatureInfo;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract addRequestedPermission(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract addService(Landroid/content/pm/parsing/component/ParsedService;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract addUsesLibrary(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract addUsesOptionalLibrary(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract addUsesStaticLibrary(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract addUsesStaticLibraryCertDigests([Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract addUsesStaticLibraryVersion(J)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Landroid/content/pm/parsing/ParsingPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[I",
            "Landroid/util/SparseArray<",
            "[I>;)",
            "Landroid/content/pm/parsing/ParsingPackage;"
        }
    .end annotation
.end method

.method public abstract hideAsParsed()Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removeUsesOptionalLibrary(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setAllowAudioPlaybackCapture(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setAllowBackup(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setAllowClearUserData(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setAllowClearUserDataOnFailedRestore(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setAllowNativeHeapPointerTagging(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setAllowTaskReparenting(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setAnyDensity(I)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setAppComponentFactory(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setAutoRevokePermissions(I)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setBackupAgentName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setBackupInForeground(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setBanner(I)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setBaseHardwareAccelerated(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setBaseRevisionCode(I)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setCantSaveState(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setCategory(I)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setClassLoaderName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setClassName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setCompatibleWidthLimitDp(I)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setCompileSdkVersion(I)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setCompileSdkVersionCodename(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setCrossProfile(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setDebuggable(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setDefaultToDeviceProtectedStorage(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setDescriptionRes(I)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setDirectBootAware(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setEnabled(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setExternalStorage(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setExtractNativeLibs(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setForceQueryable(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setFullBackupContent(I)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setFullBackupOnly(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setGame(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setGwpAsanMode(I)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setHasCode(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setHasDomainUrls(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setHasFragileUserData(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setIconRes(I)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setInstallLocation(I)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setIsolatedSplitLoading(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setKillAfterRestore(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setLabelRes(I)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setLargeHeap(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setLargestWidthLimitDp(I)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setLogo(I)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setManageSpaceActivityName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setMaxAspectRatio(F)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setMetaData(Landroid/os/Bundle;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setMinAspectRatio(F)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setMinExtensionVersions(Landroid/util/SparseIntArray;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setMinSdkVersion(I)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setMultiArch(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setNetworkSecurityConfigRes(I)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setNonLocalizedLabel(Ljava/lang/CharSequence;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setOverlay(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setOverlayCategory(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setOverlayIsStatic(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setOverlayPriority(I)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setOverlayTarget(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setOverlayTargetName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setPartiallyDirectBootAware(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setPermission(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setPersistent(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setPreserveLegacyExternalStorage(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setProcessName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setProcesses(Ljava/util/Map;)Landroid/content/pm/parsing/ParsingPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/component/ParsedProcess;",
            ">;)",
            "Landroid/content/pm/parsing/ParsingPackage;"
        }
    .end annotation
.end method

.method public abstract setProfileableByShell(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setRealPackage(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setRequestLegacyExternalStorage(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setRequiredAccountType(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setRequiredForAllUsers(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setRequiresSmallestWidthDp(I)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setResizeable(I)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setResizeableActivity(Ljava/lang/Boolean;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setResizeableActivityViaSdkVersion(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setRestoreAnyVersion(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setRestrictUpdateHash([B)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setRestrictedAccountType(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setRoundIconRes(I)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setSharedUserId(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setSharedUserLabel(I)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setSplitClassLoaderName(ILjava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setSplitHasCode(IZ)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setStaticSharedLibName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setStaticSharedLibVersion(J)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setStaticSharedLibrary(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setSupportsExtraLargeScreens(I)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setSupportsLargeScreens(I)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setSupportsNormalScreens(I)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setSupportsRtl(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setSupportsSmallScreens(I)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setTargetSandboxVersion(I)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setTargetSdkVersion(I)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setTaskAffinity(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setTestOnly(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setTheme(I)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setUiOptions(I)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setUpgradeKeySets(Ljava/util/Set;)Landroid/content/pm/parsing/ParsingPackage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/parsing/ParsingPackage;"
        }
    .end annotation
.end method

.method public abstract setUse32BitAbi(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setUseEmbeddedDex(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setUsesCleartextTraffic(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setUsesNonSdkApi(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setVersionName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setVisibleToInstantApps(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setVmSafeMode(Z)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setVolumeUuid(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract setZygotePreloadName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract sortActivities()Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract sortReceivers()Landroid/content/pm/parsing/ParsingPackage;
.end method

.method public abstract sortServices()Landroid/content/pm/parsing/ParsingPackage;
.end method
