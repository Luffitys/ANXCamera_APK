.class public final Landroid/os/SystemProto$PowerUseSummary;
.super Ljava/lang/Object;
.source "SystemProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PowerUseSummary"
.end annotation


# static fields
.field public static final BATTERY_CAPACITY_MAH:J = 0x10100000001L

.field public static final COMPUTED_POWER_MAH:J = 0x10100000002L

.field public static final MAX_DRAINED_POWER_MAH:J = 0x10100000004L

.field public static final MIN_DRAINED_POWER_MAH:J = 0x10100000003L


# instance fields
.field final synthetic this$0:Landroid/os/SystemProto;


# direct methods
.method public constructor <init>(Landroid/os/SystemProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/SystemProto$PowerUseSummary;->this$0:Landroid/os/SystemProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
