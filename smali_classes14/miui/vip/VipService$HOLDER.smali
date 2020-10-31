.class Lmiui/vip/VipService$HOLDER;
.super Ljava/lang/Object;
.source "VipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/vip/VipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HOLDER"
.end annotation


# static fields
.field static final service:Lmiui/vip/VipService;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    invoke-static {}, Lmiui/util/AppConstants;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_5
    new-instance v2, Lmiui/vip/VipService;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lmiui/vip/VipService;-><init>(Landroid/content/Context;)V
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_10

    move-object v1, v2

    goto :goto_1c

    :catchall_10
    move-exception v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v4, "HOLDER.init failed, %s"

    invoke-static {v4, v3}, Lcom/miui/internal/vip/utils/Utils;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1c
    sput-object v1, Lmiui/vip/VipService$HOLDER;->service:Lmiui/vip/VipService;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
