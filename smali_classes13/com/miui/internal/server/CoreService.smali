.class public final Lcom/miui/internal/server/CoreService;
.super Landroid/app/Service;
.source "CoreService.java"


# static fields
.field public static final ACTION_BIND_SERVICE:Ljava/lang/String; = "com.miui.internal.action.BIND_SERVICE"

.field public static final EXTRA_SERVICE_NAME:Ljava/lang/String; = "extra_service_name"


# instance fields
.field mBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/server/CoreService;->mBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    const-string v0, "com.miui.internal.action.BIND_SERVICE"

    invoke-static {p1, v0}, Lcom/miui/internal/server/Receiver;->isActionEquals(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "extra_service_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DropBoxManagerService"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-static {}, Lcom/miui/internal/server/DropBoxManagerService;->getInstance()Lcom/miui/internal/server/DropBoxManagerService;

    move-result-object v1

    return-object v1

    :cond_1b
    iget-object v0, p0, Lcom/miui/internal/server/CoreService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    const/4 v0, 0x1

    return v0
.end method
