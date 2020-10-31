.class public final Landroid/os/SystemPropertiesProto$Ro$Boot;
.super Ljava/lang/Object;
.source "SystemPropertiesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemPropertiesProto$Ro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Boot"
.end annotation


# static fields
.field public static final AVB_VERSION:J = 0x10900000001L

.field public static final BASEBAND:J = 0x10900000002L

.field public static final BOOTDEVICE:J = 0x10900000003L

.field public static final BOOTLOADER:J = 0x10900000004L

.field public static final BOOTTIME:J = 0x20900000005L

.field public static final CONSOLE:J = 0x10900000006L

.field public static final FAKE_BATTERY:J = 0x10500000007L

.field public static final HARDWARE:J = 0x10900000008L

.field public static final HARDWARE_COLOR:J = 0x10900000009L

.field public static final HARDWARE_REVISION:J = 0x1090000000aL

.field public static final HARDWARE_SKU:J = 0x1090000000bL

.field public static final KEYMASTER:J = 0x1090000000cL

.field public static final MODE:J = 0x1090000000dL

.field public static final REVISION:J = 0x1090000000eL

.field public static final SLOT_SUFFIX:J = 0x1090000000fL

.field public static final VBMETA_AVB_VERSION:J = 0x10900000010L

.field public static final VENDOR_OVERLAY_THEME:J = 0x10900000011L

.field public static final VERIFIEDBOOTSTATE:J = 0x10900000012L

.field public static final VERITYMODE:J = 0x10900000013L

.field public static final WIFICOUNTRYCODE:J = 0x10900000014L


# instance fields
.field final synthetic this$1:Landroid/os/SystemPropertiesProto$Ro;


# direct methods
.method public constructor <init>(Landroid/os/SystemPropertiesProto$Ro;)V
    .registers 2

    iput-object p1, p0, Landroid/os/SystemPropertiesProto$Ro$Boot;->this$1:Landroid/os/SystemPropertiesProto$Ro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
