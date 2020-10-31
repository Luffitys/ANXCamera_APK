.class public Lcom/miui/mishare/app/util/WPSConvertPDFSdkHelper;
.super Ljava/lang/Object;
.source "WPSConvertPDFSdkHelper.java"


# static fields
.field public static final PACKAGE_WPS_LITE:Ljava/lang/String; = "cn.wps.moffice_eng.xiaomi.lite"

.field public static final SUPPORT_MIN_VERSIONCODE_LITE:I = 0xce

.field private static sOfficeFileExtension:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/miui/mishare/app/util/WPSConvertPDFSdkHelper$1;

    invoke-direct {v0}, Lcom/miui/mishare/app/util/WPSConvertPDFSdkHelper$1;-><init>()V

    sput-object v0, Lcom/miui/mishare/app/util/WPSConvertPDFSdkHelper;->sOfficeFileExtension:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInstalled(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "cn.wps.moffice_eng.xiaomi.lite"

    const/16 v3, 0x2000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_10} :catch_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_14

    if-eqz v2, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0

    :catch_14
    move-exception v1

    goto :goto_18

    :catch_16
    move-exception v1

    nop

    :goto_18
    return v0
.end method

.method public static isInstalledAndSupportConvert(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/miui/mishare/app/util/WPSConvertPDFSdkHelper;->isInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/miui/mishare/app/util/WPSConvertPDFSdkHelper;->isSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static isOfficeFile(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/miui/mishare/app/util/WPSConvertPDFSdkHelper;->sOfficeFileExtension:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSupport(Landroid/content/Context;)Z
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "cn.wps.moffice_eng.xiaomi.lite"

    const/16 v2, 0x2000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_e} :catch_15

    const/16 v3, 0xce

    if-lt v2, v3, :cond_14

    const/4 v3, 0x1

    return v3

    :cond_14
    goto :goto_19

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_19
    const/4 v0, 0x0

    return v0
.end method
