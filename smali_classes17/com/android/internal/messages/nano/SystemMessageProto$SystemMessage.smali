.class public final Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "SystemMessageProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/messages/nano/SystemMessageProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SystemMessage"
.end annotation


# static fields
.field public static final NOTE_ACCOUNT_CREDENTIAL_PERMISSION:I = 0x26

.field public static final NOTE_ACCOUNT_REQUIRE_SIGNIN:I = 0x25

.field public static final NOTE_ADB_ACTIVE:I = 0x1a

.field public static final NOTE_ADB_WIFI_ACTIVE:I = 0x3e

.field public static final NOTE_AUTO_SAVER_SUGGESTION:I = 0x31

.field public static final NOTE_BAD_CHARGER:I = 0x2

.field public static final NOTE_BATTERY_SAVER_WARNING:I = 0x4b0

.field public static final NOTE_CARRIER_NETWORK_AVAILABLE:I = 0x2e

.field public static final NOTE_CAR_MODE_DISABLE:I = 0xa

.field public static final NOTE_DUMP_HEAP_NOTIFICATION:I = 0xc

.field public static final NOTE_FBE_ENCRYPTED_NOTIFICATION:I = 0x9

.field public static final NOTE_FOREGROUND_SERVICES:I = 0x28

.field public static final NOTE_GLOBAL_SCREENSHOT:I = 0x1

.field public static final NOTE_GNSS_NFW_LOCATION_ACCESS:I = 0x3f

.field public static final NOTE_HEAVY_WEIGHT_NOTIFICATION:I = 0xb

.field public static final NOTE_HIDDEN_NOTIFICATIONS:I = 0x5

.field public static final NOTE_HIGH_TEMP:I = 0x4

.field public static final NOTE_ID_WIFI_SIM_REQUIRED:I = 0x3c

.field public static final NOTE_INSTANT_APPS:I = 0x7

.field public static final NOTE_LOCATION_CHANGED:I = 0x3b

.field public static final NOTE_LOGOUT_USER:I = 0x3f3

.field public static final NOTE_LOW_STORAGE:I = 0x17

.field public static final NOTE_NETWORK_AVAILABLE:I = 0x1080703

.field public static final NOTE_NETWORK_LOGGED_IN:I = 0x2e8

.field public static final NOTE_NETWORK_LOGGING:I = 0x3ea

.field public static final NOTE_NETWORK_LOST_INTERNET:I = 0x2e6

.field public static final NOTE_NETWORK_NO_INTERNET:I = 0x2e5

.field public static final NOTE_NETWORK_NO_MAC_RANDOMIZATION_SUPPORT:I = 0x38

.field public static final NOTE_NETWORK_PARTIAL_CONNECTIVITY:I = 0x2e9

.field public static final NOTE_NETWORK_PRIVATE_DNS_BROKEN:I = 0x2ea

.field public static final NOTE_NETWORK_SIGN_IN:I = 0x2e4

.field public static final NOTE_NETWORK_SUGGESTION_AVAILABLE:I = 0x33

.field public static final NOTE_NETWORK_SWITCH:I = 0x2e7

.field public static final NOTE_NET_LIMIT:I = 0x23

.field public static final NOTE_NET_LIMIT_SNOOZED:I = 0x24

.field public static final NOTE_NET_RAPID:I = 0x2d

.field public static final NOTE_NET_WARNING:I = 0x22

.field public static final NOTE_PACKAGE_STATE:I = 0x15

.field public static final NOTE_PERSONAL_APPS_SUSPENDED:I = 0x3eb

.field public static final NOTE_PLUGIN:I = 0x6

.field public static final NOTE_POWER_LOW:I = 0x3

.field public static final NOTE_PROFILE_WIPED:I = 0x3e9

.field public static final NOTE_REMOTE_BUGREPORT:I = 0x28700e57

.field public static final NOTE_REMOVE_GUEST:I = 0x3f2

.field public static final NOTE_RETAIL_RESET:I = 0x18

.field public static final NOTE_SELECT_INPUT_METHOD:I = 0x8

.field public static final NOTE_SELECT_KEYBOARD_LAYOUT:I = 0x13

.field public static final NOTE_SERIAL_CONSOLE_ENABLED:I = 0x37

.field public static final NOTE_SOFTAP_AUTO_DISABLED:I = 0x3a

.field public static final NOTE_SOFTAP_CONFIG_CHANGED:I = 0x32

.field public static final NOTE_SSL_CERT_INFO:I = 0x21

.field public static final NOTE_STORAGE_DISK:I = 0x5344534b

.field public static final NOTE_STORAGE_MOVE:I = 0x534d4f56

.field public static final NOTE_STORAGE_PRIVATE:I = 0x53505256

.field public static final NOTE_STORAGE_PUBLIC:I = 0x53505542

.field public static final NOTE_SYNC_ERROR:I = 0x12

.field public static final NOTE_SYSTEM_UPGRADING:I = 0xd

.field public static final NOTE_TEST_HARNESS_MODE_ENABLED:I = 0x36

.field public static final NOTE_TETHER_BLUETOOTH:I = 0x10

.field public static final NOTE_TETHER_GENERAL:I = 0xe

.field public static final NOTE_TETHER_USB:I = 0xf

.field public static final NOTE_THERMAL_SHUTDOWN:I = 0x27

.field public static final NOTE_TV_PIP:I = 0x44c

.field public static final NOTE_UNKNOWN:I = 0x0

.field public static final NOTE_USB_ACCESSORY:I = 0x1e

.field public static final NOTE_USB_AUDIO_ACCESSORY_NOT_SUPPORTED:I = 0x29

.field public static final NOTE_USB_CHARGING:I = 0x20

.field public static final NOTE_USB_CONTAMINANT_DETECTED:I = 0x34

.field public static final NOTE_USB_CONTAMINANT_NOT_DETECTED:I = 0x35

.field public static final NOTE_USB_MIDI:I = 0x1d

.field public static final NOTE_USB_MTP:I = 0x1b

.field public static final NOTE_USB_MTP_TAP:I = 0x19

.field public static final NOTE_USB_PTP:I = 0x1c

.field public static final NOTE_USB_SUPPLYING:I = 0x1f

.field public static final NOTE_USB_TETHER:I = 0x2f

.field public static final NOTE_VPN_DISCONNECTED:I = 0x11

.field public static final NOTE_VPN_STATUS:I = 0x14

.field public static final NOTE_WIFI_EAP_FAILURE:I = 0x39

.field public static final NOTE_WIFI_WAKE_ONBOARD:I = 0x2b

.field public static final NOTE_WIFI_WAKE_TURNED_BACK_ON:I = 0x2c

.field public static final NOTE_WIFI_WRONG_PASSWORD:I = 0x2a

.field public static final NOTE_ZEN_UPGRADE:I = 0x30

.field private static volatile _emptyArray:[Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;->clear()Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;

    return-void
.end method

.method public static emptyArray()[Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;
    .registers 2

    sget-object v0, Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;->_emptyArray:[Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;

    if-nez v0, :cond_15

    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;->_emptyArray:[Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;

    sput-object v1, Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;->_emptyArray:[Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;

    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;->_emptyArray:[Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;

    return-object v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;

    invoke-direct {v0}, Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;

    invoke-direct {v0}, Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;->cachedSize:I

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/messages/nano/SystemMessageProto$SystemMessage;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_d

    return-object p0

    :cond_d
    goto :goto_0

    :cond_e
    return-object p0
.end method
