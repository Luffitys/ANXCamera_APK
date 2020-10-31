.class public Landroid/content/pm/parsing/ParsingPackageImpl;
.super Ljava/lang/Object;
.source "ParsingPackageImpl.java"

# interfaces
.implements Landroid/content/pm/parsing/ParsingPackage;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/parsing/ParsingPackageImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final ORDER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/pm/parsing/component/ParsedMainComponent;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PackageImpl"

.field public static sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

.field protected static sForIntentInfoPairs:Landroid/content/pm/parsing/component/ParsedIntentInfo$StringPairListParceler;

.field public static sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

.field public static sForInternedStringArray:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

.field public static sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

.field public static sForInternedStringValueMap:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

.field public static sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;


# instance fields
.field protected activities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            ">;"
        }
    .end annotation
.end field

.field protected adoptPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private allowAudioPlaybackCapture:Z

.field private allowBackup:Z

.field private allowClearUserData:Z

.field private allowClearUserDataOnFailedRestore:Z

.field private allowNativeHeapPointerTagging:Z

.field private allowTaskReparenting:Z

.field private anyDensity:Ljava/lang/Boolean;

.field private appComponentFactory:Ljava/lang/String;

.field private attributions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedAttribution;",
            ">;"
        }
    .end annotation
.end field

.field private autoRevokePermissions:I

.field private backupAgentName:Ljava/lang/String;

.field private backupInForeground:Z

.field private banner:I

.field protected baseCodePath:Ljava/lang/String;

.field private baseHardwareAccelerated:Z

.field private baseRevisionCode:I

.field private cantSaveState:Z

.field private category:I

.field private classLoaderName:Ljava/lang/String;

.field private className:Ljava/lang/String;

.field protected codePath:Ljava/lang/String;

.field private compatibleWidthLimitDp:I

.field private compileSdkVersion:I

.field private compileSdkVersionCodeName:Ljava/lang/String;

.field private configPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ConfigurationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private crossProfile:Z

.field private debuggable:Z

.field private defaultToDeviceProtectedStorage:Z

.field private descriptionRes:I

.field private directBootAware:Z

.field private enabled:Z

.field private externalStorage:Z

.field private extractNativeLibs:Z

.field private featureGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private forceQueryable:Z

.field private fullBackupContent:I

.field private fullBackupOnly:Z

.field private game:Z

.field protected gwpAsanMode:I

.field private hasCode:Z

.field private hasDomainUrls:Z

.field private hasFragileUserData:Z

.field private iconRes:I

.field private implicitPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private installLocation:I

.field protected instrumentations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation
.end field

.field private isolatedSplitLoading:Z

.field private keySetMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;"
        }
    .end annotation
.end field

.field private killAfterRestore:Z

.field private labelRes:I

.field private largeHeap:Z

.field private largestWidthLimitDp:I

.field private libraryNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private logo:I

.field private manageSpaceActivityName:Ljava/lang/String;

.field private maxAspectRatio:F

.field private metaData:Landroid/os/Bundle;

.field private mimeGroups:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private minAspectRatio:F

.field private minExtensionVersions:Landroid/util/SparseIntArray;

.field private minSdkVersion:I

.field private multiArch:Z

.field private networkSecurityConfigRes:I

.field private nonLocalizedLabel:Ljava/lang/CharSequence;

.field protected originalPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private overlay:Z

.field private overlayCategory:Ljava/lang/String;

.field private overlayIsStatic:Z

.field private overlayPriority:I

.field private overlayTarget:Ljava/lang/String;

.field private overlayTargetName:Ljava/lang/String;

.field private overlayables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected packageName:Ljava/lang/String;

.field private partiallyDirectBootAware:Z

.field private permission:Ljava/lang/String;

.field protected permissionGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedPermissionGroup;",
            ">;"
        }
    .end annotation
.end field

.field protected permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedPermission;",
            ">;"
        }
    .end annotation
.end field

.field private persistent:Z

.field private preferredActivityFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/component/ParsedIntentInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private preserveLegacyExternalStorage:Z

.field private processName:Ljava/lang/String;

.field private processes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/component/ParsedProcess;",
            ">;"
        }
    .end annotation
.end field

.field private profileableByShell:Z

.field protected protectedBroadcasts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedProvider;",
            ">;"
        }
    .end annotation
.end field

.field private queriesIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private queriesPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private queriesProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private realPackage:Ljava/lang/String;

.field protected receivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            ">;"
        }
    .end annotation
.end field

.field private reqFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private requestLegacyExternalStorage:Z

.field private requestedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requiredAccountType:Ljava/lang/String;

.field private requiredForAllUsers:Z

.field private requiresSmallestWidthDp:I

.field private resizeable:Ljava/lang/Boolean;

.field private resizeableActivity:Ljava/lang/Boolean;

.field private resizeableActivityViaSdkVersion:Z

.field private restoreAnyVersion:Z

.field private restrictUpdateHash:[B

.field private restrictedAccountType:Ljava/lang/String;

.field private roundIconRes:I

.field protected services:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedService;",
            ">;"
        }
    .end annotation
.end field

.field private sharedUserId:Ljava/lang/String;

.field private sharedUserLabel:I

.field private signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field private splitClassLoaderNames:[Ljava/lang/String;

.field protected splitCodePaths:[Ljava/lang/String;

.field private splitDependencies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation
.end field

.field private splitFlags:[I

.field private splitNames:[Ljava/lang/String;

.field private splitRevisionCodes:[I

.field private staticSharedLibName:Ljava/lang/String;

.field private staticSharedLibVersion:J

.field private staticSharedLibrary:Z

.field private supportsExtraLargeScreens:Ljava/lang/Boolean;

.field private supportsLargeScreens:Ljava/lang/Boolean;

.field private supportsNormalScreens:Ljava/lang/Boolean;

.field private supportsRtl:Z

.field private supportsSmallScreens:Ljava/lang/Boolean;

.field private targetSandboxVersion:I

.field private targetSdkVersion:I

.field private taskAffinity:Ljava/lang/String;

.field private testOnly:Z

.field private theme:I

.field private uiOptions:I

.field private upgradeKeySets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private use32BitAbi:Z

.field private useEmbeddedDex:Z

.field private usesCleartextTraffic:Z

.field protected usesLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private usesNonSdkApi:Z

.field protected usesOptionalLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private usesStaticLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private usesStaticLibrariesCertDigests:[[Ljava/lang/String;

.field private usesStaticLibrariesVersions:[J

.field protected versionCode:I

.field protected versionCodeMajor:I

.field private versionName:Ljava/lang/String;

.field private visibleToInstantApps:Z

.field private vmSafeMode:Z

.field protected volumeUuid:Ljava/lang/String;

.field private zygotePreloadName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    sput-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    sput-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    sput-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedStringArray:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    sput-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    sput-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedStringValueMap:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    sput-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    const-class v0, Landroid/content/pm/parsing/component/ParsedIntentInfo$StringPairListParceler;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Landroid/content/pm/parsing/component/ParsedIntentInfo$StringPairListParceler;

    sput-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForIntentInfoPairs:Landroid/content/pm/parsing/component/ParsedIntentInfo$StringPairListParceler;

    sget-object v0, Landroid/content/pm/parsing/-$$Lambda$ParsingPackageImpl$RBt-Tka1DogaqXftDzlcrLHE70c;->INSTANCE:Landroid/content/pm/parsing/-$$Lambda$ParsingPackageImpl$RBt-Tka1DogaqXftDzlcrLHE70c;

    sput-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->ORDER_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Landroid/content/pm/parsing/ParsingPackageImpl$1;

    invoke-direct {v0}, Landroid/content/pm/parsing/ParsingPackageImpl$1;-><init>()V

    sput-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->overlayables:Ljava/util/Map;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->libraryNames:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesLibraries:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesStaticLibraries:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->configPreferences:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->reqFeatures:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->featureGroups:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->originalPackages:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->adoptPermissions:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->requestedPermissions:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->implicitPermissions:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->upgradeKeySets:Ljava/util/Set;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->keySetMapping:Ljava/util/Map;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->attributions:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->permissions:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->permissionGroups:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->instrumentations:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->preferredActivityFilters:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->queriesIntents:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->queriesPackages:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->queriesProviders:Ljava/util/Set;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->enabled:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->installLocation:I

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v1, Landroid/content/pm/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    sget-object v1, Landroid/content/pm/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    sget-object v1, Landroid/content/pm/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    sget-object v1, Landroid/content/pm/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    sget-object v1, Landroid/content/pm/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->resizeable:Ljava/lang/Boolean;

    sget-object v1, Landroid/content/pm/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->anyDensity:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->versionCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->versionCodeMajor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->baseRevisionCode:I

    sget-object v1, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->versionName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->compileSdkVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    sget-object v1, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->realPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->requiredForAllUsers:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->restrictedAccountType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->requiredAccountType:Ljava/lang/String;

    sget-object v1, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->overlayTarget:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->overlayTargetName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->overlayCategory:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->overlayPriority:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->overlayIsStatic:Z

    sget-object v1, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedStringValueMap:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;->unparcel(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->overlayables:Ljava/util/Map;

    sget-object v1, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->staticSharedLibName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->staticSharedLibVersion:J

    sget-object v1, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->libraryNames:Ljava/util/List;

    sget-object v1, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesLibraries:Ljava/util/List;

    sget-object v1, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    sget-object v1, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesStaticLibraries:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesStaticLibrariesVersions:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ltz v1, :cond_1c5

    new-array v2, v1, [[Ljava/lang/String;

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_1b6
    if-ge v2, v1, :cond_1c5

    iget-object v3, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    sget-object v4, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedStringArray:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;

    invoke-virtual {v4, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArray;->unparcel(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b6

    :cond_1c5
    sget-object v2, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->sharedUserId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->sharedUserLabel:I

    sget-object v2, Landroid/content/pm/ConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->configPreferences:Ljava/util/List;

    sget-object v2, Landroid/content/pm/FeatureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->reqFeatures:Ljava/util/List;

    sget-object v2, Landroid/content/pm/FeatureGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->featureGroups:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->restrictUpdateHash:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->originalPackages:Ljava/util/List;

    sget-object v2, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->adoptPermissions:Ljava/util/List;

    sget-object v2, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->requestedPermissions:Ljava/util/List;

    sget-object v2, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->implicitPermissions:Ljava/util/List;

    sget-object v2, Landroid/content/pm/parsing/ParsingPackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->upgradeKeySets:Ljava/util/Set;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->keySetMapping:Ljava/util/Map;

    sget-object v2, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    sget-object v2, Landroid/content/pm/parsing/component/ParsedActivity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    sget-object v2, Landroid/content/pm/parsing/component/ParsedActivity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    sget-object v2, Landroid/content/pm/parsing/component/ParsedService;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    sget-object v2, Landroid/content/pm/parsing/component/ParsedProvider;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    sget-object v2, Landroid/content/pm/parsing/component/ParsedAttribution;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->attributions:Ljava/util/List;

    sget-object v2, Landroid/content/pm/parsing/component/ParsedPermission;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->permissions:Ljava/util/List;

    sget-object v2, Landroid/content/pm/parsing/component/ParsedPermissionGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->permissionGroups:Ljava/util/List;

    sget-object v2, Landroid/content/pm/parsing/component/ParsedInstrumentation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->instrumentations:Ljava/util/List;

    sget-object v2, Landroid/content/pm/parsing/ParsingPackageImpl;->sForIntentInfoPairs:Landroid/content/pm/parsing/component/ParsedIntentInfo$StringPairListParceler;

    invoke-virtual {v2, p1}, Landroid/content/pm/parsing/component/ParsedIntentInfo$StringPairListParceler;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->preferredActivityFilters:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->metaData:Landroid/os/Bundle;

    sget-object v2, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->codePath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->use32BitAbi:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->visibleToInstantApps:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->forceQueryable:Z

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->queriesIntents:Ljava/util/List;

    sget-object v2, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->unparcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->queriesPackages:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->appComponentFactory:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->backupAgentName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->banner:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->category:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->classLoaderName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->className:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->compatibleWidthLimitDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->descriptionRes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->enabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->crossProfile:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->fullBackupContent:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->iconRes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->installLocation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->labelRes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->largestWidthLimitDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->logo:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->maxAspectRatio:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->minAspectRatio:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->minSdkVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->networkSecurityConfigRes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->permission:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->requiresSmallestWidthDp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->roundIconRes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->targetSandboxVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->targetSdkVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->theme:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->uiOptions:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->zygotePreloadName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->splitDependencies:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->splitFlags:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->splitNames:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->splitRevisionCodes:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->externalStorage:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->baseHardwareAccelerated:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->allowBackup:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->killAfterRestore:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->restoreAnyVersion:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->fullBackupOnly:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->persistent:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->debuggable:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->vmSafeMode:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->hasCode:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->allowTaskReparenting:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->allowClearUserData:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->largeHeap:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesCleartextTraffic:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->supportsRtl:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->testOnly:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->multiArch:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->extractNativeLibs:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->game:Z

    sget-object v2, Landroid/content/pm/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    invoke-virtual {v2, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->unparcel(Landroid/os/Parcel;)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->resizeableActivity:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->staticSharedLibrary:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->overlay:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->isolatedSplitLoading:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->hasDomainUrls:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->profileableByShell:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->backupInForeground:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->useEmbeddedDex:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->defaultToDeviceProtectedStorage:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->directBootAware:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->partiallyDirectBootAware:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->resizeableActivityViaSdkVersion:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->allowClearUserDataOnFailedRestore:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->allowAudioPlaybackCapture:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->requestLegacyExternalStorage:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesNonSdkApi:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->hasFragileUserData:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->cantSaveState:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->allowNativeHeapPointerTagging:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->autoRevokePermissions:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->preserveLegacyExternalStorage:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->mimeGroups:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->gwpAsanMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseIntArray()Landroid/util/SparseIntArray;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->minExtensionVersions:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->overlayables:Ljava/util/Map;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->libraryNames:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesLibraries:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesStaticLibraries:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->configPreferences:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->reqFeatures:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->featureGroups:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->originalPackages:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->adoptPermissions:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->requestedPermissions:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->implicitPermissions:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->upgradeKeySets:Ljava/util/Set;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->keySetMapping:Ljava/util/Map;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->attributions:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->permissions:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->permissionGroups:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->instrumentations:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->preferredActivityFilters:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->queriesIntents:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->queriesPackages:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->queriesProviders:Ljava/util/Set;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->enabled:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->installLocation:I

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->baseCodePath:Ljava/lang/String;

    iput-object p3, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->codePath:Ljava/lang/String;

    if-eqz p4, :cond_112

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->versionCode:I

    const/16 v0, 0xb

    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->versionCodeMajor:I

    const/4 v0, 0x5

    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/parsing/ParsingPackageImpl;->setBaseRevisionCode(I)Landroid/content/pm/parsing/ParsingPackageImpl;

    const/4 v0, 0x2

    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/pm/parsing/ParsingPackageImpl;->setVersionName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    const/16 v0, 0x9

    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/parsing/ParsingPackageImpl;->setCompileSdkVersion(I)Landroid/content/pm/parsing/ParsingPackageImpl;

    const/16 v0, 0xa

    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/pm/parsing/ParsingPackageImpl;->setCompileSdkVersionCodename(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;

    const/4 v0, 0x6

    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/parsing/ParsingPackageImpl;->setIsolatedSplitLoading(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    :cond_112
    return-void
.end method

.method private addMimeGroupsFromComponent(Landroid/content/pm/parsing/component/ParsedComponent;)V
    .registers 7

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_30

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    invoke-virtual {v1}, Landroid/content/IntentFilter;->countMimeGroups()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1c
    if-ltz v2, :cond_2d

    iget-object v3, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->mimeGroups:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->getMimeGroup(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->add(Landroid/util/ArraySet;Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v3

    iput-object v3, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->mimeGroups:Landroid/util/ArraySet;

    add-int/lit8 v2, v2, -0x1

    goto :goto_1c

    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_30
    return-void
.end method

.method static synthetic lambda$static$0(Landroid/content/pm/parsing/component/ParsedMainComponent;Landroid/content/pm/parsing/component/ParsedMainComponent;)I
    .registers 4

    invoke-virtual {p1}, Landroid/content/pm/parsing/component/ParsedMainComponent;->getOrder()I

    move-result v0

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedMainComponent;->getOrder()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public bridge synthetic addActivity(Landroid/content/pm/parsing/component/ParsedActivity;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->addActivity(Landroid/content/pm/parsing/component/ParsedActivity;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addActivity(Landroid/content/pm/parsing/component/ParsedActivity;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 3

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    invoke-direct {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->addMimeGroupsFromComponent(Landroid/content/pm/parsing/component/ParsedComponent;)V

    return-object p0
.end method

.method public bridge synthetic addAdoptPermission(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->addAdoptPermission(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addAdoptPermission(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 4

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->adoptPermissions:Ljava/util/List;

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->adoptPermissions:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addAttribution(Landroid/content/pm/parsing/component/ParsedAttribution;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->addAttribution(Landroid/content/pm/parsing/component/ParsedAttribution;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addAttribution(Landroid/content/pm/parsing/component/ParsedAttribution;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 3

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->attributions:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->attributions:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addConfigPreference(Landroid/content/pm/ConfigurationInfo;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 3

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->configPreferences:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->configPreferences:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addFeatureGroup(Landroid/content/pm/FeatureGroupInfo;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 3

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->featureGroups:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->featureGroups:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addImplicitPermission(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->addImplicitPermission(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addImplicitPermission(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 4

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->implicitPermissions:Ljava/util/List;

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->implicitPermissions:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addInstrumentation(Landroid/content/pm/parsing/component/ParsedInstrumentation;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->addInstrumentation(Landroid/content/pm/parsing/component/ParsedInstrumentation;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addInstrumentation(Landroid/content/pm/parsing/component/ParsedInstrumentation;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 3

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->instrumentations:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->instrumentations:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/parsing/ParsingPackageImpl;->addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addKeySet(Ljava/lang/String;Ljava/security/PublicKey;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 5

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->keySetMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-nez v0, :cond_10

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v1

    :cond_10
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->keySetMapping:Ljava/util/Map;

    invoke-static {v1, p1, v0}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->keySetMapping:Ljava/util/Map;

    return-object p0
.end method

.method public bridge synthetic addLibraryName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->addLibraryName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addLibraryName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 4

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->libraryNames:Ljava/util/List;

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->libraryNames:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addOriginalPackage(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->addOriginalPackage(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addOriginalPackage(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 3

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->originalPackages:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->originalPackages:Ljava/util/List;

    return-object p0
.end method

.method public addOverlayable(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 5

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->overlayables:Ljava/util/Map;

    invoke-static {p2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->overlayables:Ljava/util/Map;

    return-object p0
.end method

.method public bridge synthetic addPermission(Landroid/content/pm/parsing/component/ParsedPermission;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->addPermission(Landroid/content/pm/parsing/component/ParsedPermission;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addPermission(Landroid/content/pm/parsing/component/ParsedPermission;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 3

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->permissions:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->permissions:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addPermissionGroup(Landroid/content/pm/parsing/component/ParsedPermissionGroup;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->addPermissionGroup(Landroid/content/pm/parsing/component/ParsedPermissionGroup;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addPermissionGroup(Landroid/content/pm/parsing/component/ParsedPermissionGroup;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 3

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->permissionGroups:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->permissionGroups:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addPreferredActivityFilter(Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedIntentInfo;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/parsing/ParsingPackageImpl;->addPreferredActivityFilter(Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedIntentInfo;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addPreferredActivityFilter(Ljava/lang/String;Landroid/content/pm/parsing/component/ParsedIntentInfo;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 5

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->preferredActivityFilters:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->preferredActivityFilters:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addProtectedBroadcast(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->addProtectedBroadcast(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addProtectedBroadcast(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 4

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    :cond_14
    return-object p0
.end method

.method public bridge synthetic addProvider(Landroid/content/pm/parsing/component/ParsedProvider;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->addProvider(Landroid/content/pm/parsing/component/ParsedProvider;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addProvider(Landroid/content/pm/parsing/component/ParsedProvider;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 3

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    invoke-direct {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->addMimeGroupsFromComponent(Landroid/content/pm/parsing/component/ParsedComponent;)V

    return-object p0
.end method

.method public bridge synthetic addQueriesIntent(Landroid/content/Intent;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->addQueriesIntent(Landroid/content/Intent;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addQueriesIntent(Landroid/content/Intent;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 3

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->queriesIntents:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->queriesIntents:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addQueriesPackage(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->addQueriesPackage(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addQueriesPackage(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 4

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->queriesPackages:Ljava/util/List;

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->queriesPackages:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addQueriesProvider(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->addQueriesProvider(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addQueriesProvider(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 3

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->queriesProviders:Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->queriesProviders:Ljava/util/Set;

    return-object p0
.end method

.method public bridge synthetic addReceiver(Landroid/content/pm/parsing/component/ParsedActivity;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->addReceiver(Landroid/content/pm/parsing/component/ParsedActivity;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addReceiver(Landroid/content/pm/parsing/component/ParsedActivity;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 3

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    invoke-direct {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->addMimeGroupsFromComponent(Landroid/content/pm/parsing/component/ParsedComponent;)V

    return-object p0
.end method

.method public bridge synthetic addReqFeature(Landroid/content/pm/FeatureInfo;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->addReqFeature(Landroid/content/pm/FeatureInfo;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addReqFeature(Landroid/content/pm/FeatureInfo;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 3

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->reqFeatures:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->reqFeatures:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addRequestedPermission(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->addRequestedPermission(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addRequestedPermission(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 4

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->requestedPermissions:Ljava/util/List;

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->requestedPermissions:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addService(Landroid/content/pm/parsing/component/ParsedService;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->addService(Landroid/content/pm/parsing/component/ParsedService;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addService(Landroid/content/pm/parsing/component/ParsedService;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 3

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    invoke-direct {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->addMimeGroupsFromComponent(Landroid/content/pm/parsing/component/ParsedComponent;)V

    return-object p0
.end method

.method public bridge synthetic addUsesLibrary(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->addUsesLibrary(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addUsesLibrary(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 4

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesLibraries:Ljava/util/List;

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesLibraries:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addUsesOptionalLibrary(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->addUsesOptionalLibrary(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addUsesOptionalLibrary(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 4

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addUsesStaticLibrary(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->addUsesStaticLibrary(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addUsesStaticLibrary(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 4

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesStaticLibraries:Ljava/util/List;

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesStaticLibraries:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic addUsesStaticLibraryCertDigests([Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->addUsesStaticLibraryCertDigests([Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addUsesStaticLibraryCertDigests([Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 5

    const-class v0, [Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic addUsesStaticLibraryVersion(J)Landroid/content/pm/parsing/ParsingPackage;
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/parsing/ParsingPackageImpl;->addUsesStaticLibraryVersion(J)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public addUsesStaticLibraryVersion(J)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 5

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesStaticLibrariesVersions:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesStaticLibrariesVersions:[J

    return-object p0
.end method

.method public bridge synthetic asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/pm/parsing/ParsingPackageImpl;->asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public asSplit([Ljava/lang/String;[Ljava/lang/String;[ILandroid/util/SparseArray;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[I",
            "Landroid/util/SparseArray<",
            "[I>;)",
            "Landroid/content/pm/parsing/ParsingPackageImpl;"
        }
    .end annotation

    iput-object p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->splitNames:[Ljava/lang/String;

    iput-object p2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->splitCodePaths:[Ljava/lang/String;

    iput-object p3, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->splitRevisionCodes:[I

    iput-object p4, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->splitDependencies:Landroid/util/SparseArray;

    array-length v0, p1

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->splitFlags:[I

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    return-object p0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getActivities()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    return-object v0
.end method

.method public getAdoptPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->adoptPermissions:Ljava/util/List;

    return-object v0
.end method

.method public getAppComponentFactory()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->appComponentFactory:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedAttribution;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->attributions:Ljava/util/List;

    return-object v0
.end method

.method public getAutoRevokePermissions()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->autoRevokePermissions:I

    return v0
.end method

.method public getBackupAgentName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->backupAgentName:Ljava/lang/String;

    return-object v0
.end method

.method public getBanner()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->banner:I

    return v0
.end method

.method public getBaseCodePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->baseCodePath:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseRevisionCode()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->baseRevisionCode:I

    return v0
.end method

.method public getCategory()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->category:I

    return v0
.end method

.method public getClassLoaderName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->classLoaderName:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getCodePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->codePath:Ljava/lang/String;

    return-object v0
.end method

.method public getCompatibleWidthLimitDp()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->compatibleWidthLimitDp:I

    return v0
.end method

.method public getCompileSdkVersion()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->compileSdkVersion:I

    return v0
.end method

.method public getCompileSdkVersionCodeName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigPreferences()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ConfigurationInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->configPreferences:Ljava/util/List;

    return-object v0
.end method

.method public getDescriptionRes()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->descriptionRes:I

    return v0
.end method

.method public getFeatureGroups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureGroupInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->featureGroups:Ljava/util/List;

    return-object v0
.end method

.method public getFullBackupContent()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->fullBackupContent:I

    return v0
.end method

.method public getGwpAsanMode()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->gwpAsanMode:I

    return v0
.end method

.method public getIconRes()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->iconRes:I

    return v0
.end method

.method public getImplicitPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->implicitPermissions:Ljava/util/List;

    return-object v0
.end method

.method public getInstallLocation()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->installLocation:I

    return v0
.end method

.method public getInstrumentations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedInstrumentation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->instrumentations:Ljava/util/List;

    return-object v0
.end method

.method public getKeySetMapping()Ljava/util/Map;
    .registers 2
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

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->keySetMapping:Ljava/util/Map;

    return-object v0
.end method

.method public getLabelRes()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->labelRes:I

    return v0
.end method

.method public getLargestWidthLimitDp()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->largestWidthLimitDp:I

    return v0
.end method

.method public getLibraryNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->libraryNames:Ljava/util/List;

    return-object v0
.end method

.method public getLogo()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->logo:I

    return v0
.end method

.method public getManageSpaceActivityName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAspectRatio()F
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->maxAspectRatio:F

    return v0
.end method

.method public getMetaData()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->metaData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getMimeGroups()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->mimeGroups:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getMinAspectRatio()F
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->minAspectRatio:F

    return v0
.end method

.method public getMinExtensionVersions()Landroid/util/SparseIntArray;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->minExtensionVersions:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public getMinSdkVersion()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->minSdkVersion:I

    return v0
.end method

.method public getNetworkSecurityConfigRes()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->networkSecurityConfigRes:I

    return v0
.end method

.method public getNonLocalizedLabel()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getOriginalPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->originalPackages:Ljava/util/List;

    return-object v0
.end method

.method public getOverlayCategory()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->overlayCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getOverlayPriority()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->overlayPriority:I

    return v0
.end method

.method public getOverlayTarget()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->overlayTarget:Ljava/lang/String;

    return-object v0
.end method

.method public getOverlayTargetName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->overlayTargetName:Ljava/lang/String;

    return-object v0
.end method

.method public getOverlayables()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->overlayables:Ljava/util/Map;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermission()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->permission:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionGroups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedPermissionGroup;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->permissionGroups:Ljava/util/List;

    return-object v0
.end method

.method public getPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedPermission;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public getPreferredActivityFilters()Ljava/util/List;
    .registers 2
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

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->preferredActivityFilters:Ljava/util/List;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->processName:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    :goto_7
    return-object v0
.end method

.method public getProcesses()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/component/ParsedProcess;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    return-object v0
.end method

.method public getProtectedBroadcasts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    return-object v0
.end method

.method public getProviders()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedProvider;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    return-object v0
.end method

.method public getQueriesIntents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->queriesIntents:Ljava/util/List;

    return-object v0
.end method

.method public getQueriesPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->queriesPackages:Ljava/util/List;

    return-object v0
.end method

.method public getQueriesProviders()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->queriesProviders:Ljava/util/Set;

    return-object v0
.end method

.method public getRealPackage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->realPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getReceivers()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedActivity;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    return-object v0
.end method

.method public getReqFeatures()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->reqFeatures:Ljava/util/List;

    return-object v0
.end method

.method public getRequestedPermissions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->requestedPermissions:Ljava/util/List;

    return-object v0
.end method

.method public getRequiredAccountType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->requiredAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getRequiresSmallestWidthDp()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->requiresSmallestWidthDp:I

    return v0
.end method

.method public getResizeableActivity()Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->resizeableActivity:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRestrictUpdateHash()[B
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->restrictUpdateHash:[B

    return-object v0
.end method

.method public getRestrictedAccountType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->restrictedAccountType:Ljava/lang/String;

    return-object v0
.end method

.method public getRoundIconRes()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->roundIconRes:I

    return v0
.end method

.method public getServices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/parsing/component/ParsedService;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    return-object v0
.end method

.method public getSharedUserId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->sharedUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedUserLabel()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->sharedUserLabel:I

    return v0
.end method

.method public getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    return-object v0
.end method

.method public getSplitClassLoaderNames()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getSplitCodePaths()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->splitCodePaths:[Ljava/lang/String;

    return-object v0
.end method

.method public getSplitDependencies()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->splitDependencies:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getSplitFlags()[I
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->splitFlags:[I

    return-object v0
.end method

.method public getSplitNames()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->splitNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getSplitRevisionCodes()[I
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->splitRevisionCodes:[I

    return-object v0
.end method

.method public getStaticSharedLibName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->staticSharedLibName:Ljava/lang/String;

    return-object v0
.end method

.method public getStaticSharedLibVersion()J
    .registers 3

    iget-wide v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->staticSharedLibVersion:J

    return-wide v0
.end method

.method public getTargetSandboxVersion()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->targetSandboxVersion:I

    return v0
.end method

.method public getTargetSdkVersion()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->targetSdkVersion:I

    return v0
.end method

.method public getTaskAffinity()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->taskAffinity:Ljava/lang/String;

    return-object v0
.end method

.method public getTheme()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->theme:I

    return v0
.end method

.method public getUiOptions()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->uiOptions:I

    return v0
.end method

.method public getUpgradeKeySets()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->upgradeKeySets:Ljava/util/Set;

    return-object v0
.end method

.method public getUsesLibraries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesLibraries:Ljava/util/List;

    return-object v0
.end method

.method public getUsesOptionalLibraries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    return-object v0
.end method

.method public getUsesStaticLibraries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesStaticLibraries:Ljava/util/List;

    return-object v0
.end method

.method public getUsesStaticLibrariesCertDigests()[[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    return-object v0
.end method

.method public getUsesStaticLibrariesVersions()[J
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesStaticLibrariesVersions:[J

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->versionCode:I

    return v0
.end method

.method public getVersionCodeMajor()I
    .registers 2

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->versionCodeMajor:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public getVolumeUuid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->volumeUuid:Ljava/lang/String;

    return-object v0
.end method

.method public getZygotePreloadName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->zygotePreloadName:Ljava/lang/String;

    return-object v0
.end method

.method public hasPreserveLegacyExternalStorage()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->preserveLegacyExternalStorage:Z

    return v0
.end method

.method public hideAsParsed()Ljava/lang/Object;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isAllowAudioPlaybackCapture()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->allowAudioPlaybackCapture:Z

    return v0
.end method

.method public isAllowBackup()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->allowBackup:Z

    return v0
.end method

.method public isAllowClearUserData()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->allowClearUserData:Z

    return v0
.end method

.method public isAllowClearUserDataOnFailedRestore()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->allowClearUserDataOnFailedRestore:Z

    return v0
.end method

.method public isAllowNativeHeapPointerTagging()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->allowNativeHeapPointerTagging:Z

    return v0
.end method

.method public isAllowTaskReparenting()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->allowTaskReparenting:Z

    return v0
.end method

.method public isAnyDensity()Z
    .registers 3

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->anyDensity:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isBackupInForeground()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->backupInForeground:Z

    return v0
.end method

.method public isBaseHardwareAccelerated()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->baseHardwareAccelerated:Z

    return v0
.end method

.method public isCantSaveState()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->cantSaveState:Z

    return v0
.end method

.method public isCrossProfile()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->crossProfile:Z

    return v0
.end method

.method public isDebuggable()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->debuggable:Z

    return v0
.end method

.method public isDefaultToDeviceProtectedStorage()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->defaultToDeviceProtectedStorage:Z

    return v0
.end method

.method public isDirectBootAware()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->directBootAware:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->enabled:Z

    return v0
.end method

.method public isExternalStorage()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->externalStorage:Z

    return v0
.end method

.method public isExtractNativeLibs()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->extractNativeLibs:Z

    return v0
.end method

.method public isForceQueryable()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->forceQueryable:Z

    return v0
.end method

.method public isFullBackupOnly()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->fullBackupOnly:Z

    return v0
.end method

.method public isGame()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->game:Z

    return v0
.end method

.method public isHasCode()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->hasCode:Z

    return v0
.end method

.method public isHasDomainUrls()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->hasDomainUrls:Z

    return v0
.end method

.method public isHasFragileUserData()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->hasFragileUserData:Z

    return v0
.end method

.method public isIsolatedSplitLoading()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->isolatedSplitLoading:Z

    return v0
.end method

.method public isKillAfterRestore()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->killAfterRestore:Z

    return v0
.end method

.method public isLargeHeap()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->largeHeap:Z

    return v0
.end method

.method public isMultiArch()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->multiArch:Z

    return v0
.end method

.method public isOverlay()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->overlay:Z

    return v0
.end method

.method public isOverlayIsStatic()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->overlayIsStatic:Z

    return v0
.end method

.method public isPartiallyDirectBootAware()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->partiallyDirectBootAware:Z

    return v0
.end method

.method public isPersistent()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->persistent:Z

    return v0
.end method

.method public isProfileableByShell()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->profileableByShell:Z

    return v0
.end method

.method public isRequestLegacyExternalStorage()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->requestLegacyExternalStorage:Z

    return v0
.end method

.method public isRequiredForAllUsers()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->requiredForAllUsers:Z

    return v0
.end method

.method public isResizeable()Z
    .registers 3

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->resizeable:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isResizeableActivityViaSdkVersion()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->resizeableActivityViaSdkVersion:Z

    return v0
.end method

.method public isRestoreAnyVersion()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->restoreAnyVersion:Z

    return v0
.end method

.method public isStaticSharedLibrary()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->staticSharedLibrary:Z

    return v0
.end method

.method public isSupportsExtraLargeScreens()Z
    .registers 3

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    if-nez v0, :cond_e

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->targetSdkVersion:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSupportsLargeScreens()Z
    .registers 3

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSupportsNormalScreens()Z
    .registers 2

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public isSupportsRtl()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->supportsRtl:Z

    return v0
.end method

.method public isSupportsSmallScreens()Z
    .registers 3

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    if-nez v0, :cond_d

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->targetSdkVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0

    :cond_d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isTestOnly()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->testOnly:Z

    return v0
.end method

.method public isUse32BitAbi()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->use32BitAbi:Z

    return v0
.end method

.method public isUseEmbeddedDex()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->useEmbeddedDex:Z

    return v0
.end method

.method public isUsesCleartextTraffic()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesCleartextTraffic:Z

    return v0
.end method

.method public isUsesNonSdkApi()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesNonSdkApi:Z

    return v0
.end method

.method public isVisibleToInstantApps()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->visibleToInstantApps:Z

    return v0
.end method

.method public isVmSafeMode()Z
    .registers 2

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->vmSafeMode:Z

    return v0
.end method

.method public bridge synthetic removeUsesOptionalLibrary(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->removeUsesOptionalLibrary(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public removeUsesOptionalLibrary(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 3

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->remove(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic setAllowAudioPlaybackCapture(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setAllowAudioPlaybackCapture(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setAllowAudioPlaybackCapture(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->allowAudioPlaybackCapture:Z

    return-object p0
.end method

.method public bridge synthetic setAllowBackup(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setAllowBackup(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setAllowBackup(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->allowBackup:Z

    return-object p0
.end method

.method public bridge synthetic setAllowClearUserData(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setAllowClearUserData(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setAllowClearUserData(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->allowClearUserData:Z

    return-object p0
.end method

.method public bridge synthetic setAllowClearUserDataOnFailedRestore(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setAllowClearUserDataOnFailedRestore(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setAllowClearUserDataOnFailedRestore(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->allowClearUserDataOnFailedRestore:Z

    return-object p0
.end method

.method public bridge synthetic setAllowNativeHeapPointerTagging(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setAllowNativeHeapPointerTagging(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setAllowNativeHeapPointerTagging(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->allowNativeHeapPointerTagging:Z

    return-object p0
.end method

.method public bridge synthetic setAllowTaskReparenting(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setAllowTaskReparenting(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setAllowTaskReparenting(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->allowTaskReparenting:Z

    return-object p0
.end method

.method public bridge synthetic setAnyDensity(I)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setAnyDensity(I)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setAnyDensity(I)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    return-object p0

    :cond_4
    if-gez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->anyDensity:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setAppComponentFactory(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setAppComponentFactory(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setAppComponentFactory(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-object p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->appComponentFactory:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setAutoRevokePermissions(I)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setAutoRevokePermissions(I)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setAutoRevokePermissions(I)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->autoRevokePermissions:I

    return-object p0
.end method

.method public bridge synthetic setBackupAgentName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setBackupAgentName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setBackupAgentName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-object p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->backupAgentName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setBackupInForeground(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setBackupInForeground(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setBackupInForeground(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->backupInForeground:Z

    return-object p0
.end method

.method public bridge synthetic setBanner(I)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setBanner(I)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setBanner(I)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->banner:I

    return-object p0
.end method

.method public bridge synthetic setBaseHardwareAccelerated(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setBaseHardwareAccelerated(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setBaseHardwareAccelerated(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->baseHardwareAccelerated:Z

    return-object p0
.end method

.method public bridge synthetic setBaseRevisionCode(I)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setBaseRevisionCode(I)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setBaseRevisionCode(I)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->baseRevisionCode:I

    return-object p0
.end method

.method public bridge synthetic setCantSaveState(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setCantSaveState(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setCantSaveState(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->cantSaveState:Z

    return-object p0
.end method

.method public bridge synthetic setCategory(I)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setCategory(I)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setCategory(I)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->category:I

    return-object p0
.end method

.method public bridge synthetic setClassLoaderName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setClassLoaderName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setClassLoaderName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-object p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->classLoaderName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setClassName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setClassName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setClassName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-object p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->className:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setCompatibleWidthLimitDp(I)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setCompatibleWidthLimitDp(I)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setCompatibleWidthLimitDp(I)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->compatibleWidthLimitDp:I

    return-object p0
.end method

.method public bridge synthetic setCompileSdkVersion(I)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setCompileSdkVersion(I)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setCompileSdkVersion(I)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->compileSdkVersion:I

    return-object p0
.end method

.method public setCompileSdkVersionCodename(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    iput-object p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setCrossProfile(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setCrossProfile(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setCrossProfile(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->crossProfile:Z

    return-object p0
.end method

.method public bridge synthetic setDebuggable(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setDebuggable(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setDebuggable(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->debuggable:Z

    return-object p0
.end method

.method public bridge synthetic setDefaultToDeviceProtectedStorage(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setDefaultToDeviceProtectedStorage(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setDefaultToDeviceProtectedStorage(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->defaultToDeviceProtectedStorage:Z

    return-object p0
.end method

.method public bridge synthetic setDescriptionRes(I)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setDescriptionRes(I)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setDescriptionRes(I)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->descriptionRes:I

    return-object p0
.end method

.method public bridge synthetic setDirectBootAware(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setDirectBootAware(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setDirectBootAware(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->directBootAware:Z

    return-object p0
.end method

.method public bridge synthetic setEnabled(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setEnabled(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setEnabled(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->enabled:Z

    return-object p0
.end method

.method public bridge synthetic setExternalStorage(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setExternalStorage(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setExternalStorage(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->externalStorage:Z

    return-object p0
.end method

.method public bridge synthetic setExtractNativeLibs(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setExtractNativeLibs(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setExtractNativeLibs(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->extractNativeLibs:Z

    return-object p0
.end method

.method public bridge synthetic setForceQueryable(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setForceQueryable(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setForceQueryable(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->forceQueryable:Z

    return-object p0
.end method

.method public bridge synthetic setFullBackupContent(I)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setFullBackupContent(I)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setFullBackupContent(I)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->fullBackupContent:I

    return-object p0
.end method

.method public bridge synthetic setFullBackupOnly(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setFullBackupOnly(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setFullBackupOnly(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->fullBackupOnly:Z

    return-object p0
.end method

.method public bridge synthetic setGame(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setGame(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setGame(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->game:Z

    return-object p0
.end method

.method public bridge synthetic setGwpAsanMode(I)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setGwpAsanMode(I)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setGwpAsanMode(I)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->gwpAsanMode:I

    return-object p0
.end method

.method public bridge synthetic setHasCode(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setHasCode(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setHasCode(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->hasCode:Z

    return-object p0
.end method

.method public bridge synthetic setHasDomainUrls(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setHasDomainUrls(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setHasDomainUrls(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->hasDomainUrls:Z

    return-object p0
.end method

.method public bridge synthetic setHasFragileUserData(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setHasFragileUserData(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setHasFragileUserData(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->hasFragileUserData:Z

    return-object p0
.end method

.method public bridge synthetic setIconRes(I)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setIconRes(I)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setIconRes(I)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->iconRes:I

    return-object p0
.end method

.method public bridge synthetic setInstallLocation(I)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setInstallLocation(I)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setInstallLocation(I)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->installLocation:I

    return-object p0
.end method

.method public bridge synthetic setIsolatedSplitLoading(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setIsolatedSplitLoading(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setIsolatedSplitLoading(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->isolatedSplitLoading:Z

    return-object p0
.end method

.method public bridge synthetic setKillAfterRestore(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setKillAfterRestore(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setKillAfterRestore(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->killAfterRestore:Z

    return-object p0
.end method

.method public bridge synthetic setLabelRes(I)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setLabelRes(I)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setLabelRes(I)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->labelRes:I

    return-object p0
.end method

.method public bridge synthetic setLargeHeap(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setLargeHeap(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setLargeHeap(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->largeHeap:Z

    return-object p0
.end method

.method public bridge synthetic setLargestWidthLimitDp(I)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setLargestWidthLimitDp(I)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setLargestWidthLimitDp(I)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->largestWidthLimitDp:I

    return-object p0
.end method

.method public bridge synthetic setLogo(I)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setLogo(I)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setLogo(I)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->logo:I

    return-object p0
.end method

.method public bridge synthetic setManageSpaceActivityName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setManageSpaceActivityName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setManageSpaceActivityName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-object p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setMaxAspectRatio(F)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setMaxAspectRatio(F)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setMaxAspectRatio(F)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->maxAspectRatio:F

    return-object p0
.end method

.method public bridge synthetic setMetaData(Landroid/os/Bundle;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setMetaData(Landroid/os/Bundle;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setMetaData(Landroid/os/Bundle;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-object p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->metaData:Landroid/os/Bundle;

    return-object p0
.end method

.method public bridge synthetic setMinAspectRatio(F)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setMinAspectRatio(F)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setMinAspectRatio(F)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->minAspectRatio:F

    return-object p0
.end method

.method public bridge synthetic setMinExtensionVersions(Landroid/util/SparseIntArray;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setMinExtensionVersions(Landroid/util/SparseIntArray;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setMinExtensionVersions(Landroid/util/SparseIntArray;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-object p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->minExtensionVersions:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public bridge synthetic setMinSdkVersion(I)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setMinSdkVersion(I)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setMinSdkVersion(I)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->minSdkVersion:I

    return-object p0
.end method

.method public bridge synthetic setMultiArch(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setMultiArch(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setMultiArch(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->multiArch:Z

    return-object p0
.end method

.method public bridge synthetic setNetworkSecurityConfigRes(I)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setNetworkSecurityConfigRes(I)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setNetworkSecurityConfigRes(I)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->networkSecurityConfigRes:I

    return-object p0
.end method

.method public bridge synthetic setNonLocalizedLabel(Ljava/lang/CharSequence;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setNonLocalizedLabel(Ljava/lang/CharSequence;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-object p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public bridge synthetic setOverlay(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setOverlay(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setOverlay(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->overlay:Z

    return-object p0
.end method

.method public bridge synthetic setOverlayCategory(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setOverlayCategory(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setOverlayCategory(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-object p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->overlayCategory:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setOverlayIsStatic(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setOverlayIsStatic(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setOverlayIsStatic(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->overlayIsStatic:Z

    return-object p0
.end method

.method public bridge synthetic setOverlayPriority(I)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setOverlayPriority(I)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setOverlayPriority(I)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->overlayPriority:I

    return-object p0
.end method

.method public bridge synthetic setOverlayTarget(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setOverlayTarget(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setOverlayTarget(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->overlayTarget:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setOverlayTargetName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setOverlayTargetName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setOverlayTargetName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-object p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->overlayTargetName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setPartiallyDirectBootAware(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setPartiallyDirectBootAware(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setPartiallyDirectBootAware(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->partiallyDirectBootAware:Z

    return-object p0
.end method

.method public bridge synthetic setPermission(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setPermission(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setPermission(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-object p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->permission:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setPersistent(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setPersistent(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setPersistent(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->persistent:Z

    return-object p0
.end method

.method public bridge synthetic setPreserveLegacyExternalStorage(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setPreserveLegacyExternalStorage(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setPreserveLegacyExternalStorage(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->preserveLegacyExternalStorage:Z

    return-object p0
.end method

.method public bridge synthetic setProcessName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setProcessName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setProcessName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-object p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->processName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setProcesses(Ljava/util/Map;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setProcesses(Ljava/util/Map;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setProcesses(Ljava/util/Map;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/parsing/component/ParsedProcess;",
            ">;)",
            "Landroid/content/pm/parsing/ParsingPackageImpl;"
        }
    .end annotation

    iput-object p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    return-object p0
.end method

.method public bridge synthetic setProfileableByShell(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setProfileableByShell(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setProfileableByShell(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->profileableByShell:Z

    return-object p0
.end method

.method public bridge synthetic setRealPackage(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setRealPackage(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setRealPackage(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-object p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->realPackage:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setRequestLegacyExternalStorage(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setRequestLegacyExternalStorage(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setRequestLegacyExternalStorage(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->requestLegacyExternalStorage:Z

    return-object p0
.end method

.method public bridge synthetic setRequiredAccountType(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setRequiredAccountType(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setRequiredAccountType(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->requiredAccountType:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setRequiredForAllUsers(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setRequiredForAllUsers(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setRequiredForAllUsers(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->requiredForAllUsers:Z

    return-object p0
.end method

.method public bridge synthetic setRequiresSmallestWidthDp(I)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setRequiresSmallestWidthDp(I)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setRequiresSmallestWidthDp(I)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->requiresSmallestWidthDp:I

    return-object p0
.end method

.method public bridge synthetic setResizeable(I)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setResizeable(I)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setResizeable(I)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    return-object p0

    :cond_4
    if-gez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->resizeable:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setResizeableActivity(Ljava/lang/Boolean;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setResizeableActivity(Ljava/lang/Boolean;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setResizeableActivity(Ljava/lang/Boolean;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-object p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->resizeableActivity:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setResizeableActivityViaSdkVersion(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setResizeableActivityViaSdkVersion(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setResizeableActivityViaSdkVersion(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->resizeableActivityViaSdkVersion:Z

    return-object p0
.end method

.method public bridge synthetic setRestoreAnyVersion(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setRestoreAnyVersion(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setRestoreAnyVersion(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->restoreAnyVersion:Z

    return-object p0
.end method

.method public bridge synthetic setRestrictUpdateHash([B)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setRestrictUpdateHash([B)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public varargs setRestrictUpdateHash([B)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-object p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->restrictUpdateHash:[B

    return-object p0
.end method

.method public bridge synthetic setRestrictedAccountType(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setRestrictedAccountType(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setRestrictedAccountType(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-object p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->restrictedAccountType:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setRoundIconRes(I)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setRoundIconRes(I)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setRoundIconRes(I)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->roundIconRes:I

    return-object p0
.end method

.method public bridge synthetic setSharedUserId(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setSharedUserId(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSharedUserId(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->sharedUserId:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setSharedUserLabel(I)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setSharedUserLabel(I)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSharedUserLabel(I)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->sharedUserLabel:I

    return-object p0
.end method

.method public bridge synthetic setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSigningDetails(Landroid/content/pm/PackageParser$SigningDetails;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-object p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    return-object p0
.end method

.method public bridge synthetic setSplitClassLoaderName(ILjava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/parsing/ParsingPackageImpl;->setSplitClassLoaderName(ILjava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSplitClassLoaderName(ILjava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 4

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    aput-object p2, v0, p1

    return-object p0
.end method

.method public bridge synthetic setSplitHasCode(IZ)Landroid/content/pm/parsing/ParsingPackage;
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/parsing/ParsingPackageImpl;->setSplitHasCode(IZ)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSplitHasCode(IZ)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 5

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->splitFlags:[I

    if-eqz p2, :cond_9

    aget v1, v0, p1

    or-int/lit8 v1, v1, 0x4

    goto :goto_d

    :cond_9
    aget v1, v0, p1

    and-int/lit8 v1, v1, -0x5

    :goto_d
    aput v1, v0, p1

    return-object p0
.end method

.method public bridge synthetic setStaticSharedLibName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setStaticSharedLibName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setStaticSharedLibName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->staticSharedLibName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setStaticSharedLibVersion(J)Landroid/content/pm/parsing/ParsingPackage;
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/parsing/ParsingPackageImpl;->setStaticSharedLibVersion(J)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setStaticSharedLibVersion(J)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 3

    iput-wide p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->staticSharedLibVersion:J

    return-object p0
.end method

.method public bridge synthetic setStaticSharedLibrary(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setStaticSharedLibrary(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setStaticSharedLibrary(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->staticSharedLibrary:Z

    return-object p0
.end method

.method public bridge synthetic setSupportsExtraLargeScreens(I)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setSupportsExtraLargeScreens(I)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSupportsExtraLargeScreens(I)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    return-object p0

    :cond_4
    if-gez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setSupportsLargeScreens(I)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setSupportsLargeScreens(I)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSupportsLargeScreens(I)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    return-object p0

    :cond_4
    if-gez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setSupportsNormalScreens(I)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setSupportsNormalScreens(I)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSupportsNormalScreens(I)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    return-object p0

    :cond_4
    if-gez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setSupportsRtl(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setSupportsRtl(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSupportsRtl(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->supportsRtl:Z

    return-object p0
.end method

.method public bridge synthetic setSupportsSmallScreens(I)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setSupportsSmallScreens(I)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setSupportsSmallScreens(I)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    return-object p0

    :cond_4
    if-gez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setTargetSandboxVersion(I)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setTargetSandboxVersion(I)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setTargetSandboxVersion(I)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->targetSandboxVersion:I

    return-object p0
.end method

.method public bridge synthetic setTargetSdkVersion(I)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setTargetSdkVersion(I)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setTargetSdkVersion(I)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->targetSdkVersion:I

    return-object p0
.end method

.method public bridge synthetic setTaskAffinity(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setTaskAffinity(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setTaskAffinity(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-object p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->taskAffinity:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setTestOnly(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setTestOnly(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setTestOnly(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->testOnly:Z

    return-object p0
.end method

.method public bridge synthetic setTheme(I)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setTheme(I)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setTheme(I)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->theme:I

    return-object p0
.end method

.method public bridge synthetic setUiOptions(I)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setUiOptions(I)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setUiOptions(I)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->uiOptions:I

    return-object p0
.end method

.method public bridge synthetic setUpgradeKeySets(Ljava/util/Set;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setUpgradeKeySets(Ljava/util/Set;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setUpgradeKeySets(Ljava/util/Set;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/pm/parsing/ParsingPackageImpl;"
        }
    .end annotation

    iput-object p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->upgradeKeySets:Ljava/util/Set;

    return-object p0
.end method

.method public bridge synthetic setUse32BitAbi(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setUse32BitAbi(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setUse32BitAbi(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->use32BitAbi:Z

    return-object p0
.end method

.method public bridge synthetic setUseEmbeddedDex(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setUseEmbeddedDex(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setUseEmbeddedDex(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->useEmbeddedDex:Z

    return-object p0
.end method

.method public bridge synthetic setUsesCleartextTraffic(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setUsesCleartextTraffic(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setUsesCleartextTraffic(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesCleartextTraffic:Z

    return-object p0
.end method

.method public bridge synthetic setUsesNonSdkApi(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setUsesNonSdkApi(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setUsesNonSdkApi(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesNonSdkApi:Z

    return-object p0
.end method

.method public bridge synthetic setVersionName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setVersionName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setVersionName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-object p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->versionName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setVisibleToInstantApps(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setVisibleToInstantApps(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setVisibleToInstantApps(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->visibleToInstantApps:Z

    return-object p0
.end method

.method public bridge synthetic setVmSafeMode(Z)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setVmSafeMode(Z)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setVmSafeMode(Z)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-boolean p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->vmSafeMode:Z

    return-object p0
.end method

.method public bridge synthetic setVolumeUuid(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setVolumeUuid(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setVolumeUuid(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->volumeUuid:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setZygotePreloadName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/content/pm/parsing/ParsingPackageImpl;->setZygotePreloadName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object p1

    return-object p1
.end method

.method public setZygotePreloadName(Ljava/lang/String;)Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 2

    iput-object p1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->zygotePreloadName:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic sortActivities()Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0}, Landroid/content/pm/parsing/ParsingPackageImpl;->sortActivities()Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public sortActivities()Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 3

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    sget-object v1, Landroid/content/pm/parsing/ParsingPackageImpl;->ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p0
.end method

.method public bridge synthetic sortReceivers()Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0}, Landroid/content/pm/parsing/ParsingPackageImpl;->sortReceivers()Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public sortReceivers()Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 3

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    sget-object v1, Landroid/content/pm/parsing/ParsingPackageImpl;->ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p0
.end method

.method public bridge synthetic sortServices()Landroid/content/pm/parsing/ParsingPackage;
    .registers 2

    invoke-virtual {p0}, Landroid/content/pm/parsing/ParsingPackageImpl;->sortServices()Landroid/content/pm/parsing/ParsingPackageImpl;

    move-result-object v0

    return-object v0
.end method

.method public sortServices()Landroid/content/pm/parsing/ParsingPackageImpl;
    .registers 3

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    sget-object v1, Landroid/content/pm/parsing/ParsingPackageImpl;->ORDER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p0
.end method

.method public toAppInfoWithoutState()Landroid/content/pm/ApplicationInfo;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/content/pm/parsing/ParsingPackageImpl;->toAppInfoWithoutStateWithoutFlags()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {p0}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->appInfoFlags(Landroid/content/pm/parsing/ParsingPackageRead;)I

    move-result v1

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {p0}, Landroid/content/pm/parsing/PackageInfoWithoutStateUtils;->appInfoPrivateFlags(Landroid/content/pm/parsing/ParsingPackageRead;)I

    move-result v1

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    return-object v0
.end method

.method public toAppInfoWithoutStateWithoutFlags()Landroid/content/pm/ApplicationInfo;
    .registers 4

    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->appComponentFactory:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->appComponentFactory:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->backupAgentName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    iget v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->banner:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->banner:I

    iget v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->category:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->category:I

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->classLoaderName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->className:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    iget v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->compatibleWidthLimitDp:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    iget v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->compileSdkVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    iget v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->descriptionRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    iget-boolean v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->enabled:Z

    iput-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iget v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->fullBackupContent:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    sget-boolean v1, Landroid/content/pm/PackageParser;->sUseRoundIcon:Z

    if-eqz v1, :cond_3e

    iget v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->roundIconRes:I

    if-eqz v1, :cond_3e

    goto :goto_40

    :cond_3e
    iget v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->iconRes:I

    :goto_40
    iput v1, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    iget v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->iconRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->iconRes:I

    iget v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->roundIconRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->roundIconRes:I

    iget v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->installLocation:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    iget v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->labelRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iget v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->largestWidthLimitDp:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    iget v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->logo:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->logo:I

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    iget v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->maxAspectRatio:F

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    iget v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->minAspectRatio:F

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->minAspectRatio:F

    iget v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->minSdkVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->className:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_7e

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    :cond_7e
    iget v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->networkSecurityConfigRes:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_96

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :cond_96
    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->permission:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/parsing/ParsingPackageImpl;->getProcessName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->requiresSmallestWidthDp:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->splitDependencies:Landroid/util/SparseArray;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->splitNames:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->splitNames:[Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->volumeUuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    iget v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->targetSandboxVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->targetSandboxVersion:I

    iget v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->targetSdkVersion:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->taskAffinity:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    iget v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->theme:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    iget v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->uiOptions:I

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->volumeUuid:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->zygotePreloadName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->zygotePreloadName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/pm/parsing/ParsingPackageImpl;->isCrossProfile()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->crossProfile:Z

    iget v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->gwpAsanMode:I

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setGwpAsanMode(I)V

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setBaseCodePath(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setBaseResourcePath(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->codePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setCodePath(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->codePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setResourcePath(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setSplitCodePaths([Ljava/lang/String;)V

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->setSplitResourcePaths([Ljava/lang/String;)V

    iget v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->versionCodeMajor:I

    iget v2, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->versionCode:I

    invoke-static {v1, v2}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ApplicationInfo;->setVersionCode(J)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->supportsSmallScreens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->supportsNormalScreens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->supportsLargeScreens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->supportsExtraLargeScreens:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->resizeable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->anyDensity:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->versionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->versionCodeMajor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->baseRevisionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->compileSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->compileSdkVersionCodeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->realPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->requiredForAllUsers:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->restrictedAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->requiredAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->overlayTarget:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->overlayTargetName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->overlayCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->overlayPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->overlayIsStatic:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedStringValueMap:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->overlayables:Ljava/util/Map;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringValueMap;->parcel(Ljava/util/Map;Landroid/os/Parcel;I)V

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->staticSharedLibName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget-wide v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->staticSharedLibVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->libraryNames:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesOptionalLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesStaticLibraries:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesStaticLibrariesVersions:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    if-nez v0, :cond_c2

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d4

    :cond_c2
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_c7
    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesStaticLibrariesCertDigests:[[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_d4

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c7

    :cond_d4
    :goto_d4
    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->sharedUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->sharedUserLabel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->configPreferences:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->reqFeatures:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->featureGroups:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->restrictUpdateHash:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->originalPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->adoptPermissions:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->requestedPermissions:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->implicitPermissions:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->upgradeKeySets:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->keySetMapping:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->protectedBroadcasts:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->activities:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->receivers:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->services:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->providers:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->attributions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->permissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->permissionGroups:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->instrumentations:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForIntentInfoPairs:Landroid/content/pm/parsing/component/ParsedIntentInfo$StringPairListParceler;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->preferredActivityFilters:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/pm/parsing/component/ParsedIntentInfo$StringPairListParceler;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->processes:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->codePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->use32BitAbi:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->visibleToInstantApps:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->forceQueryable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->queriesIntents:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForInternedStringList:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->queriesPackages:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringList;->parcel(Ljava/util/List;Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->appComponentFactory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->backupAgentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->banner:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->category:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->classLoaderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->className:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->compatibleWidthLimitDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->descriptionRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->enabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->crossProfile:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->fullBackupContent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->iconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->installLocation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->labelRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->largestWidthLimitDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->logo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->maxAspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->minAspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->minSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->networkSecurityConfigRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->permission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->requiresSmallestWidthDp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->roundIconRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->targetSandboxVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->targetSdkVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->theme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->uiOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->zygotePreloadName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->splitClassLoaderNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->splitDependencies:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->splitFlags:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->splitNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->splitRevisionCodes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->externalStorage:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->baseHardwareAccelerated:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->allowBackup:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->killAfterRestore:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->restoreAnyVersion:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->fullBackupOnly:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->persistent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->debuggable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->vmSafeMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->hasCode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->allowTaskReparenting:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->allowClearUserData:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->largeHeap:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesCleartextTraffic:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->supportsRtl:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->testOnly:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->multiArch:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->extractNativeLibs:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->game:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    sget-object v0, Landroid/content/pm/parsing/ParsingPackageImpl;->sForBoolean:Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;

    iget-object v1, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->resizeableActivity:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForBoolean;->parcel(Ljava/lang/Boolean;Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->staticSharedLibrary:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->overlay:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->isolatedSplitLoading:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->hasDomainUrls:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->profileableByShell:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->backupInForeground:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->useEmbeddedDex:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->defaultToDeviceProtectedStorage:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->directBootAware:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->partiallyDirectBootAware:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->resizeableActivityViaSdkVersion:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->allowClearUserDataOnFailedRestore:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->allowAudioPlaybackCapture:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->requestLegacyExternalStorage:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->usesNonSdkApi:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->hasFragileUserData:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->cantSaveState:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->allowNativeHeapPointerTagging:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->autoRevokePermissions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->preserveLegacyExternalStorage:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->mimeGroups:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    iget v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->gwpAsanMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/parsing/ParsingPackageImpl;->minExtensionVersions:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseIntArray(Landroid/util/SparseIntArray;)V

    return-void
.end method
