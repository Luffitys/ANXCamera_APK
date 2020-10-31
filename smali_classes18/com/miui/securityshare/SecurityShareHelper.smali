.class public Lcom/miui/securityshare/SecurityShareHelper;
.super Ljava/lang/Object;
.source "SecurityShareHelper.java"


# static fields
.field private static final INTENT_ACTION_SECURITY_SHARE:Ljava/lang/String; = "miui.intent.action.XMAN_SHARE_MANAGER"

.field private static final INTENT_ACTION_SECURITY_SHARE_PRIVACY_PROTECT_SETTING:Ljava/lang/String; = "miui.intent.action.ZMAN_PRIVACY_PROTECT_SETTING"

.field private static final INTENT_PACKAGENAME_FILE_EXPLORER:Ljava/lang/String; = "com.android.fileexplorer"

.field private static final INTENT_PACKAGENAME_FILE_EXPLORER_GLOBAL:Ljava/lang/String; = "com.mi.android.globalFileexplorer"

.field private static final INTENT_PACKAGENAME_MIUI_12_SECURITY_SHARE:Ljava/lang/String; = "com.miui.securitycenter"

.field private static final PARAM_IMAGE_PATH:Ljava/lang/String; = "image_path"

.field private static final PARAM_MULTI_IMAGE:Ljava/lang/String; = "multi_image"

.field private static final TAG:Ljava/lang/String; = "zman_share"

.field private static final URI_FILE_EXPLORER_PREFIX:Ljava/lang/String; = "/external_files"

.field private static final ZMAN_CLOUD_DISABLE:Ljava/lang/String; = "zman_cloud_disable"

.field private static final ZMAN_SECURITY_SHARE_DEFAULT:I = 0x1

.field private static final ZMAN_SHARE_CAMERA_ENABLE:Ljava/lang/String; = "zman_share_hide_camera"

.field private static final ZMAN_SHARE_ENABLE:Ljava/lang/String; = "zman_share_enable"

.field private static final ZMAN_SHARE_LOCATION_ENABLE:Ljava/lang/String; = "zman_share_hide_location"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkStartShareActivity(Landroid/app/Activity;Landroid/os/Bundle;ILandroid/content/Intent;)Z
    .registers 9

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEND"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    invoke-static {p0}, Lcom/miui/securityshare/SecurityShareHelper;->reflectGetReferrer(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.android.fileexplorer"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    const-string v3, "com.mi.android.globalFileexplorer"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_30

    :cond_2a
    invoke-static {p0}, Lcom/miui/securityshare/SecurityShareHelper;->isNeedSecurityShare(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_38

    :cond_30
    const-string v3, "zman_share"

    const-string v4, "not support security share"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_38
    const/high16 v3, -0x80000000

    invoke-virtual {p3, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "miui.intent.action.XMAN_SHARE_MANAGER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.miui.securitycenter"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {p0, v3, p1, v2, p2}, Lmiui/securityspace/CrossUserUtilsCompat;->startActivityAsCaller(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    const/4 v2, 0x1

    return v2
.end method

.method public static cleanImageInfo(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/miui/securityshare/SecurityShareHelper;->isSecurityShareCloudDisable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6f

    invoke-static {p0}, Lcom/miui/securityshare/SecurityShareHelper;->isHideLocationInfoEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p0}, Lcom/miui/securityshare/SecurityShareHelper;->isHideCameraInfoEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_6f

    :cond_13
    const-string v0, "content://com.miui.securitycenter.zman.provider/clean"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_20
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_41

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    const-string v3, "com.miui.securitycenter"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v2, v4}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_41
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    move-object v3, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_6e

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :goto_53
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    const-string v2, "uris"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_53

    :cond_6b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6e
    return-object p1

    :cond_6f
    :goto_6f
    return-object p1
.end method

.method private static getSettingValue(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    move v1, v2

    :cond_d
    return v1
.end method

.method private static isFileExplorerImage(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-static {v2}, Lcom/miui/securityshare/SecurityShareHelper;->uriToFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/securityshare/SecurityShareHelper;->isImage(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_20

    const/4 v0, 0x1

    return v0

    :cond_20
    goto :goto_8

    :cond_21
    return v0
.end method

.method public static isHideCameraInfoEnable(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zman_share_hide_camera"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    return v2
.end method

.method public static isHideLocationInfoEnable(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zman_share_hide_location"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    return v2
.end method

.method private static isImage(Ljava/io/File;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_26

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_26

    :cond_a
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    :try_start_12
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_23

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_20} :catch_24

    if-eq v3, v4, :cond_23

    move v0, v2

    :cond_23
    return v0

    :catch_24
    move-exception v2

    return v0

    :cond_26
    :goto_26
    return v0
.end method

.method public static isNeedSecurityShare(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/miui/securityshare/SecurityShareHelper;->isSecurityShareCloudDisable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p0}, Lcom/miui/securityshare/SecurityShareHelper;->isHideCameraInfoEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {p0}, Lcom/miui/securityshare/SecurityShareHelper;->isHideLocationInfoEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-static {p0}, Lcom/miui/securityshare/SecurityShareHelper;->isZmanShareEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public static isSecurityShareCloudDisable(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zman_cloud_disable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    move v2, v1

    :cond_f
    return v2
.end method

.method public static isShowSecurityShareView(Landroid/content/Context;Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p0}, Lcom/miui/securityshare/SecurityShareHelper;->isSecurityShareCloudDisable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p1}, Lcom/miui/securityshare/SecurityShareHelper;->isFileExplorerImage(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static isZmanShareEnable(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "zman_share_enable"

    invoke-static {p0, v0}, Lcom/miui/securityshare/SecurityShareHelper;->getSettingValue(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static reflectGetReferrer(Landroid/app/Activity;)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string v0, "android.app.Activity"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mReferrer"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return-object v2

    :catch_17
    move-exception v0

    const-string v1, "zman_share"

    const-string v2, "reflectGetReferrer Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    return-object v0
.end method

.method public static startPrivacyProtectSettingsActivity(Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_c

    goto :goto_d

    :cond_c
    move v2, v1

    :goto_d
    move v0, v2

    if-eqz v0, :cond_12

    const/4 v1, 0x0

    goto :goto_1c

    :cond_12
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {v1}, Lcom/miui/securityshare/SecurityShareHelper;->uriToFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    :goto_1c
    invoke-static {p0, v0, v1}, Lcom/miui/securityshare/SecurityShareHelper;->startPrivacyProtectSettingsActivity(Landroid/content/Context;ZLjava/io/File;)V

    return-void
.end method

.method public static startPrivacyProtectSettingsActivity(Landroid/content/Context;ZLjava/io/File;)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "miui.intent.action.ZMAN_PRIVACY_PROTECT_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "multi_image"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-nez p1, :cond_2c

    if-eqz p2, :cond_2c

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    const-string v2, "image_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_2c
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static uriToFile(Landroid/net/Uri;)Ljava/io/File;
    .registers 7

    const-string v0, "zman_share"

    const/4 v1, 0x0

    if-eqz p0, :cond_63

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_63

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_63

    :cond_1a
    :try_start_1a
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/external_files"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_45} :catch_49

    if-eqz v0, :cond_48

    move-object v1, v5

    :cond_48
    return-object v1

    :catch_49
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uriToFile error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :cond_63
    :goto_63
    const-string v2, "uriToFile uri is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method
