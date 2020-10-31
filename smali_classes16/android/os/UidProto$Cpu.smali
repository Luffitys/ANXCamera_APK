.class public final Landroid/os/UidProto$Cpu;
.super Ljava/lang/Object;
.source "UidProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UidProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Cpu"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/UidProto$Cpu$ByProcessState;,
        Landroid/os/UidProto$Cpu$ByFrequency;
    }
.end annotation


# static fields
.field public static final BACKGROUND:I = 0x3

.field public static final BY_FREQUENCY:J = 0x20b00000003L

.field public static final BY_PROCESS_STATE:J = 0x20b00000004L

.field public static final CACHED:I = 0x6

.field public static final FOREGROUND:I = 0x2

.field public static final FOREGROUND_SERVICE:I = 0x1

.field public static final HEAVY_WEIGHT:I = 0x5

.field public static final SYSTEM_DURATION_MS:J = 0x10300000002L

.field public static final TOP:I = 0x0

.field public static final TOP_SLEEPING:I = 0x4

.field public static final USER_DURATION_MS:J = 0x10300000001L


# instance fields
.field final synthetic this$0:Landroid/os/UidProto;


# direct methods
.method public constructor <init>(Landroid/os/UidProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/UidProto$Cpu;->this$0:Landroid/os/UidProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
