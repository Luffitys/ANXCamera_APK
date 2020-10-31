.class abstract Landroid/media/midi/MidiDeviceServer$PortClient;
.super Ljava/lang/Object;
.source "MidiDeviceServer.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiDeviceServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PortClient"
.end annotation


# instance fields
.field final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Landroid/media/midi/MidiDeviceServer;


# direct methods
.method constructor <init>(Landroid/media/midi/MidiDeviceServer;Landroid/os/IBinder;)V
    .registers 3

    iput-object p1, p0, Landroid/media/midi/MidiDeviceServer$PortClient;->this$0:Landroid/media/midi/MidiDeviceServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/media/midi/MidiDeviceServer$PortClient;->mToken:Landroid/os/IBinder;

    const/4 p1, 0x0

    :try_start_8
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception p1

    invoke-virtual {p0}, Landroid/media/midi/MidiDeviceServer$PortClient;->close()V

    :goto_10
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 1

    invoke-virtual {p0}, Landroid/media/midi/MidiDeviceServer$PortClient;->close()V

    return-void
.end method

.method abstract close()V
.end method

.method getInputPort()Landroid/media/midi/MidiInputPort;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
