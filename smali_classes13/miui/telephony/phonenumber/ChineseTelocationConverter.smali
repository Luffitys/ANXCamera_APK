.class public Lmiui/telephony/phonenumber/ChineseTelocationConverter;
.super Ljava/lang/Object;
.source "ChineseTelocationConverter.java"


# static fields
.field public static final AREACODE_INDEX:I = 0x1

.field public static final LOCATION_INDEX:I = 0x0

.field public static final LOCATION_KIND:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ChineseTelocation"

.field public static final TELOCATION_CONTENT_URI:Landroid/net/Uri;

.field public static final UNIQUE_ID_NONE:I

.field private static sInstance:Lmiui/telephony/phonenumber/ChineseTelocationConverter;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    invoke-direct {v0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;-><init>()V

    sput-object v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->sInstance:Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    const-string v0, "content://com.miui.core.telocation"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->TELOCATION_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->context:Landroid/content/Context;

    return-void
.end method

.method private checkContext()V
    .registers 2

    iget-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->context:Landroid/content/Context;

    if-nez v0, :cond_a

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->context:Landroid/content/Context;

    :cond_a
    return-void
.end method

.method public static getInstance()Lmiui/telephony/phonenumber/ChineseTelocationConverter;
    .registers 1

    sget-object v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->sInstance:Lmiui/telephony/phonenumber/ChineseTelocationConverter;

    return-object v0
.end method


# virtual methods
.method public getAreaCode(Landroid/location/Address;)Ljava/lang/String;
    .registers 13

    if-nez p1, :cond_5

    const-string v0, ""

    return-object v0

    :cond_5
    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->checkContext()V

    invoke-virtual {p1}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adminArea:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " locality:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ChineseTelocation"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->TELOCATION_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "query_area_code_by_address"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "adminArea"

    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "locality"

    invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v9, 0x0

    const-string v10, ""

    :try_start_55
    iget-object v3, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v9, v3

    if-eqz v9, :cond_73

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_73

    const/4 v3, 0x7

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_72} :catch_81
    .catchall {:try_start_55 .. :try_end_72} :catchall_7f

    move-object v10, v3

    :cond_73
    if-eqz v9, :cond_8e

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_8e

    :goto_7b
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_8e

    :catchall_7f
    move-exception v3

    goto :goto_8f

    :catch_81
    move-exception v3

    :try_start_82
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_7f

    if-eqz v9, :cond_8e

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_8e

    goto :goto_7b

    :cond_8e
    :goto_8e
    return-object v10

    :goto_8f
    if-eqz v9, :cond_9a

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_9a

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_9a
    throw v3
.end method

.method public getAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 13

    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->checkContext()V

    sget-object v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->TELOCATION_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "query_area_code"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "number"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "length"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const/4 v7, 0x0

    const-string v8, ""

    :try_start_34
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v7, v1

    if-eqz v7, :cond_52

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_52

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_51} :catch_60
    .catchall {:try_start_34 .. :try_end_51} :catchall_5e

    move-object v8, v1

    :cond_52
    if-eqz v7, :cond_6d

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6d

    :goto_5a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_6d

    :catchall_5e
    move-exception v1

    goto :goto_6e

    :catch_60
    move-exception v1

    :try_start_61
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_5e

    if-eqz v7, :cond_6d

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6d

    goto :goto_5a

    :cond_6d
    :goto_6d
    return-object v8

    :goto_6e
    if-eqz v7, :cond_79

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_79

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_79
    throw v1
.end method

.method public getLocation(Ljava/lang/CharSequence;IIZ)Ljava/lang/String;
    .registers 14

    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->checkContext()V

    sget-object v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->TELOCATION_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "query_location"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "number"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "length"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "with_area_code"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const/4 v7, 0x0

    const-string v8, ""

    :try_start_3e
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v7, v1

    if-eqz v7, :cond_5c

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5c

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_5b} :catch_6a
    .catchall {:try_start_3e .. :try_end_5b} :catchall_68

    move-object v8, v1

    :cond_5c
    if-eqz v7, :cond_77

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_77

    :goto_64
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_77

    :catchall_68
    move-exception v1

    goto :goto_78

    :catch_6a
    move-exception v1

    :try_start_6b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_68

    if-eqz v7, :cond_77

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_77

    goto :goto_64

    :cond_77
    :goto_77
    return-object v8

    :goto_78
    if-eqz v7, :cond_83

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_83

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_83
    throw v1
.end method

.method public getOperator(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 13

    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->checkContext()V

    sget-object v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->TELOCATION_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "query_operator"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "number"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "length"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const/4 v7, 0x0

    const-string v8, ""

    :try_start_34
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v7, v1

    if-eqz v7, :cond_52

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_52

    const/4 v1, 0x4

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_51} :catch_60
    .catchall {:try_start_34 .. :try_end_51} :catchall_5e

    move-object v8, v1

    :cond_52
    if-eqz v7, :cond_6d

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6d

    :goto_5a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_6d

    :catchall_5e
    move-exception v1

    goto :goto_6e

    :catch_60
    move-exception v1

    :try_start_61
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_5e

    if-eqz v7, :cond_6d

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6d

    goto :goto_5a

    :cond_6d
    :goto_6d
    return-object v8

    :goto_6e
    if-eqz v7, :cond_79

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_79

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_79
    throw v1
.end method

.method public getUniqId(Ljava/lang/CharSequence;IIZ)I
    .registers 14

    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->checkContext()V

    sget-object v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->TELOCATION_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "query_uniq_id"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "number"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "length"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "enable_mobile"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_3d
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v7, v1

    if-eqz v7, :cond_69

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_69

    const/4 v1, 0x6

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_69

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_68} :catch_77
    .catchall {:try_start_3d .. :try_end_68} :catchall_75

    move v8, v2

    :cond_69
    if-eqz v7, :cond_84

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_84

    :goto_71
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_84

    :catchall_75
    move-exception v1

    goto :goto_85

    :catch_77
    move-exception v1

    :try_start_78
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_75

    if-eqz v7, :cond_84

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_84

    goto :goto_71

    :cond_84
    :goto_84
    return v8

    :goto_85
    if-eqz v7, :cond_90

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_90

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_90
    throw v1
.end method

.method public getVersion()I
    .registers 10

    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->checkContext()V

    sget-object v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->TELOCATION_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "query_version"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, -0x1

    :try_start_15
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v7, v1

    if-eqz v7, :cond_41

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_41

    const/4 v1, 0x5

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_41

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_40} :catch_4f
    .catchall {:try_start_15 .. :try_end_40} :catchall_4d

    move v8, v2

    :cond_41
    if-eqz v7, :cond_5c

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5c

    :goto_49
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_5c

    :catchall_4d
    move-exception v1

    goto :goto_5d

    :catch_4f
    move-exception v1

    :try_start_50
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_4d

    if-eqz v7, :cond_5c

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5c

    goto :goto_49

    :cond_5c
    :goto_5c
    return v8

    :goto_5d
    if-eqz v7, :cond_68

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_68

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_68
    throw v1
.end method

.method public parseAreaCode(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 13

    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->checkContext()V

    sget-object v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->TELOCATION_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "parse_area_code"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "number"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "start"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "length"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const/4 v7, 0x0

    const-string v8, ""

    :try_start_34
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v7, v1

    if-eqz v7, :cond_52

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_52

    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_51} :catch_60
    .catchall {:try_start_34 .. :try_end_51} :catchall_5e

    move-object v8, v1

    :cond_52
    if-eqz v7, :cond_6d

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6d

    :goto_5a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_6d

    :catchall_5e
    move-exception v1

    goto :goto_6e

    :catch_60
    move-exception v1

    :try_start_61
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_5e

    if-eqz v7, :cond_6d

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_6d

    goto :goto_5a

    :cond_6d
    :goto_6d
    return-object v8

    :goto_6e
    if-eqz v7, :cond_79

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_79

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_79
    throw v1
.end method

.method public reloadInstance()V
    .registers 9

    invoke-direct {p0}, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->checkContext()V

    sget-object v0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->TELOCATION_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "reload"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const/4 v7, 0x0

    :try_start_14
    iget-object v1, p0, Lmiui/telephony/phonenumber/ChineseTelocationConverter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_23} :catch_32
    .catchall {:try_start_14 .. :try_end_23} :catchall_30

    move-object v7, v1

    if-eqz v7, :cond_3f

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3f

    :goto_2c
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3f

    :catchall_30
    move-exception v1

    goto :goto_40

    :catch_32
    move-exception v1

    :try_start_33
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_30

    if-eqz v7, :cond_3f

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3f

    goto :goto_2c

    :cond_3f
    :goto_3f
    return-void

    :goto_40
    if-eqz v7, :cond_4b

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_4b

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4b
    throw v1
.end method
