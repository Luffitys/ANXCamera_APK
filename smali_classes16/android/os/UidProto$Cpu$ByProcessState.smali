.class public final Landroid/os/UidProto$Cpu$ByProcessState;
.super Ljava/lang/Object;
.source "UidProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UidProto$Cpu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ByProcessState"
.end annotation


# static fields
.field public static final BY_FREQUENCY:J = 0x20b00000002L

.field public static final PROCESS_STATE:J = 0x10e00000001L


# instance fields
.field final synthetic this$1:Landroid/os/UidProto$Cpu;


# direct methods
.method public constructor <init>(Landroid/os/UidProto$Cpu;)V
    .registers 2

    iput-object p1, p0, Landroid/os/UidProto$Cpu$ByProcessState;->this$1:Landroid/os/UidProto$Cpu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
