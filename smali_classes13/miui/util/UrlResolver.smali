.class public Lmiui/util/UrlResolver;
.super Ljava/lang/Object;
.source "UrlResolver.java"


# static fields
.field private static mResolveIntent:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lmiui/util/UrlResolver;->mResolveIntent:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMiuiIntent(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;
    .registers 12

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v0 .. v8}, Lmiui/util/UrlResolver;->checkMiuiIntent(Landroid/content/Context;ZLandroid/content/pm/PackageManager;Ljava/lang/Object;Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public static checkMiuiIntent(Landroid/content/Context;Ljava/lang/Object;Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lmiui/util/UrlResolver;->checkMiuiIntent(Landroid/content/Context;ZLandroid/content/pm/PackageManager;Ljava/lang/Object;Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method private static checkMiuiIntent(Landroid/content/Context;ZLandroid/content/pm/PackageManager;Ljava/lang/Object;Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Landroid/content/pm/ResolveInfo;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Landroid/content/pm/PackageManager;",
            "Ljava/lang/Object;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const/4 v6, 0x0

    if-eqz p1, :cond_13

    invoke-virtual {v2, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    move-object v7, v0

    goto :goto_15

    :cond_13
    move-object/from16 v7, p7

    :goto_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    const/4 v0, 0x0

    move v9, v0

    :goto_1d
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    const/4 v10, 0x1

    if-ge v9, v0, :cond_81

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/content/pm/ResolveInfo;

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v12, "com.android.browser"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v12, "com.mi.globalbrowser"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    goto :goto_7e

    :cond_44
    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/internal/util/UrlResolverHelper;->isWhiteListPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    :cond_52
    :try_start_52
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_61
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_52 .. :try_end_61} :catch_7c

    nop

    iget-object v12, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v12, :cond_7e

    iget-object v12, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v10, v12

    if-eqz v10, :cond_7e

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v12, "com.android.chrome"

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_78

    goto :goto_7e

    :cond_78
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    :catch_7c
    move-exception v0

    nop

    :cond_7e
    :goto_7e
    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    :cond_81
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v10, :cond_8e

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    return-object v0

    :cond_8e
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v9, 0x0

    if-le v0, v10, :cond_96

    return-object v9

    :cond_96
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    if-nez v11, :cond_9d

    return-object v9

    :cond_9d
    invoke-virtual {v11}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_a4

    return-object v9

    :cond_a4
    invoke-static {v12}, Lcom/miui/internal/util/UrlResolverHelper;->isMiHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ab

    return-object v9

    :cond_ab
    invoke-static {v11}, Lcom/miui/internal/util/UrlResolverHelper;->getFallbackParameter(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_14c

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14}, Lcom/miui/internal/util/UrlResolverHelper;->isBrowserFallbackScheme(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_c9

    const/4 v15, 0x1

    invoke-static {v13}, Lcom/miui/internal/util/UrlResolverHelper;->getBrowserFallbackUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move/from16 v16, v15

    move-object v15, v0

    goto :goto_cc

    :cond_c9
    move/from16 v16, v15

    move-object v15, v0

    :goto_cc
    invoke-virtual {v4, v15}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-eqz p1, :cond_e1

    if-eqz v16, :cond_dc

    invoke-virtual {v1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    return-object v0

    :cond_dc
    invoke-static {v1, v2, v4}, Lmiui/util/UrlResolver;->checkMiuiIntent(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0

    :cond_e1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x14

    if-le v0, v9, :cond_140

    :try_start_e7
    sget-object v0, Lmiui/util/UrlResolver;->mResolveIntent:Ljava/lang/reflect/Method;

    const/16 v17, 0x2

    const/4 v9, 0x4

    if-nez v0, :cond_118

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v10, "com.android.server.pm.PackageManagerService"

    invoke-virtual {v0, v10}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v10, "resolveIntent"

    new-array v6, v9, [Ljava/lang/Class;

    const-class v21, Landroid/content/Intent;

    const/16 v20, 0x0

    aput-object v21, v6, v20

    const-class v21, Ljava/lang/String;

    const/16 v19, 0x1

    aput-object v21, v6, v19

    sget-object v21, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v21, v6, v17

    sget-object v21, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v18, 0x3

    aput-object v21, v6, v18

    invoke-virtual {v0, v10, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    sput-object v6, Lmiui/util/UrlResolver;->mResolveIntent:Ljava/lang/reflect/Method;

    :cond_118
    sget-object v0, Lmiui/util/UrlResolver;->mResolveIntent:Ljava/lang/reflect/Method;

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v6, v9

    const/4 v9, 0x1

    aput-object v5, v6, v9

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v17

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v6, v10

    invoke-virtual {v0, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_135} :catch_13a

    move/from16 v9, p6

    move/from16 v10, p8

    goto :goto_14b

    :catch_13a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v6, 0x0

    return-object v6

    :cond_140
    move-object v0, v3

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    move/from16 v9, p6

    move/from16 v10, p8

    invoke-virtual {v0, v4, v5, v9, v10}, Lcom/android/server/pm/PackageManagerService;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    :goto_14b
    return-object v0

    :cond_14c
    move/from16 v10, p8

    move-object v6, v9

    move/from16 v9, p6

    return-object v6
.end method
