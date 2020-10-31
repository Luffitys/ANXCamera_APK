.class public Lmiui/drm/ThemeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ThemeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/drm/ThemeReceiver$ValidateThemeTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "drm"

.field private static sLocations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sWhiteList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIsValidating:Z


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/drm/ThemeReceiver;->sLocations:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/drm/ThemeReceiver;->sWhiteList:Ljava/util/Set;

    sget-object v0, Lmiui/drm/ThemeReceiver;->sLocations:Ljava/util/Map;

    const-string v1, "/data/system/theme/"

    const-string v2, "/data/system/theme/rights/"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/drm/ThemeReceiver;->sLocations:Ljava/util/Map;

    sget-object v3, Lmiui/content/res/ThemeRuntimeManager;->RUNTIME_PATH_BOOT_ANIMATION:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/app/constants/ThemeManagerConstants;->DRM_WHITE_LIST:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_22
    if-ge v3, v2, :cond_3d

    aget-object v4, v0, v3

    sget-object v5, Lmiui/drm/ThemeReceiver;->sWhiteList:Ljava/util/Set;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_3d
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/drm/ThemeReceiver;->mIsValidating:Z

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .registers 1

    sget-object v0, Lmiui/drm/ThemeReceiver;->sLocations:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/drm/ThemeReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lmiui/drm/ThemeReceiver;->validateTheme(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lmiui/drm/ThemeReceiver;Z)Z
    .registers 2

    iput-boolean p1, p0, Lmiui/drm/ThemeReceiver;->mIsValidating:Z

    return p1
.end method

.method private validateTheme(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miui.intent.action.CHECK_TIME_UP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "drm"

    const-string v1, "check theme drm event received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lmiui/drm/ThemeReceiver;->mIsValidating:Z

    if-nez v1, :cond_26

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/drm/ThemeReceiver;->mIsValidating:Z

    new-instance v0, Lmiui/drm/ThemeReceiver$ValidateThemeTask;

    invoke-direct {v0, p0, p1}, Lmiui/drm/ThemeReceiver$ValidateThemeTask;-><init>(Lmiui/drm/ThemeReceiver;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lmiui/drm/ThemeReceiver$ValidateThemeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2b

    :cond_26
    const-string v1, "Validating theme task is running. "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    :goto_2b
    return-void
.end method
