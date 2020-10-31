.class public Lmiui/util/IMiOob;
.super Ljava/lang/Object;
.source "IMiOob.java"


# static fields
.field private static final DEFAULT:Ljava/lang/String; = "default"

.field private static volatile INSTANCE:Lmiui/util/IMiOob; = null

.field private static final INTERFACE_DESCRIPTOR:Ljava/lang/String; = "vendor.xiaomi.hardware.mioob@1.0::IMiOob"

.field private static final MIOOB_SET_BT_STATE:I = 0x1

.field private static final MIOOB_SET_RX_CR:I = 0x2

.field private static final SERVICE_NAME:Ljava/lang/String; = "vendor.xiaomi.hardware.mioob@1.0::IMiOob"

.field public static final STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "IMiOob"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lmiui/util/IMiOob;->INSTANCE:Lmiui/util/IMiOob;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lmiui/util/IMiOob;
    .registers 2

    sget-object v0, Lmiui/util/IMiOob;->INSTANCE:Lmiui/util/IMiOob;

    if-nez v0, :cond_17

    const-class v0, Lmiui/util/IMiOob;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lmiui/util/IMiOob;->INSTANCE:Lmiui/util/IMiOob;

    if-nez v1, :cond_12

    new-instance v1, Lmiui/util/IMiOob;

    invoke-direct {v1}, Lmiui/util/IMiOob;-><init>()V

    sput-object v1, Lmiui/util/IMiOob;->INSTANCE:Lmiui/util/IMiOob;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lmiui/util/IMiOob;->INSTANCE:Lmiui/util/IMiOob;

    return-object v0
.end method


# virtual methods
.method public setBtState(I)Z
    .registers 9

    const-string v0, "vendor.xiaomi.hardware.mioob@1.0::IMiOob"

    const-string v1, "IMiOob"

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const/4 v3, 0x0

    :try_start_a
    const-string v4, "default"

    invoke-static {v0, v4}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v4

    if-eqz v4, :cond_3c

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    invoke-virtual {v5, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Landroid/os/HwParcel;->writeInt32(I)V

    const/4 v0, 0x1

    invoke-interface {v4, v0, v5, v2, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    if-eqz v6, :cond_37

    const-string v0, "set bt state failed!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_32} :catch_43
    .catchall {:try_start_a .. :try_end_32} :catchall_41

    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v3

    :cond_37
    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v0

    :cond_3c
    nop

    :goto_3d
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_5a

    :catchall_41
    move-exception v0

    goto :goto_60

    :catch_43
    move-exception v0

    :try_start_44
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setBtState transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_44 .. :try_end_58} :catchall_41

    nop

    goto :goto_3d

    :goto_5a
    const-string v0, "Failed calling setBtState!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :goto_60
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v0
.end method

.method public setRxCr(Ljava/lang/String;)Z
    .registers 10

    const-string v0, "vendor.xiaomi.hardware.mioob@1.0::IMiOob"

    const-string v1, "IMiOob"

    new-instance v2, Landroid/os/HwParcel;

    invoke-direct {v2}, Landroid/os/HwParcel;-><init>()V

    const/4 v3, 0x0

    :try_start_a
    const-string v4, "default"

    invoke-static {v0, v4}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object v4

    if-eqz v4, :cond_64

    new-instance v5, Landroid/os/HwParcel;

    invoke-direct {v5}, Landroid/os/HwParcel;-><init>()V

    invoke-virtual {v5, v0}, Landroid/os/HwParcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {v4, v0, v5, v2, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    invoke-virtual {v2}, Landroid/os/HwParcel;->verifySuccess()V

    invoke-virtual {v5}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    invoke-virtual {v2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    if-eqz v0, :cond_46

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set mioob charging switch failed, err = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_41} :catch_6b
    .catchall {:try_start_a .. :try_end_41} :catchall_69

    nop

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v3

    :cond_46
    :try_start_46
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mioob set rx cr: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " successfully."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_5f} :catch_6b
    .catchall {:try_start_46 .. :try_end_5f} :catchall_69

    const/4 v1, 0x1

    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    return v1

    :cond_64
    nop

    :goto_65
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    goto :goto_82

    :catchall_69
    move-exception v0

    goto :goto_88

    :catch_6b
    move-exception v0

    :try_start_6c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setRxCr transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catchall {:try_start_6c .. :try_end_80} :catchall_69

    nop

    goto :goto_65

    :goto_82
    const-string v0, "Failed calling setRxCr!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :goto_88
    invoke-virtual {v2}, Landroid/os/HwParcel;->release()V

    throw v0
.end method
