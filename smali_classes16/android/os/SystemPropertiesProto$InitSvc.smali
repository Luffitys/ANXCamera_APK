.class public final Landroid/os/SystemPropertiesProto$InitSvc;
.super Ljava/lang/Object;
.source "SystemPropertiesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemPropertiesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InitSvc"
.end annotation


# static fields
.field public static final ADBD:J = 0x10e00000001L

.field public static final AUDIOSERVER:J = 0x10e00000002L

.field public static final BOOTANIM:J = 0x10e00000003L

.field public static final BUFFERHUBD:J = 0x10e00000004L

.field public static final CAMERASERVER:J = 0x10e00000005L

.field public static final CLEAR_BCB:J = 0x10e00000006L

.field public static final DRM:J = 0x10e00000007L

.field public static final GATEKEEPERD:J = 0x10e00000008L

.field public static final HEALTHD:J = 0x10e00000009L

.field public static final HIDL_MEMORY:J = 0x10e0000000aL

.field public static final HOSTAPD:J = 0x10e0000000bL

.field public static final HWSERVICEMANAGER:J = 0x10e0000000cL

.field public static final INSTALLD:J = 0x10e0000000dL

.field public static final KEYSTORE:J = 0x10e0000000eL

.field public static final LMKD:J = 0x10e0000000fL

.field public static final LOGD:J = 0x10e00000010L

.field public static final LOGD_REINIT:J = 0x10e00000011L

.field public static final MEDIA:J = 0x10e00000012L

.field public static final MEDIADRM:J = 0x10e00000013L

.field public static final MEDIAEXTRACTOR:J = 0x10e00000014L

.field public static final MEDIAMETRICS:J = 0x10e00000015L

.field public static final NETD:J = 0x10e00000016L

.field public static final PERFORMANCED:J = 0x10e00000017L

.field public static final RIL_DAEMON:J = 0x10e00000018L

.field public static final SERVICEMANAGER:J = 0x10e00000019L

.field public static final STATUS_RUNNING:I = 0x1

.field public static final STATUS_STOPPED:I = 0x2

.field public static final STATUS_UNKNOWN:I = 0x0

.field public static final STORAGED:J = 0x10e0000001aL

.field public static final SURFACEFLINGER:J = 0x10e0000001bL

.field public static final THERMALSERVICE:J = 0x10e0000001cL

.field public static final TOMBSTONED:J = 0x10e0000001dL

.field public static final UEVENTD:J = 0x10e0000001eL

.field public static final UPDATE_ENGINE:J = 0x10e0000001fL

.field public static final UPDATE_VERIFIER_NONENCRYPTED:J = 0x10e00000020L

.field public static final VIRTUAL_TOUCHPAD:J = 0x10e00000021L

.field public static final VNDSERVICEMANAGER:J = 0x10e00000022L

.field public static final VOLD:J = 0x10e00000023L

.field public static final VR_HWC:J = 0x10e00000024L

.field public static final WEBVIEW_ZYGOTE32:J = 0x10e00000025L

.field public static final WIFICOND:J = 0x10e00000026L

.field public static final WPA_SUPPLICANT:J = 0x10e00000027L

.field public static final ZYGOTE:J = 0x10e00000028L

.field public static final ZYGOTE_SECONDARY:J = 0x10e00000029L


# instance fields
.field final synthetic this$0:Landroid/os/SystemPropertiesProto;


# direct methods
.method public constructor <init>(Landroid/os/SystemPropertiesProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/SystemPropertiesProto$InitSvc;->this$0:Landroid/os/SystemPropertiesProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
