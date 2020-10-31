.class public final Landroid/os/UidProto$Cpu$ByFrequency;
.super Ljava/lang/Object;
.source "UidProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UidProto$Cpu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ByFrequency"
.end annotation


# static fields
.field public static final FREQUENCY_INDEX:J = 0x10500000001L

.field public static final SCREEN_OFF_DURATION_MS:J = 0x10300000003L

.field public static final TOTAL_DURATION_MS:J = 0x10300000002L


# instance fields
.field final synthetic this$1:Landroid/os/UidProto$Cpu;


# direct methods
.method public constructor <init>(Landroid/os/UidProto$Cpu;)V
    .registers 2

    iput-object p1, p0, Landroid/os/UidProto$Cpu$ByFrequency;->this$1:Landroid/os/UidProto$Cpu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
