.class public final Landroid/os/SystemPropertiesProto$Ro;
.super Ljava/lang/Object;
.source "SystemPropertiesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemPropertiesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Ro"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SystemPropertiesProto$Ro$Vendor;,
        Landroid/os/SystemPropertiesProto$Ro$Telephony;,
        Landroid/os/SystemPropertiesProto$Ro$Product;,
        Landroid/os/SystemPropertiesProto$Ro$Hardware;,
        Landroid/os/SystemPropertiesProto$Ro$Config;,
        Landroid/os/SystemPropertiesProto$Ro$Build;,
        Landroid/os/SystemPropertiesProto$Ro$BootImage;,
        Landroid/os/SystemPropertiesProto$Ro$Boot;
    }
.end annotation


# static fields
.field public static final ADB_SECURE:J = 0x10800000001L

.field public static final ARCH:J = 0x10900000002L

.field public static final AUDIO_IGNORE_EFFECTS:J = 0x10800000003L

.field public static final AUDIO_MONITOR_ROTATION:J = 0x10800000004L

.field public static final BASEBAND:J = 0x10900000005L

.field public static final BOARD_PLATFORM:J = 0x10900000006L

.field public static final BOOT:J = 0x10b00000007L

.field public static final BOOTIMAGE:J = 0x10b00000008L

.field public static final BOOTLOADER:J = 0x10900000009L

.field public static final BOOTMODE:J = 0x1090000000aL

.field public static final BUILD:J = 0x10b0000000bL

.field public static final CAMERA_NOTIFY_NFC:J = 0x1080000000cL

.field public static final CARRIER:J = 0x1090000000dL

.field public static final COM_ANDROID_DATAROAMING:J = 0x1080000000eL

.field public static final COM_ANDROID_PROV_MOBILEDATA:J = 0x1080000000fL

.field public static final COM_GOOGLE_CLIENTIDBASE:J = 0x10900000010L

.field public static final CONFIG:J = 0x10b00000011L

.field public static final CONTROL_PRIVAPP_PERMISSIONS:J = 0x10900000012L

.field public static final CP_SYSTEM_OTHER_ODEX:J = 0x10500000013L

.field public static final CRYPTO_SCRYPT_PARAMS:J = 0x10900000014L

.field public static final CRYPTO_STATE:J = 0x10900000015L

.field public static final CRYPTO_TYPE:J = 0x10900000016L

.field public static final DALVIK_VM_NATIVE_BRIDGE:J = 0x10900000017L

.field public static final DEBUGGABLE:J = 0x10800000018L

.field public static final FRP_PST:J = 0x10900000019L

.field public static final GFX_DRIVER_0:J = 0x1090000001aL

.field public static final GFX_DRIVER_WHITELIST_0:J = 0x1090000002dL

.field public static final HARDWARE:J = 0x10b0000001bL

.field public static final KERNEL_QEMU:J = 0x1050000001cL

.field public static final KERNEL_QEMU_GLES:J = 0x1050000001dL

.field public static final OEM_UNLOCK_SUPPORTED:J = 0x1050000001eL

.field public static final OPENGLES_VERSION:J = 0x1050000001fL

.field public static final PRODUCT:J = 0x10b00000020L

.field public static final PROPERTY_SERVICE_VERSION:J = 0x10500000021L

.field public static final REVISION:J = 0x10900000023L

.field public static final SF_LCD_DENSITY:J = 0x10500000024L

.field public static final STORAGE_MANAGER_ENABLED:J = 0x10800000025L

.field public static final TELEPHONY:J = 0x10b00000026L

.field public static final VENDOR:J = 0x10b00000029L

.field public static final VNDK_VERSION:J = 0x1090000002aL

.field public static final VTS_COVERAGE:J = 0x1050000002bL

.field public static final ZYGOTE:J = 0x1090000002cL


# instance fields
.field final synthetic this$0:Landroid/os/SystemPropertiesProto;


# direct methods
.method public constructor <init>(Landroid/os/SystemPropertiesProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/SystemPropertiesProto$Ro;->this$0:Landroid/os/SystemPropertiesProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
