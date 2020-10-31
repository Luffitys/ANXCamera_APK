.class public final Landroid/os/CpuFreqProto$Stats;
.super Ljava/lang/Object;
.source "CpuFreqProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CpuFreqProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Stats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CpuFreqProto$Stats$TimeInState;
    }
.end annotation


# static fields
.field public static final CPU_NAME:J = 0x10900000001L

.field public static final TIMES:J = 0x20b00000002L


# instance fields
.field final synthetic this$0:Landroid/os/CpuFreqProto;


# direct methods
.method public constructor <init>(Landroid/os/CpuFreqProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/CpuFreqProto$Stats;->this$0:Landroid/os/CpuFreqProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
