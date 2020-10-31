.class public final Landroid/os/KernelWakeSourcesProto$WakeupSource;
.super Ljava/lang/Object;
.source "KernelWakeSourcesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/KernelWakeSourcesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WakeupSource"
.end annotation


# static fields
.field public static final ACTIVE_COUNT:J = 0x10500000002L

.field public static final ACTIVE_SINCE:J = 0x10300000006L

.field public static final EVENT_COUNT:J = 0x10500000003L

.field public static final EXPIRE_COUNT:J = 0x10500000005L

.field public static final LAST_CHANGE:J = 0x10300000009L

.field public static final MAX_TIME:J = 0x10300000008L

.field public static final NAME:J = 0x10900000001L

.field public static final PREVENT_SUSPEND_TIME:J = 0x1030000000aL

.field public static final TOTAL_TIME:J = 0x10300000007L

.field public static final WAKEUP_COUNT:J = 0x10500000004L


# instance fields
.field final synthetic this$0:Landroid/os/KernelWakeSourcesProto;


# direct methods
.method public constructor <init>(Landroid/os/KernelWakeSourcesProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/KernelWakeSourcesProto$WakeupSource;->this$0:Landroid/os/KernelWakeSourcesProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
