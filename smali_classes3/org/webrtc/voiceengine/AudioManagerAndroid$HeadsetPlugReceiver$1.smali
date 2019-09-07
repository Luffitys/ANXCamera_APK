.class Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver$1;
.super Ljava/lang/Object;
.source "AudioManagerAndroid.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;


# direct methods
.method constructor <init>(Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;)V
    .locals 0

    iput-object p1, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver$1;->this$1:Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "AudioManagerAndroid"

    const-string v0, "updateAudioDevice onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver$1;->this$1:Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {p1, p2}, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;->access$002(Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    iget-object p1, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver$1;->this$1:Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;

    invoke-virtual {p1}, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;->isBluetoothHeadsetConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver$1;->this$1:Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;

    const/16 p1, 0xd2

    invoke-virtual {p0, p1}, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;->HeadsetMessageHandler(I)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "AudioManagerAndroid"

    const-string v0, "updateAudioDevice onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver$1;->this$1:Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;

    const/16 v0, 0xd5

    invoke-virtual {p1, v0}, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;->HeadsetMessageHandler(I)V

    iget-object p0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver$1;->this$1:Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;->access$002(Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    :cond_0
    return-void
.end method
