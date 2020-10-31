.class public Lmiui/util/MiuiScreenshotHelper;
.super Ljava/lang/Object;
.source "MiuiScreenshotHelper.java"


# static fields
.field private static final SYSUI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final SYSUI_SCREENSHOT_ERROR_RECEIVER:Ljava/lang/String; = "com.android.systemui.screenshot.ScreenshotServiceErrorReceiver"

.field private static final SYSUI_SCREENSHOT_SERVICE:Ljava/lang/String; = "com.android.systemui.screenshot.TakeScreenshotService"

.field private static final TAG:Ljava/lang/String; = "MiuiScreenshotHelper"


# instance fields
.field private final SCREENSHOT_TIMEOUT_MS:I

.field private final mContext:Landroid/content/Context;

.field private mScreenshotConnection:Landroid/content/ServiceConnection;

.field private final mScreenshotLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2710

    iput v0, p0, Lmiui/util/MiuiScreenshotHelper;->SCREENSHOT_TIMEOUT_MS:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/util/MiuiScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/util/MiuiScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lmiui/util/MiuiScreenshotHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lmiui/util/MiuiScreenshotHelper;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lmiui/util/MiuiScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/util/MiuiScreenshotHelper;)Landroid/content/ServiceConnection;
    .registers 2

    iget-object v0, p0, Lmiui/util/MiuiScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$102(Lmiui/util/MiuiScreenshotHelper;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .registers 2

    iput-object p1, p0, Lmiui/util/MiuiScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$200(Lmiui/util/MiuiScreenshotHelper;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lmiui/util/MiuiScreenshotHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/util/MiuiScreenshotHelper;)V
    .registers 1

    invoke-direct {p0}, Lmiui/util/MiuiScreenshotHelper;->notifyScreenshotError()V

    return-void
.end method

.method private notifyScreenshotError()V
    .registers 5

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.screenshot.ScreenshotServiceErrorReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lmiui/util/MiuiScreenshotHelper;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public takeScreenshot(IZZJLandroid/os/Handler;Ljava/util/function/Consumer;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZJ",
            "Landroid/os/Handler;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    move-object v9, p0

    iget-object v10, v9, Lmiui/util/MiuiScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_4
    iget-object v0, v9, Lmiui/util/MiuiScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_a

    monitor-exit v10

    return-void

    :cond_a
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v11, v1

    new-instance v1, Lmiui/util/MiuiScreenshotHelper$1;
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_5a

    move-object/from16 v12, p7

    :try_start_1d
    invoke-direct {v1, p0, v12}, Lmiui/util/MiuiScreenshotHelper$1;-><init>(Lmiui/util/MiuiScreenshotHelper;Ljava/util/function/Consumer;)V

    move-object v13, v1

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v14, Lmiui/util/MiuiScreenshotHelper$2;

    move-object v1, v14

    move-object v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p6

    move-object v5, v13

    move-object/from16 v6, p7

    move/from16 v7, p2

    move/from16 v8, p3

    invoke-direct/range {v1 .. v8}, Lmiui/util/MiuiScreenshotHelper$2;-><init>(Lmiui/util/MiuiScreenshotHelper;ILandroid/os/Handler;Ljava/lang/Runnable;Ljava/util/function/Consumer;ZZ)V

    move-object v1, v14

    iget-object v2, v9, Lmiui/util/MiuiScreenshotHelper;->mContext:Landroid/content/Context;

    const v3, 0x2000001

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v11, v1, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_4e

    iput-object v1, v9, Lmiui/util/MiuiScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;
    :try_end_46
    .catchall {:try_start_1d .. :try_end_46} :catchall_54

    move-wide/from16 v2, p4

    move-object/from16 v4, p6

    :try_start_4a
    invoke-virtual {v4, v13, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_52

    :cond_4e
    move-wide/from16 v2, p4

    move-object/from16 v4, p6

    :goto_52
    monitor-exit v10

    return-void

    :catchall_54
    move-exception v0

    move-wide/from16 v2, p4

    move-object/from16 v4, p6

    goto :goto_61

    :catchall_5a
    move-exception v0

    move-wide/from16 v2, p4

    move-object/from16 v4, p6

    move-object/from16 v12, p7

    :goto_61
    monitor-exit v10
    :try_end_62
    .catchall {:try_start_4a .. :try_end_62} :catchall_63

    throw v0

    :catchall_63
    move-exception v0

    goto :goto_61
.end method

.method public takeScreenshot(IZZLandroid/os/Handler;Ljava/util/function/Consumer;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ",
            "Landroid/os/Handler;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v4, 0x2710

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lmiui/util/MiuiScreenshotHelper;->takeScreenshot(IZZJLandroid/os/Handler;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public takeScreenshotPartial(IZZ[FJLandroid/os/Handler;Ljava/util/function/Consumer;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ[FJ",
            "Landroid/os/Handler;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v10, p0

    iget-object v11, v10, Lmiui/util/MiuiScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_5
    iget-object v0, v10, Lmiui/util/MiuiScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_b

    monitor-exit v11

    return-void

    :cond_b
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    move-object v12, v1

    new-instance v1, Lmiui/util/MiuiScreenshotHelper$3;
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_5e

    move-object/from16 v13, p8

    :try_start_1e
    invoke-direct {v1, v10, v13}, Lmiui/util/MiuiScreenshotHelper$3;-><init>(Lmiui/util/MiuiScreenshotHelper;Ljava/util/function/Consumer;)V

    move-object v14, v1

    invoke-virtual {v12, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v15, Lmiui/util/MiuiScreenshotHelper$4;

    move-object v1, v15

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p7

    move-object v5, v14

    move-object/from16 v6, p8

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lmiui/util/MiuiScreenshotHelper$4;-><init>(Lmiui/util/MiuiScreenshotHelper;ILandroid/os/Handler;Ljava/lang/Runnable;Ljava/util/function/Consumer;ZZ[F)V

    move-object v1, v15

    iget-object v2, v10, Lmiui/util/MiuiScreenshotHelper;->mContext:Landroid/content/Context;

    const v3, 0x2000001

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v12, v1, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_52

    iput-object v1, v10, Lmiui/util/MiuiScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;
    :try_end_4a
    .catchall {:try_start_1e .. :try_end_4a} :catchall_58

    move-wide/from16 v2, p5

    move-object/from16 v4, p7

    :try_start_4e
    invoke-virtual {v4, v14, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_56

    :cond_52
    move-wide/from16 v2, p5

    move-object/from16 v4, p7

    :goto_56
    monitor-exit v11

    return-void

    :catchall_58
    move-exception v0

    move-wide/from16 v2, p5

    move-object/from16 v4, p7

    goto :goto_65

    :catchall_5e
    move-exception v0

    move-wide/from16 v2, p5

    move-object/from16 v4, p7

    move-object/from16 v13, p8

    :goto_65
    monitor-exit v11
    :try_end_66
    .catchall {:try_start_4e .. :try_end_66} :catchall_67

    throw v0

    :catchall_67
    move-exception v0

    goto :goto_65
.end method
