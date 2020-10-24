.class abstract Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static activityThread:Ljava/lang/Object;

.field private static activityThreadClass:Ljava/lang/Class;

.field private static addAssetPathMethod:Ljava/lang/reflect/Method;

.field private static contextImplClass:Ljava/lang/Class;

.field private static getApkAssetsMethod:Ljava/lang/reflect/Method;

.field private static getAssetPathMethod:Ljava/lang/reflect/Method;

.field private static getCookieNameMethod:Ljava/lang/reflect/Method;

.field private static loadedApkClass:Ljava/lang/Class;

.field private static mActiveResourcesInActivityThread:Ljava/lang/reflect/Field;

.field private static mActiveResourcesInResourcesManager:Ljava/lang/reflect/Field;

.field private static mActivitiesInActivityThread:Ljava/lang/reflect/Field;

.field private static mPackagesInActivityThread:Ljava/lang/reflect/Field;

.field private static mResourcePackagesInActivityThread:Ljava/lang/reflect/Field;

.field private static mResourcesInContextImpl:Ljava/lang/reflect/Field;

.field private static mResourcesInContextThemeWrapper:Ljava/lang/reflect/Field;

.field private static mResourcesInLoadedApk:Ljava/lang/reflect/Field;

.field private static mStringBlocksField:Ljava/lang/reflect/Field;

.field private static mThemeInContentImpl:Ljava/lang/reflect/Field;

.field private static mThemeInContextThemeWrapper:Ljava/lang/reflect/Field;

.field private static resourcesManager:Ljava/lang/Object;

.field private static resourcesManagerClass:Ljava/lang/Class;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;-><init>()V

    return-void
.end method

.method static getActivityThread()Ljava/lang/Object;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->activityThread:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getActivityThreadClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "currentActivityThread"

    invoke-static {v0, v3, v2}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->activityThread:Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->activityThread:Ljava/lang/Object;

    return-object v0
.end method

.method static getActivityThreadClass()Ljava/lang/Class;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->activityThreadClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->activityThreadClass:Ljava/lang/Class;

    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->activityThreadClass:Ljava/lang/Class;

    return-object v0
.end method

.method static getAddAssetPathMethod()Ljava/lang/reflect/Method;
    .locals 4

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->addAssetPathMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const-class v0, Landroid/content/res/AssetManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "addAssetPath"

    invoke-static {v0, v2, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->addAssetPathMethod:Ljava/lang/reflect/Method;

    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->addAssetPathMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static getContextImplClass()Ljava/lang/Class;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->contextImplClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "android.app.ContextImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->contextImplClass:Ljava/lang/Class;

    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->contextImplClass:Ljava/lang/Class;

    return-object v0
.end method

.method static getGetApkAssetsMethod()Ljava/lang/reflect/Method;
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1c
    .end annotation

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getApkAssetsMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const-class v0, Landroid/content/res/AssetManager;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "getApkAssets"

    invoke-static {v0, v2, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getApkAssetsMethod:Ljava/lang/reflect/Method;

    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getApkAssetsMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static getGetAssetPathMethod()Ljava/lang/reflect/Method;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1c
    .end annotation

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getAssetPathMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const-string v0, "android.content.res.ApkAssets"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "getAssetPath"

    invoke-static {v0, v2, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getAssetPathMethod:Ljava/lang/reflect/Method;

    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getAssetPathMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static getGetCookieNameMethod()Ljava/lang/reflect/Method;
    .locals 4

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getCookieNameMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    const-class v0, Landroid/content/res/AssetManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const-string v2, "getCookieName"

    invoke-static {v0, v2, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getCookieNameMethod:Ljava/lang/reflect/Method;

    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getCookieNameMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static getLoadedApkClass()Ljava/lang/Class;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->loadedApkClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "android.app.LoadedApk"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->loadedApkClass:Ljava/lang/Class;

    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->loadedApkClass:Ljava/lang/Class;

    return-object v0
.end method

.method static getResourcesManager()Ljava/lang/Object;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->resourcesManager:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getResourcesManagerClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "getInstance"

    invoke-static {v0, v3, v2}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->resourcesManager:Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->resourcesManager:Ljava/lang/Object;

    return-object v0
.end method

.method static getResourcesManagerClass()Ljava/lang/Class;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->resourcesManagerClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "android.app.ResourcesManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->resourcesManagerClass:Ljava/lang/Class;

    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->resourcesManagerClass:Ljava/lang/Class;

    return-object v0
.end method

.method static mActiveResourcesInActivityThread()Ljava/lang/reflect/Field;
    .locals 2

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mActiveResourcesInActivityThread:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getActivityThreadClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mActiveResources"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mActiveResourcesInActivityThread:Ljava/lang/reflect/Field;

    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mActiveResourcesInActivityThread:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static mActiveResourcesInResourcesManager()Ljava/lang/reflect/Field;
    .locals 2

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mActiveResourcesInResourcesManager:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getResourcesManagerClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mActiveResources"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mActiveResourcesInResourcesManager:Ljava/lang/reflect/Field;

    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mActiveResourcesInResourcesManager:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static mActivitiesInActivityThread()Ljava/lang/reflect/Field;
    .locals 2

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mActivitiesInActivityThread:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getActivityThreadClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mActivities"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mActivitiesInActivityThread:Ljava/lang/reflect/Field;

    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mActivitiesInActivityThread:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static mPackagesInActivityThread()Ljava/lang/reflect/Field;
    .locals 2

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mPackagesInActivityThread:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getActivityThreadClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mPackages"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mPackagesInActivityThread:Ljava/lang/reflect/Field;

    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mPackagesInActivityThread:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static mResourcePackagesInActivityThread()Ljava/lang/reflect/Field;
    .locals 2

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcePackagesInActivityThread:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getActivityThreadClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mResourcePackages"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcePackagesInActivityThread:Ljava/lang/reflect/Field;

    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcePackagesInActivityThread:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static mResourcesInContextImpl()Ljava/lang/reflect/Field;
    .locals 2

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcesInContextImpl:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getContextImplClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mResources"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcesInContextImpl:Ljava/lang/reflect/Field;

    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcesInContextImpl:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static mResourcesInContextThemeWrapper()Ljava/lang/reflect/Field;
    .locals 2

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcesInContextThemeWrapper:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    const-class v0, Landroid/view/ContextThemeWrapper;

    const-string v1, "mResources"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcesInContextThemeWrapper:Ljava/lang/reflect/Field;

    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcesInContextThemeWrapper:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static mResourcesInLoadedApk()Ljava/lang/reflect/Field;
    .locals 2

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcesInLoadedApk:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getLoadedApkClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mResources"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcesInLoadedApk:Ljava/lang/reflect/Field;

    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mResourcesInLoadedApk:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static mStringBlocksInAssetManager()Ljava/lang/reflect/Field;
    .locals 2

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mStringBlocksField:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    const-class v0, Landroid/content/res/AssetManager;

    const-string v1, "mStringBlocks"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mStringBlocksField:Ljava/lang/reflect/Field;

    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mStringBlocksField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static mThemeInContentImpl()Ljava/lang/reflect/Field;
    .locals 2

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mThemeInContentImpl:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->getContextImplClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mTheme"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mThemeInContentImpl:Ljava/lang/reflect/Field;

    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mThemeInContentImpl:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static mThemeInContextThemeWrapper()Ljava/lang/reflect/Field;
    .locals 2

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mThemeInContextThemeWrapper:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    const-class v0, Landroid/view/ContextThemeWrapper;

    const-string v1, "mTheme"

    invoke-static {v0, v1}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mThemeInContextThemeWrapper:Ljava/lang/reflect/Field;

    :cond_0
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitCompatResourcesLoader$VersionCompat;->mThemeInContextThemeWrapper:Ljava/lang/reflect/Field;

    return-object v0
.end method
