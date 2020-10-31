.class public abstract Landroid/media/midi/MidiSender;
.super Ljava/lang/Object;
.source "MidiSender.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connect(Landroid/media/midi/MidiReceiver;)V
    .registers 4

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Landroid/media/midi/MidiSender;->onConnect(Landroid/media/midi/MidiReceiver;)V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "receiver null in MidiSender.connect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disconnect(Landroid/media/midi/MidiReceiver;)V
    .registers 4

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Landroid/media/midi/MidiSender;->onDisconnect(Landroid/media/midi/MidiReceiver;)V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "receiver null in MidiSender.disconnect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract onConnect(Landroid/media/midi/MidiReceiver;)V
.end method

.method public abstract onDisconnect(Landroid/media/midi/MidiReceiver;)V
.end method
