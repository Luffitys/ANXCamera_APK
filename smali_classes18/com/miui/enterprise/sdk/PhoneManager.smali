.class public Lcom/miui/enterprise/sdk/PhoneManager;
.super Ljava/lang/Object;
.source "PhoneManager.java"


# static fields
.field public static final CLOSE:I = 0x3

.field public static final DISABLE:I = 0x0

.field public static final ENABLE:I = 0x1

.field public static final FLAG_DEFAULT:I = 0x0

.field public static final FLAG_DISALLOW_IN:I = 0x1

.field public static final FLAG_DISALLOW_OUT:I = 0x2

.field public static final FORCE_OPEN:I = 0x4

.field public static final OPEN:I = 0x2

.field public static final RESTRICTION_MODE_BLACK_LIST:I = 0x2

.field public static final RESTRICTION_MODE_DEFAULT:I = 0x0

.field public static final RESTRICTION_MODE_WHITE_LIST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PhoneManager"

.field private static mService:Lcom/miui/enterprise/IPhoneManager;

.field private static volatile sInstance:Lcom/miui/enterprise/sdk/PhoneManager;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "phone_manager"

    invoke-static {v0}, Lcom/miui/enterprise/EnterpriseManager;->getEnterpriseService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/enterprise/IPhoneManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/enterprise/IPhoneManager;

    move-result-object v0

    sput-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/enterprise/sdk/PhoneManager;
    .registers 2

    const-class v0, Lcom/miui/enterprise/sdk/PhoneManager;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->sInstance:Lcom/miui/enterprise/sdk/PhoneManager;

    if-nez v1, :cond_e

    new-instance v1, Lcom/miui/enterprise/sdk/PhoneManager;

    invoke-direct {v1}, Lcom/miui/enterprise/sdk/PhoneManager;-><init>()V

    sput-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->sInstance:Lcom/miui/enterprise/sdk/PhoneManager;

    :cond_e
    sget-object v1, Lcom/miui/enterprise/sdk/PhoneManager;->sInstance:Lcom/miui/enterprise/sdk/PhoneManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public controlCellular(I)V
    .registers 5

    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/miui/enterprise/IPhoneManager;->controlCellular(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method public controlPhoneCall(I)V
    .registers 5

    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/miui/enterprise/IPhoneManager;->controlPhoneCall(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method public controlSMS(I)V
    .registers 5

    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/miui/enterprise/IPhoneManager;->controlSMS(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method public disableCallForward(Z)V
    .registers 5

    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IPhoneManager;->disableCallForward(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public disableCallLog(Z)V
    .registers 5

    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IPhoneManager;->disableCallLog(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public endCall()V
    .registers 4

    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-interface {v0}, Lcom/miui/enterprise/IPhoneManager;->endCall()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public getAreaCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IPhoneManager;->getAreaCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    return-object v0
.end method

.method public getCallBlackList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/enterprise/IPhoneManager;->getCallBlackList(I)Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallContactRestriction()I
    .registers 4

    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/enterprise/IPhoneManager;->getCallContactRestriction(I)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getCallWhiteList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/enterprise/IPhoneManager;->getCallWhiteList(I)Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellularStatus()I
    .registers 4

    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/enterprise/IPhoneManager;->getCellularStatus(I)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public getIMEI(I)Ljava/lang/String;
    .registers 5

    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IPhoneManager;->getIMEI(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, ""

    return-object v1
.end method

.method public getMeid(I)Ljava/lang/String;
    .registers 5

    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IPhoneManager;->getMeid(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    return-object v0
.end method

.method public getPhoneCallStatus()I
    .registers 4

    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/enterprise/IPhoneManager;->getPhoneCallStatus(I)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public getSMSBlackList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/enterprise/IPhoneManager;->getSMSBlackList(I)Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSMSContactRestriction()I
    .registers 4

    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/enterprise/IPhoneManager;->getSMSContactRestriction(I)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getSMSStatus()I
    .registers 4

    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/enterprise/IPhoneManager;->getSMSStatus(I)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public getSMSWhiteList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/enterprise/IPhoneManager;->getSMSWhiteList(I)Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAutoRecordPhoneCall()Z
    .registers 4

    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/enterprise/IPhoneManager;->isAutoRecordPhoneCall(I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    :catch_b
    move-exception v0

    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public setCallBlackList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/miui/enterprise/IPhoneManager;->setCallBlackList(Ljava/util/List;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method public setCallContactRestriction(I)V
    .registers 5

    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/miui/enterprise/IPhoneManager;->setCallContactRestriction(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method public setCallWhiteList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/miui/enterprise/IPhoneManager;->setCallWhiteList(Ljava/util/List;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method public setIccCardActivate(IZ)V
    .registers 6

    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-interface {v0, p1, p2}, Lcom/miui/enterprise/IPhoneManager;->setIccCardActivate(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public setPhoneCallAutoRecord(Z)V
    .registers 5

    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/miui/enterprise/IPhoneManager;->setPhoneCallAutoRecord(ZI)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method public setPhoneCallAutoRecordDir(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-interface {v0, p1}, Lcom/miui/enterprise/IPhoneManager;->setPhoneCallAutoRecordDir(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e
    return-void
.end method

.method public setSMSBlackList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/miui/enterprise/IPhoneManager;->setSMSBlackList(Ljava/util/List;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method public setSMSContactRestriction(I)V
    .registers 5

    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/miui/enterprise/IPhoneManager;->setSMSContactRestriction(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method

.method public setSMSWhiteList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/miui/enterprise/sdk/PhoneManager;->mService:Lcom/miui/enterprise/IPhoneManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/miui/enterprise/IPhoneManager;->setSMSWhiteList(Ljava/util/List;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    const-string v1, "PhoneManager"

    const-string v2, "Remote service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-void
.end method
