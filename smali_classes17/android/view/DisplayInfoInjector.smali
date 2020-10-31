.class public Landroid/view/DisplayInfoInjector;
.super Ljava/lang/Object;
.source "DisplayInfoInjector.java"


# static fields
.field private static final NOTCH_BLACK_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCALE_BLACK_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mAppName:Ljava/lang/String;

.field private static mNotchConfig:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/view/DisplayInfoInjector$1;

    invoke-direct {v0}, Landroid/view/DisplayInfoInjector$1;-><init>()V

    sput-object v0, Landroid/view/DisplayInfoInjector;->NOTCH_BLACK_LIST:Ljava/util/ArrayList;

    new-instance v0, Landroid/view/DisplayInfoInjector$2;

    invoke-direct {v0}, Landroid/view/DisplayInfoInjector$2;-><init>()V

    sput-object v0, Landroid/view/DisplayInfoInjector;->SCALE_BLACK_LIST:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static adjustHeightIfNeeded(Landroid/content/res/Configuration;IIILjava/lang/String;)I
    .registers 8

    const/4 v0, 0x1

    if-eqz p0, :cond_7

    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v0, :cond_9

    :cond_7
    if-ge p2, p3, :cond_5b

    :cond_9
    if-ne p1, p3, :cond_5b

    sget-boolean v1, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v1, :cond_5b

    const-string/jumbo v1, "ro.miui.cts"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    const-string/jumbo v1, "persist.sys.miui_optimization"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_2f

    return p1

    :cond_2f
    sget-object v1, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    if-nez v1, :cond_3f

    invoke-static {v0}, Landroid/view/DisplayInfoInjector;->getAppName(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    invoke-static {v1}, Lmiui/os/MiuiInit;->getNotchConfig(Ljava/lang/String;)I

    move-result v1

    sput v1, Landroid/view/DisplayInfoInjector;->mNotchConfig:I

    :cond_3f
    sget v1, Landroid/view/DisplayInfoInjector;->mNotchConfig:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_5b

    sget-object v1, Landroid/view/DisplayInfoInjector;->NOTCH_BLACK_LIST:Ljava/util/ArrayList;

    sget-object v2, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050258

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr p1, v1

    :cond_5b
    return p1
.end method

.method static adjustHeightIfNeededCurve(Landroid/content/res/Configuration;IIIIILjava/lang/String;)I
    .registers 10

    if-eqz p0, :cond_7

    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    :cond_7
    if-le p2, p3, :cond_2a

    :cond_9
    if-ne p1, p3, :cond_2a

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_14

    return p1

    :cond_14
    sget-object v1, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    if-nez v1, :cond_1e

    invoke-static {v0}, Landroid/view/DisplayInfoInjector;->getAppName(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    :cond_1e
    sget-object v1, Landroid/view/DisplayInfoInjector;->SCALE_BLACK_LIST:Ljava/util/ArrayList;

    sget-object v2, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_2a

    :cond_29
    move p1, p4

    :cond_2a
    :goto_2a
    return p1
.end method

.method static adjustWidthIfNeeded(Landroid/content/res/Configuration;IIILjava/lang/String;)I
    .registers 8

    if-eqz p0, :cond_7

    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    :cond_7
    if-le p2, p3, :cond_52

    :cond_9
    if-ne p1, p2, :cond_52

    sget-boolean v0, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v0, :cond_52

    const-string/jumbo v0, "ro.miui.cts"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "persist.sys.miui_optimization"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_30

    return p1

    :cond_30
    sget-object v1, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    if-nez v1, :cond_40

    invoke-static {v0}, Landroid/view/DisplayInfoInjector;->getAppName(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    invoke-static {v1}, Lmiui/os/MiuiInit;->getNotchConfig(Ljava/lang/String;)I

    move-result v1

    sput v1, Landroid/view/DisplayInfoInjector;->mNotchConfig:I

    :cond_40
    sget v1, Landroid/view/DisplayInfoInjector;->mNotchConfig:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_52

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050258

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr p1, v1

    :cond_52
    return p1
.end method

.method static adjustWidthIfNeededCurve(Landroid/content/res/Configuration;IIIIILjava/lang/String;)I
    .registers 10

    if-eqz p0, :cond_7

    iget v0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    :cond_7
    if-ge p2, p3, :cond_2a

    :cond_9
    if-ne p1, p2, :cond_2a

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_14

    return p1

    :cond_14
    sget-object v1, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    if-nez v1, :cond_1e

    invoke-static {v0}, Landroid/view/DisplayInfoInjector;->getAppName(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    :cond_1e
    sget-object v1, Landroid/view/DisplayInfoInjector;->SCALE_BLACK_LIST:Ljava/util/ArrayList;

    sget-object v2, Landroid/view/DisplayInfoInjector;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_2a

    :cond_29
    move p1, p4

    :cond_2a
    :goto_2a
    return p1
.end method

.method static getAppName(I)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    const/16 v1, 0x2710

    if-ge p0, v1, :cond_7

    return-object v0

    :cond_7
    const/4 v1, 0x0

    :try_start_8
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_12

    move-object v1, v2

    goto :goto_13

    :catch_12
    move-exception v2

    :goto_13
    if-eqz v1, :cond_1b

    array-length v2, v1

    if-lez v2, :cond_1b

    const/4 v2, 0x0

    aget-object v0, v1, v2

    :cond_1b
    return-object v0
.end method
