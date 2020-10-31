.class public abstract Landroid/nfc/cardemulation/HostNfcFService;
.super Landroid/app/Service;
.source "HostNfcFService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;
    }
.end annotation


# static fields
.field public static final DEACTIVATION_LINK_LOSS:I = 0x0

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_MESSENGER:Ljava/lang/String; = "messenger"

.field public static final MSG_COMMAND_PACKET:I = 0x0

.field public static final MSG_DEACTIVATED:I = 0x2

.field public static final MSG_RESPONSE_PACKET:I = 0x1

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.nfc.cardemulation.action.HOST_NFCF_SERVICE"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.nfc.cardemulation.host_nfcf_service"

.field static final TAG:Ljava/lang/String; = "NfcFService"


# instance fields
.field final mMessenger:Landroid/os/Messenger;

.field mNfcService:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;

    invoke-direct {v1, p0}, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;-><init>(Landroid/nfc/cardemulation/HostNfcFService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/nfc/cardemulation/HostNfcFService;->mMessenger:Landroid/os/Messenger;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Landroid/nfc/cardemulation/HostNfcFService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract onDeactivated(I)V
.end method

.method public abstract processNfcFPacket([BLandroid/os/Bundle;)[B
.end method

.method public final sendResponsePacket([B)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_13
    iget-object v2, p0, Landroid/nfc/cardemulation/HostNfcFService;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_18} :catch_19

    goto :goto_21

    :catch_19
    move-exception v2

    const-string v3, "TAG"

    const-string v4, "Local messenger has died."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return-void
.end method
