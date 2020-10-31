.class public Lmiui/util/CustomizeUtil;
.super Ljava/lang/Object;
.source "CustomizeUtil.java"


# static fields
.field public static final ADJUST:Ljava/lang/String; = "adjust"

.field public static final ANDROID_MAX_ASPECT:Ljava/lang/String; = "android.max_aspect"

.field private static final CUST_VARIANT:Ljava/lang/String; = "cust_variant"

.field private static final CUST_VARIANT_FILE:Ljava/io/File;

.field private static final DATA_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

.field public static final ENABLE_CONFIG:Ljava/lang/String; = "enable_config"

.field public static final EXTRA_PRIVATE_FLAG_SPECIAL_MODE:I = 0x80

.field public static final HAS_NOTCH:Z

.field public static final MAX_ASPECT_RATIO:F = 3.0f

.field private static final MIUI_APP_DIR:Ljava/io/File;

.field private static final MIUI_CUSTOMIZED_APP_DIR:Ljava/io/File;

.field private static final MIUI_CUSTOMIZED_CUST_DIR:Ljava/io/File;

.field private static final MIUI_CUSTOMIZED_DATA_DIR:Ljava/io/File;

.field private static final MIUI_CUST_DIR:Ljava/io/File;

.field private static final MIUI_CUST_PROP_DIR:Ljava/io/File;

.field public static final NEED_ADJUST:Ljava/lang/String; = "need_adjust"

.field public static final NOTCH_CONFIG:Ljava/lang/String; = "notch.config"

.field public static final PACKAGE:Ljava/lang/String; = "pkg"

.field private static final PRODUCT_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

.field public static final RESTRICT_ASPECT_RATIO:F

.field private static final SYSTEM_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

.field public static final TYPE_DEFAULT:I = 0x0

.field public static final TYPE_METADATA:I = 0x1

.field public static final TYPE_OTHER:I = 0x5

.field public static final TYPE_RESIZEABLE:I = 0x2

.field public static final TYPE_RESTRICT:I = 0x4

.field public static final TYPE_SUGGEST:I = 0x3

.field public static final UPDATE_SPECIAL_MODE:Ljava/lang/String; = "upate_specail_mode"

.field private static final VENDOR_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

.field private static sCustVariant:Ljava/lang/String;

.field private static sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNeedCompatNotchPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/miui/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_DATA_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/cust/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_CUST_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustomizedDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "cust"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUST_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/cust"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUST_PROP_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/miui/app/noncustomized"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->DATA_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/data-app/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->SYSTEM_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/vendor/data-app/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->VENDOR_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/product/data-app/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->PRODUCT_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustomizedDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "app"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->MIUI_APP_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiAppDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "customized"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_APP_DIR:Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustVariantFile()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lmiui/util/CustomizeUtil;->CUST_VARIANT_FILE:Ljava/io/File;

    const-string v0, ""

    sput-object v0, Lmiui/util/CustomizeUtil;->sCustVariant:Ljava/lang/String;

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "lithium"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    const v0, 0x3fe38e39

    goto :goto_81

    :cond_7e
    const v0, 0x3fea9fbe    # 1.833f

    :goto_81
    sput v0, Lmiui/util/CustomizeUtil;->RESTRICT_ASPECT_RATIO:F

    const-string v0, "ro.miui.notch"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    const-string v1, "com.android.keyguard"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    const-string v1, "com.miui.aod"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    const-string v1, "com.tencent.tmgp.sgame"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    const-string v1, "com.tencent.tmgp.sgamece"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    const-string v1, "com.tencent.tmgp.pubgmhd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    const-string v1, "com.tencent.tmgp.pubgmhdce"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    const-string v1, "com.tencent.tmgp.speedmobile"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    const-string v1, "com.tencent.tmgp.speedmobileEx"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    const-string v1, "com.tencent.tmgp.cf"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    const-string v1, "com.tencent.tmgp.pubgm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    const-string v1, "com.netease.hyxd.mi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    const-string v1, "com.netease.hyxd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    const-string v1, "com.netease.dwrg.mi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    const-string v1, "com.netease.dwrg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    const-string v1, "com.netease.mrzh.mi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    const-string v1, "com.netease.mrzh"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    const-string v1, "com.netease.h48"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    const-string v1, "com.netease.h48.mi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustDisplay(Landroid/view/DisplayInfo;ILjava/lang/String;)Landroid/view/DisplayInfo;
    .registers 11

    move-object v0, p0

    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_67

    if-eqz p1, :cond_67

    move-object v1, p2

    :try_start_8
    invoke-static {v1}, Lmiui/os/MiuiInit;->isRestrictAspect(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2, p0}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    move-object v0, v2

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    const/high16 v4, 0x3f000000    # 0.5f

    if-ge v2, v3, :cond_3d

    iget v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v5, v5

    sget v6, Lmiui/util/CustomizeUtil;->RESTRICT_ASPECT_RATIO:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    float-to-int v5, v5

    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v6, v0, Landroid/view/DisplayInfo;->appWidth:I

    int-to-float v6, v6

    sget v7, Lmiui/util/CustomizeUtil;->RESTRICT_ASPECT_RATIO:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v4

    float-to-int v4, v6

    iget v5, v0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v0, Landroid/view/DisplayInfo;->appHeight:I

    goto :goto_67

    :cond_3d
    iget v5, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v5, v5

    sget v6, Lmiui/util/CustomizeUtil;->RESTRICT_ASPECT_RATIO:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    float-to-int v5, v5

    iget v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v6, v0, Landroid/view/DisplayInfo;->appHeight:I

    int-to-float v6, v6

    sget v7, Lmiui/util/CustomizeUtil;->RESTRICT_ASPECT_RATIO:F

    mul-float/2addr v6, v7

    add-float/2addr v6, v4

    float-to-int v4, v6

    iget v5, v0, Landroid/view/DisplayInfo;->appWidth:I

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v0, Landroid/view/DisplayInfo;->appWidth:I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_5d} :catch_5e

    goto :goto_67

    :catch_5e
    move-exception v1

    const-string v2, "CustomizeUtil"

    const-string v3, "ajsustDisplay failed."

    invoke-static {v2, v3, v1}, Lmiui/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_68

    :cond_67
    :goto_67
    nop

    :goto_68
    return-object v0
.end method

.method public static forceLayoutHideNavigation(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static getCallingUidPackage(I)Ljava/lang/String;
    .registers 4

    if-lez p0, :cond_1c

    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    array-length v1, v0

    if-lez v1, :cond_13

    const/4 v1, 0x0

    aget-object v1, v0, v1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_14

    return-object v1

    :cond_13
    goto :goto_1c

    :catch_14
    move-exception v0

    const-string v1, "CustomizeUtil"

    const-string v2, "getCallingUidPackage failed."

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getMiuiAppDir()Ljava/io/File;
    .registers 1

    sget-object v0, Lmiui/util/CustomizeUtil;->MIUI_APP_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiCustDir()Ljava/io/File;
    .registers 1

    sget-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUST_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiCustPropDir()Ljava/io/File;
    .registers 1

    sget-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUST_PROP_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiCustVariantDir()Ljava/io/File;
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lmiui/util/CustomizeUtil;->getMiuiCustVariantDir(Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getMiuiCustVariantDir(Z)Ljava/io/File;
    .registers 10

    const-string v0, "getMiuiCustVariantDir finally Exception e:"

    const-string v1, "CustomizeUtil"

    sget-boolean v2, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v2, :cond_23

    sget-object v2, Lmiui/util/CustomizeUtil;->sCustVariant:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    new-instance v0, Ljava/io/File;

    if-eqz p0, :cond_19

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustPropDir()Ljava/io/File;

    move-result-object v1

    goto :goto_1d

    :cond_19
    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustDir()Ljava/io/File;

    move-result-object v1

    :goto_1d
    sget-object v2, Lmiui/util/CustomizeUtil;->sCustVariant:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_23
    sget-object v2, Lmiui/util/CustomizeUtil;->CUST_VARIANT_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_10d

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_2e
    new-instance v5, Ljava/io/FileReader;

    sget-object v6, Lmiui/util/CustomizeUtil;->CUST_VARIANT_FILE:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v2, v5

    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v5

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_80

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\n"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    new-instance v6, Ljava/io/File;

    if-eqz p0, :cond_58

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustPropDir()Ljava/io/File;

    move-result-object v7

    goto :goto_5c

    :cond_58
    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustDir()Ljava/io/File;

    move-result-object v7

    :goto_5c
    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_5f} :catch_bc
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_5f} :catch_a4
    .catchall {:try_start_2e .. :try_end_5f} :catchall_a2

    nop

    :try_start_60
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    nop

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_67} :catch_68

    goto :goto_7f

    :catch_68
    move-exception v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7f
    return-object v6

    :cond_80
    nop

    nop

    :try_start_82
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    nop

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_89} :catch_8a

    goto :goto_a1

    :catch_8a
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a1
    return-object v3

    :catchall_a2
    move-exception v3

    goto :goto_e6

    :catch_a4
    move-exception v5

    :try_start_a5
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_a2

    if-eqz v2, :cond_b0

    :try_start_aa
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    goto :goto_b0

    :catch_ae
    move-exception v5

    goto :goto_b6

    :cond_b0
    :goto_b0
    if-eqz v4, :cond_e5

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_b5} :catch_ae

    goto :goto_e5

    :goto_b6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_d3

    :catch_bc
    move-exception v5

    :try_start_bd
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_a2

    if-eqz v2, :cond_c8

    :try_start_c2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    goto :goto_c8

    :catch_c6
    move-exception v5

    goto :goto_ce

    :cond_c8
    :goto_c8
    if-eqz v4, :cond_e5

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_cd} :catch_c6

    goto :goto_e5

    :goto_ce
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_d3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10d

    :cond_e5
    :goto_e5
    goto :goto_10d

    :goto_e6
    if-eqz v2, :cond_ee

    :try_start_e8
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    goto :goto_ee

    :catch_ec
    move-exception v5

    goto :goto_f4

    :cond_ee
    :goto_ee
    if-eqz v4, :cond_10b

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_f3} :catch_ec

    goto :goto_10b

    :goto_f4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10c

    :cond_10b
    :goto_10b
    nop

    :goto_10c
    throw v3

    :cond_10d
    :goto_10d
    return-object v3
.end method

.method public static getMiuiCustVariantFile()Ljava/io/File;
    .registers 3

    sget-boolean v0, Lmiui/os/Build;->HAS_CUST_PARTITION:Z

    const-string v1, "cust_variant"

    if-eqz v0, :cond_13

    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v0, :cond_b

    goto :goto_13

    :cond_b
    new-instance v0, Ljava/io/File;

    sget-object v2, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_CUST_DIR:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_13
    :goto_13
    new-instance v0, Ljava/io/File;

    sget-object v2, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_DATA_DIR:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getMiuiCustomizedAppDir()Ljava/io/File;
    .registers 1

    sget-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_APP_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiCustomizedDir()Ljava/io/File;
    .registers 1

    sget-boolean v0, Lmiui/os/Build;->HAS_CUST_PARTITION:Z

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_CUST_DIR:Ljava/io/File;

    return-object v0

    :cond_7
    sget-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_DATA_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiNoCustomizedAppDir()Ljava/io/File;
    .registers 1

    sget-boolean v0, Lmiui/os/Build;->HAS_CUST_PARTITION:Z

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/util/CustomizeUtil;->SYSTEM_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    return-object v0

    :cond_7
    sget-object v0, Lmiui/util/CustomizeUtil;->DATA_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiProductNoCustomizedAppDir()Ljava/io/File;
    .registers 1

    sget-boolean v0, Lmiui/os/Build;->HAS_CUST_PARTITION:Z

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/util/CustomizeUtil;->PRODUCT_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    return-object v0

    :cond_7
    sget-object v0, Lmiui/util/CustomizeUtil;->DATA_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiVendorNoCustomizedAppDir()Ljava/io/File;
    .registers 1

    sget-boolean v0, Lmiui/os/Build;->HAS_CUST_PARTITION:Z

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/util/CustomizeUtil;->VENDOR_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    return-object v0

    :cond_7
    sget-object v0, Lmiui/util/CustomizeUtil;->DATA_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V
    .registers 9

    :try_start_0
    const-class v0, Landroid/view/Display;

    const-string v1, "getRealSize"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/graphics/Point;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_24

    nop

    goto :goto_2f

    :catch_24
    move-exception v0

    const-string v1, "CustomizeUtil"

    const-string v2, "no getRealSize hack method"

    invoke-static {v1, v2}, Lmiui/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    :goto_2f
    return-void
.end method

.method public static isRestrict(F)Z
    .registers 2

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_d

    const/high16 v0, 0x40400000    # 3.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public static needChangeSize()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static needCompatNotch(Ljava/lang/String;)Z
    .registers 2

    sget-boolean v0, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v0, :cond_e

    sget-object v0, Lmiui/util/CustomizeUtil;->sNeedCompatNotchPkgs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static setMiuiCustVariatDir(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lmiui/util/CustomizeUtil;->sCustVariant:Ljava/lang/String;

    return-void
.end method
