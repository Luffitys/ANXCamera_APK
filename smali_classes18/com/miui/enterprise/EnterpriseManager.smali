.class public Lcom/miui/enterprise/EnterpriseManager;
.super Ljava/lang/Object;
.source "EnterpriseManager.java"


# static fields
.field public static final APN_MANAGER:Ljava/lang/String; = "apn_manager"

.field public static final APPLICATION_MANAGER:Ljava/lang/String; = "application_manager"

.field public static final DEVICE_MANAGER:Ljava/lang/String; = "device_manager"

.field public static final PHONE_MANAGER:Ljava/lang/String; = "phone_manager"

.field public static final RESTRICTIONS_MANAGER:Ljava/lang/String; = "restrictions_manager"

.field public static final SERVICE_NAME:Ljava/lang/String; = "EnterpriseManager"

.field private static sEnterpriseManager:Lcom/miui/enterprise/IEnterpriseManager;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnterpriseService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 5

    sget-object v0, Lcom/miui/enterprise/EnterpriseManager;->sEnterpriseManager:Lcom/miui/enterprise/IEnterpriseManager;

    const-string v1, "EnterpriseManager"

    if-nez v0, :cond_10

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/IEnterpriseManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/enterprise/IEnterpriseManager;

    move-result-object v0

    sput-object v0, Lcom/miui/enterprise/EnterpriseManager;->sEnterpriseManager:Lcom/miui/enterprise/IEnterpriseManager;

    :cond_10
    :try_start_10
    sget-object v0, Lcom/miui/enterprise/EnterpriseManager;->sEnterpriseManager:Lcom/miui/enterprise/IEnterpriseManager;

    invoke-interface {v0, p0}, Lcom/miui/enterprise/IEnterpriseManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_16} :catch_17

    return-object v0

    :catch_17
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get enterprise service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method
