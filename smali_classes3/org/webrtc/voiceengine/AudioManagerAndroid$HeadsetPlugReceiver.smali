.class Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioManagerAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/voiceengine/AudioManagerAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetPlugReceiver"
.end annotation


# static fields
.field public static final ACTION_MEDIA_KEYEVENT_HEADSETHOOT_RECEIVER:Ljava/lang/String; = "action_media_keyevent_headsethoot_recevier"

.field public static final MSG_ACCEPT_BY_EARPHONE:I = 0xca

.field public static final MSG_BLUETOOTH_HEADSET_CONNECTED:I = 0xd2

.field public static final MSG_BLUETOOTH_HEADSET_DISCONNECTED:I = 0xd3

.field public static final MSG_EARPHONE_PLUGGED:I = 0xc8

.field public static final MSG_EARPHONE_UNPLUGGED:I = 0xc9

.field public static final MSG_SCO_AUDIO_STATE_CONNECTED:I = 0xd4

.field public static final MSG_SCO_AUDIO_STATE_DISCONNECTED:I = 0xd5


# instance fields
.field private callback:Lorg/webrtc/voiceengine/HeadsetPlugHandler;

.field private final context:Landroid/content/Context;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mIsBluetoothHeadsetAvailable:Z

.field private mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field final synthetic this$0:Lorg/webrtc/voiceengine/AudioManagerAndroid;


# direct methods
.method constructor <init>(Lorg/webrtc/voiceengine/AudioManagerAndroid;Lorg/webrtc/voiceengine/HeadsetPlugHandler;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;->this$0:Lorg/webrtc/voiceengine/AudioManagerAndroid;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;->mIsBluetoothHeadsetAvailable:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;->mAudioManager:Landroid/media/AudioManager;

    new-instance p1, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver$1;

    invoke-direct {p1, p0}, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver$1;-><init>(Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;)V

    iput-object p1, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const-string p1, "AudioManagerAndroid"

    const-string v0, "HeadsetPlugReceiver "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;->callback:Lorg/webrtc/voiceengine/HeadsetPlugHandler;

    iput-object p3, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;->context:Landroid/content/Context;

    const-string p2, "audio"

    invoke-virtual {p3, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    :try_start_0
    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v1, 0x1

    invoke-virtual {p2, p3, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "The app  bluetooth permissions denied"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "action_media_keyevent_headsethoot_recevier"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 p2, 0x3e8

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->setPriority(I)V

    invoke-virtual {p3, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$002(Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    iput-object p1, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method


# virtual methods
.method public HeadsetMessageHandler(I)V
    .locals 4

    const/16 v0, 0xc8

    const/4 v1, 0x1

    const-string v2, "AudioManagerAndroid"

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc9

    const/4 v3, 0x0

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "updateAudioDevice: MSG_SCO_AUDIO_STATE_DISCONNECTED"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;->mIsBluetoothHeadsetAvailable:Z

    if-eqz p1, :cond_2

    iput-boolean v3, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;->mIsBluetoothHeadsetAvailable:Z

    iget-object p0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;->callback:Lorg/webrtc/voiceengine/HeadsetPlugHandler;

    invoke-interface {p0, v3}, Lorg/webrtc/voiceengine/HeadsetPlugHandler;->onBluetoothHeadsetPlugChange(Z)V

    goto :goto_0

    :pswitch_1
    const-string p1, "updateAudioDevice: MSG_SCO_AUDIO_STATE_CONNECTED"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;->mIsBluetoothHeadsetAvailable:Z

    iget-object p1, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    iget-object p0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;->callback:Lorg/webrtc/voiceengine/HeadsetPlugHandler;

    invoke-interface {p0, v1}, Lorg/webrtc/voiceengine/HeadsetPlugHandler;->onBluetoothHeadsetPlugChange(Z)V

    goto :goto_0

    :pswitch_2
    const-string p0, "updateAudioDevice: MSG_BLUETOOTH_HEADSET_DISCONNECTED"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    const-string p0, "updateAudioDevice: MSG_BLUETOOTH_HEADSET_CONNECTED"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "updateAudioDevice: MSG_EARPHONE_UNPLUGGED"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;->callback:Lorg/webrtc/voiceengine/HeadsetPlugHandler;

    invoke-interface {p0, v3}, Lorg/webrtc/voiceengine/HeadsetPlugHandler;->onHeadsetPlugChange(Z)V

    goto :goto_0

    :cond_1
    const-string p1, "updateAudioDevice: MSG_EARPHONE_PLUGGED"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;->callback:Lorg/webrtc/voiceengine/HeadsetPlugHandler;

    invoke-interface {p0, v1}, Lorg/webrtc/voiceengine/HeadsetPlugHandler;->onHeadsetPlugChange(Z)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xd2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public destroy()V
    .locals 2

    const-string v0, "AudioManagerAndroid"

    const-string v1, "destroy "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-boolean v0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;->mIsBluetoothHeadsetAvailable:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setMode(I)V

    :cond_0
    return-void
.end method

.method public isBluetoothHeadsetConnected()Z
    .locals 3

    iget-object v0, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object p1, p0, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;->callback:Lorg/webrtc/voiceengine/HeadsetPlugHandler;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const-string v0, "state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0xc8

    goto :goto_0

    :cond_2
    const/16 p1, 0xc9

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0xa

    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_5

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    goto :goto_0

    :cond_4
    const/16 p1, 0xd2

    goto :goto_0

    :cond_5
    const/16 p1, 0xd3

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_8

    if-eq p2, v1, :cond_7

    goto :goto_0

    :cond_7
    const/16 p1, 0xd4

    goto :goto_0

    :cond_8
    const/16 p1, 0xd5

    :cond_9
    :goto_0
    invoke-virtual {p0, p1}, Lorg/webrtc/voiceengine/AudioManagerAndroid$HeadsetPlugReceiver;->HeadsetMessageHandler(I)V

    return-void
.end method
