.class public final Landroid/app/timezone/RulesManager;
.super Ljava/lang/Object;
.source "RulesManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timezone/RulesManager$CallbackWrapper;,
        Landroid/app/timezone/RulesManager$ResultCode;
    }
.end annotation


# static fields
.field public static final ACTION_RULES_UPDATE_OPERATION:Ljava/lang/String; = "com.android.intent.action.timezone.RULES_UPDATE_OPERATION"

.field private static final DEBUG:Z = false

.field public static final ERROR_OPERATION_IN_PROGRESS:I = 0x1

.field public static final ERROR_UNKNOWN_FAILURE:I = 0x2

.field public static final EXTRA_OPERATION_STAGED:Ljava/lang/String; = "staged"

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "timezone.RulesManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIRulesManager:Landroid/app/timezone/IRulesManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/timezone/RulesManager;->mContext:Landroid/content/Context;

    nop

    const-string/jumbo v0, "timezone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/timezone/IRulesManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/timezone/IRulesManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/timezone/RulesManager;->mIRulesManager:Landroid/app/timezone/IRulesManager;

    return-void
.end method

.method static logDebug(Ljava/lang/String;)V
    .registers 1

    return-void
.end method


# virtual methods
.method public getRulesState()Landroid/app/timezone/RulesState;
    .registers 4

    :try_start_0
    const-string v0, "mIRulesManager.getRulesState()"

    invoke-static {v0}, Landroid/app/timezone/RulesManager;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/timezone/RulesManager;->mIRulesManager:Landroid/app/timezone/IRulesManager;

    invoke-interface {v0}, Landroid/app/timezone/IRulesManager;->getRulesState()Landroid/app/timezone/RulesState;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIRulesManager.getRulesState() returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/timezone/RulesManager;->logDebug(Ljava/lang/String;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20

    return-object v0

    :catch_20
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestInstall(Landroid/os/ParcelFileDescriptor;[BLandroid/app/timezone/Callback;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/app/timezone/RulesManager$CallbackWrapper;

    iget-object v1, p0, Landroid/app/timezone/RulesManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p3}, Landroid/app/timezone/RulesManager$CallbackWrapper;-><init>(Landroid/app/timezone/RulesManager;Landroid/content/Context;Landroid/app/timezone/Callback;)V

    :try_start_7
    const-string v1, "mIRulesManager.requestInstall()"

    invoke-static {v1}, Landroid/app/timezone/RulesManager;->logDebug(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/timezone/RulesManager;->mIRulesManager:Landroid/app/timezone/IRulesManager;

    invoke-interface {v1, p1, p2, v0}, Landroid/app/timezone/IRulesManager;->requestInstall(Landroid/os/ParcelFileDescriptor;[BLandroid/app/timezone/ICallback;)I

    move-result v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_13

    return v1

    :catch_13
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public requestNothing([BZ)V
    .registers 5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIRulesManager.requestNothing() with token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/timezone/RulesManager;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/timezone/RulesManager;->mIRulesManager:Landroid/app/timezone/IRulesManager;

    invoke-interface {v0, p1, p2}, Landroid/app/timezone/IRulesManager;->requestNothing([BZ)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1f

    nop

    return-void

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestUninstall([BLandroid/app/timezone/Callback;)I
    .registers 6

    new-instance v0, Landroid/app/timezone/RulesManager$CallbackWrapper;

    iget-object v1, p0, Landroid/app/timezone/RulesManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p2}, Landroid/app/timezone/RulesManager$CallbackWrapper;-><init>(Landroid/app/timezone/RulesManager;Landroid/content/Context;Landroid/app/timezone/Callback;)V

    :try_start_7
    const-string v1, "mIRulesManager.requestUninstall()"

    invoke-static {v1}, Landroid/app/timezone/RulesManager;->logDebug(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/timezone/RulesManager;->mIRulesManager:Landroid/app/timezone/IRulesManager;

    invoke-interface {v1, p1, v0}, Landroid/app/timezone/IRulesManager;->requestUninstall([BLandroid/app/timezone/ICallback;)I

    move-result v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_13

    return v1

    :catch_13
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
