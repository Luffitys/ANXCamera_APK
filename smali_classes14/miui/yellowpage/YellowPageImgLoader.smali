.class public Lmiui/yellowpage/YellowPageImgLoader;
.super Ljava/lang/Object;
.source "YellowPageImgLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/yellowpage/YellowPageImgLoader$Image;
    }
.end annotation


# static fields
.field private static final YELLOWPAGE_PHOTO_DOWNLOAD_WIFI_ONLY:Ljava/lang/String; = "yellowpage_photo_download_wifi_only"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelLoading(Landroid/content/Context;Landroid/widget/ImageView;)V
    .registers 3

    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/internal/yellowpage/ImageLoader;->cancelRequest(Landroid/widget/ImageView;)V

    return-void
.end method

.method public static getDataSha1Digest([B)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_1e

    array-length v1, p0

    if-nez v1, :cond_7

    goto :goto_1e

    :cond_7
    :try_start_7
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lmiui/yellowpage/YellowPageImgLoader;->getHexString([B)Ljava/lang/String;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_18} :catch_19

    return-object v0

    :catch_19
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0

    :cond_1e
    :goto_1e
    return-object v0
.end method

.method private static getHexString([B)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_36

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v2, v2, 0x4

    const/16 v3, 0x9

    if-ltz v2, :cond_18

    if-gt v2, v3, :cond_18

    add-int/lit8 v4, v2, 0x30

    goto :goto_1c

    :cond_18
    add-int/lit8 v4, v2, 0x61

    add-int/lit8 v4, v4, -0xa

    :goto_1c
    int-to-char v4, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v4, p0, v1

    and-int/lit8 v2, v4, 0xf

    if-ltz v2, :cond_2b

    if-gt v2, v3, :cond_2b

    add-int/lit8 v3, v2, 0x30

    goto :goto_2f

    :cond_2b
    add-int/lit8 v3, v2, 0x61

    add-int/lit8 v3, v3, -0xa

    :goto_2f
    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getImageUrl(Landroid/content/Context;Ljava/lang/String;IILmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;)Ljava/lang/String;
    .registers 15

    sget-object v0, Lmiui/yellowpage/YellowPageContract$ImageLookup;->CONTENT_URI_IMAGE_URL:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    sget-object v1, Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;->JPG:Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;

    if-ne p4, v1, :cond_27

    const-string v1, "jpg"

    goto :goto_29

    :cond_27
    const-string v1, "png"

    :goto_29
    const-string v2, "format"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p0, v1}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    const/4 v9, 0x0

    if-nez v2, :cond_3a

    return-object v9

    :cond_3a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_61

    :try_start_49
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_58

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_54
    .catchall {:try_start_49 .. :try_end_54} :catchall_5c

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v3

    :cond_58
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_61

    :catchall_5c
    move-exception v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_61
    :goto_61
    return-object v9
.end method

.method private static isWifiConnected(Landroid/content/Context;)Z
    .registers 4

    nop

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v2

    if-nez v2, :cond_1d

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    return v2
.end method

.method private static isYellowPagePhotoDownloadWifiOnly(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "yellowpage_photo_download_wifi_only"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    return v2
.end method

.method public static loadImage(Landroid/content/Context;Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;Ljava/lang/String;III)V
    .registers 10

    new-instance v0, Lmiui/yellowpage/YellowPageImgLoader$Image;

    invoke-static {p0, p4, p5, p6, p3}, Lmiui/yellowpage/HostManager;->getImageUrl(Landroid/content/Context;Ljava/lang/String;IILmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lmiui/yellowpage/YellowPageImgLoader$Image;-><init>(Ljava/lang/String;Lmiui/yellowpage/YellowPageImgLoader$Image$ImageFormat;)V

    invoke-virtual {v0, p2}, Lmiui/yellowpage/YellowPageImgLoader$Image;->setImageProcessor(Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;)V

    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p7}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;I)V

    return-void
.end method

.method public static loadImage(Landroid/content/Context;Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;I)V
    .registers 5

    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;I)V

    return-void
.end method

.method public static loadPhoneDisplayAd(Landroid/content/Context;JLjava/lang/String;Z)Landroid/graphics/Bitmap;
    .registers 21

    const/4 v0, 0x1

    if-eqz p4, :cond_5

    move v4, v0

    goto :goto_7

    :cond_5
    const/4 v1, 0x2

    move v4, v1

    :goto_7
    sget-object v1, Lmiui/yellowpage/YellowPageContract$ImageLookup;->CONTENT_URI_IMAGE_PHONE_AD:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "number"

    move-object/from16 v9, p3

    invoke-virtual {v1, v2, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "yid"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "callType"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    move-object/from16 v7, p0

    invoke-static {v7, v8}, Lmiui/yellowpage/YellowPageUtils;->isContentProviderInstalled(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_34

    const/4 v0, 0x0

    return-object v0

    :cond_34
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v8

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v10, :cond_59

    :try_start_45
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_54

    move-object v2, v5

    :cond_50
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_59

    :catchall_54
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_59
    :goto_59
    const/4 v5, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_78

    invoke-static/range {p0 .. p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v6

    new-instance v11, Lmiui/yellowpage/YellowPageImgLoader$Image;

    invoke-direct {v11, v2}, Lmiui/yellowpage/YellowPageImgLoader$Image;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11, v0}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImageBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    move-object v12, v5

    goto :goto_7a

    :cond_78
    move-object v11, v2

    move-object v12, v5

    :goto_7a
    const/4 v5, 0x1

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    if-eqz v12, :cond_82

    goto :goto_83

    :cond_82
    move v0, v3

    :goto_83
    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object v7, v11

    move-object v13, v8

    move v8, v0

    invoke-static/range {v2 .. v8}, Lmiui/yellowpage/YellowPageStatistic;->viewYellowPageInPhoneCall(Landroid/content/Context;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;Z)V

    return-object v12
.end method

.method public static loadPhoto(Landroid/content/Context;JZ)Landroid/graphics/Bitmap;
    .registers 7

    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_YID:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/internal/yellowpage/YellowPageAvatar;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)V

    if-eqz p3, :cond_1b

    invoke-static {p0}, Lmiui/yellowpage/YellowPageImgLoader;->isYellowPagePhotoDownloadWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {p0}, Lmiui/yellowpage/YellowPageImgLoader;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1b

    :cond_19
    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    move p3, v1

    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImageBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static loadPhotoByName(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .registers 5

    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar;

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->PHOTO_NAME:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/internal/yellowpage/YellowPageAvatar;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)V

    if-eqz p2, :cond_17

    invoke-static {p0}, Lmiui/yellowpage/YellowPageImgLoader;->isYellowPagePhotoDownloadWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {p0}, Lmiui/yellowpage/YellowPageImgLoader;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_17

    :cond_15
    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    move p2, v1

    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImageBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static loadThumbnail(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .registers 5

    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar;

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NUMBER:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/internal/yellowpage/YellowPageAvatar;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)V

    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImageBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static loadThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;JI)V
    .registers 9

    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_YID:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/internal/yellowpage/YellowPageAvatar;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)V

    invoke-virtual {v0, p2}, Lmiui/yellowpage/YellowPageImgLoader$Image;->setImageProcessor(Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;)V

    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p5}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;I)V

    return-void
.end method

.method public static loadThumbnail(Landroid/content/Context;Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;Ljava/lang/String;I)V
    .registers 7

    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar;

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NUMBER:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-direct {v0, p0, p3, v1}, Lcom/miui/internal/yellowpage/YellowPageAvatar;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)V

    invoke-virtual {v0, p2}, Lmiui/yellowpage/YellowPageImgLoader$Image;->setImageProcessor(Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;)V

    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p4}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;I)V

    return-void
.end method

.method public static loadThumbnailByName(Landroid/content/Context;Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;Ljava/lang/String;I)V
    .registers 7

    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar;

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NAME:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-direct {v0, p0, p3, v1}, Lcom/miui/internal/yellowpage/YellowPageAvatar;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)V

    invoke-virtual {v0, p2}, Lmiui/yellowpage/YellowPageImgLoader$Image;->setImageProcessor(Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;)V

    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p4}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;I)V

    return-void
.end method

.method public static loadThumbnailByName(Landroid/content/Context;Ljava/lang/String;Z)[B
    .registers 6

    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar;

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NAME:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/internal/yellowpage/YellowPageAvatar;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)V

    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p2, v2, v2}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImageBytes(Lmiui/yellowpage/YellowPageImgLoader$Image;ZII)[B

    move-result-object v1

    return-object v1
.end method

.method public static loadThumbnailByName(Landroid/content/Context;Ljava/lang/String;ZII)[B
    .registers 7

    new-instance v0, Lcom/miui/internal/yellowpage/YellowPageAvatar;

    sget-object v1, Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;->THUMBNAIL_NAME:Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;

    invoke-direct {v0, p0, p1, v1}, Lcom/miui/internal/yellowpage/YellowPageAvatar;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/internal/yellowpage/YellowPageAvatar$YellowPageAvatarFormat;)V

    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImageBytes(Lmiui/yellowpage/YellowPageImgLoader$Image;ZII)[B

    move-result-object v1

    return-object v1
.end method

.method public static pauseLoading(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/yellowpage/ImageLoader;->pauseLoading()V

    return-void
.end method

.method public static resumeLoading(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/internal/yellowpage/ImageLoader;->resumeLoading()V

    return-void
.end method
