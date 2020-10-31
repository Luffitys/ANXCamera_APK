.class public final Landroid/os/CpuFreqProto$Stats$TimeInState;
.super Ljava/lang/Object;
.source "CpuFreqProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CpuFreqProto$Stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TimeInState"
.end annotation


# static fields
.field public static final STATE_KHZ:J = 0x10500000001L

.field public static final TIME_JIFFY:J = 0x10300000002L


# instance fields
.field final synthetic this$1:Landroid/os/CpuFreqProto$Stats;


# direct methods
.method public constructor <init>(Landroid/os/CpuFreqProto$Stats;)V
    .registers 2

    iput-object p1, p0, Landroid/os/CpuFreqProto$Stats$TimeInState;->this$1:Landroid/os/CpuFreqProto$Stats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
