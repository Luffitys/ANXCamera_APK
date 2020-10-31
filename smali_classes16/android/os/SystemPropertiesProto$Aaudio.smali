.class public final Landroid/os/SystemPropertiesProto$Aaudio;
.super Ljava/lang/Object;
.source "SystemPropertiesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemPropertiesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Aaudio"
.end annotation


# static fields
.field public static final HW_BURST_MIN_USEC:J = 0x10500000001L

.field public static final MINIMUM_SLEEP_USEC:J = 0x10500000002L

.field public static final MIXER_BURSTS:J = 0x10500000003L

.field public static final MMAP_EXCLUSIVE_POLICY:J = 0x10500000004L

.field public static final MMAP_POLICY:J = 0x10500000005L

.field public static final WAKEUP_DELAY_USEC:J = 0x10500000006L


# instance fields
.field final synthetic this$0:Landroid/os/SystemPropertiesProto;


# direct methods
.method public constructor <init>(Landroid/os/SystemPropertiesProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/SystemPropertiesProto$Aaudio;->this$0:Landroid/os/SystemPropertiesProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
