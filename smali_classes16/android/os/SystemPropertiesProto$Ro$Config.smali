.class public final Landroid/os/SystemPropertiesProto$Ro$Config;
.super Ljava/lang/Object;
.source "SystemPropertiesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemPropertiesProto$Ro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Config"
.end annotation


# static fields
.field public static final ALARM_ALERT:J = 0x10900000001L

.field public static final MEDIA_VOL_STEPS:J = 0x10500000002L

.field public static final NOTIFICATION_SOUND:J = 0x10900000003L

.field public static final RINGTONE:J = 0x10900000004L

.field public static final VC_CALL_VOL_STEPS:J = 0x10500000005L


# instance fields
.field final synthetic this$1:Landroid/os/SystemPropertiesProto$Ro;


# direct methods
.method public constructor <init>(Landroid/os/SystemPropertiesProto$Ro;)V
    .registers 2

    iput-object p1, p0, Landroid/os/SystemPropertiesProto$Ro$Config;->this$1:Landroid/os/SystemPropertiesProto$Ro;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
