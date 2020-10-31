.class public final Landroid/os/SystemPropertiesProto$Sys$Usb;
.super Ljava/lang/Object;
.source "SystemPropertiesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemPropertiesProto$Sys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Usb"
.end annotation


# static fields
.field public static final CONFIG:J = 0x10900000001L

.field public static final CONFIGFS:J = 0x10500000002L

.field public static final CONTROLLER:J = 0x10900000003L

.field public static final FFS_MAX_READ:J = 0x10500000004L

.field public static final FFS_MAX_WRITE:J = 0x10500000005L

.field public static final FFS_MTP_READY:J = 0x10500000006L

.field public static final FFS_READY:J = 0x10500000007L

.field public static final MTP_DEVICE_TYPE:J = 0x10500000008L

.field public static final STATE:J = 0x10900000009L


# instance fields
.field final synthetic this$1:Landroid/os/SystemPropertiesProto$Sys;


# direct methods
.method public constructor <init>(Landroid/os/SystemPropertiesProto$Sys;)V
    .registers 2

    iput-object p1, p0, Landroid/os/SystemPropertiesProto$Sys$Usb;->this$1:Landroid/os/SystemPropertiesProto$Sys;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
