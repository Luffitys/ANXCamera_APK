.class public interface abstract Landroid/bluetooth/BluetoothProfile;
.super Ljava/lang/Object;
.source "BluetoothProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothProfile$ServiceListener;,
        Landroid/bluetooth/BluetoothProfile$ConnectionPolicy;,
        Landroid/bluetooth/BluetoothProfile$BtProfileState;
    }
.end annotation


# static fields
.field public static final A2DP:I = 0x2

.field public static final A2DP_SINK:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final AVRCP:I = 0xd

.field public static final AVRCP_CONTROLLER:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CONNECTION_POLICY_ALLOWED:I = 0x64
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CONNECTION_POLICY_FORBIDDEN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final CONNECTION_POLICY_UNKNOWN:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final DUN:I = 0x16

.field public static final EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.profile.extra.PREVIOUS_STATE"

.field public static final EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.profile.extra.STATE"

.field public static final GATT:I = 0x7

.field public static final GATT_SERVER:I = 0x8

.field public static final HEADSET:I = 0x1

.field public static final HEADSET_CLIENT:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final HEALTH:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HEARING_AID:I = 0x15

.field public static final HID_DEVICE:I = 0x13

.field public static final HID_HOST:I = 0x4

.field public static final MAP:I = 0x9

.field public static final MAP_CLIENT:I = 0x12

.field public static final MAX_PROFILE_ID:I = 0x16

.field public static final OPP:I = 0x14

.field public static final PAN:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PBAP:I = 0x6

.field public static final PBAP_CLIENT:I = 0x11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final PRIORITY_AUTO_CONNECT:I = 0x3e8

.field public static final PRIORITY_OFF:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIORITY_ON:I = 0x64
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIORITY_UNDEFINED:I = -0x1

.field public static final SAP:I = 0xa

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3


# direct methods
.method public static getConnectionStateName(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_17

    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    const-string v0, "STATE_UNKNOWN"

    return-object v0

    :cond_e
    const-string v0, "STATE_DISCONNECTING"

    return-object v0

    :cond_11
    const-string v0, "STATE_CONNECTED"

    return-object v0

    :cond_14
    const-string v0, "STATE_CONNECTING"

    return-object v0

    :cond_17
    const-string v0, "STATE_DISCONNECTED"

    return-object v0
.end method

.method public static getProfileName(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_3c

    :pswitch_3
    const-string v0, "UNKNOWN_PROFILE"

    return-object v0

    :pswitch_6
    const-string v0, "HEARING_AID"

    return-object v0

    :pswitch_9
    const-string v0, "OPP"

    return-object v0

    :pswitch_c
    const-string v0, "HID_DEVICE"

    return-object v0

    :pswitch_f
    const-string v0, "MAP_CLIENT"

    return-object v0

    :pswitch_12
    const-string v0, "PBAP_CLIENT"

    return-object v0

    :pswitch_15
    const-string v0, "HEADSET_CLIENT"

    return-object v0

    :pswitch_18
    const-string v0, "AVRCP"

    return-object v0

    :pswitch_1b
    const-string v0, "AVRCP_CONTROLLER"

    return-object v0

    :pswitch_1e
    const-string v0, "A2DP_SINK"

    return-object v0

    :pswitch_21
    const-string v0, "SAP"

    return-object v0

    :pswitch_24
    const-string v0, "MAP"

    return-object v0

    :pswitch_27
    const-string v0, "GATT_SERVER"

    return-object v0

    :pswitch_2a
    const-string v0, "GATT"

    return-object v0

    :pswitch_2d
    const-string v0, "PBAP"

    return-object v0

    :pswitch_30
    const-string v0, "PAN"

    return-object v0

    :pswitch_33
    const-string v0, "HID_HOST"

    return-object v0

    :pswitch_36
    const-string v0, "A2DP"

    return-object v0

    :pswitch_39
    const-string v0, "HEADSET"

    return-object v0

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_39
        :pswitch_36
        :pswitch_3
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_3
        :pswitch_3
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public abstract getConnectedDevices()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
.end method

.method public abstract getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end method
