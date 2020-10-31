.class public final Landroid/os/SystemProto$BatteryLevelStep;
.super Ljava/lang/Object;
.source "SystemProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BatteryLevelStep"
.end annotation


# static fields
.field public static final DISPLAY_STATE:J = 0x10e00000003L

.field public static final DS_DOZE:I = 0x3

.field public static final DS_DOZE_SUSPEND:I = 0x4

.field public static final DS_ERROR:I = 0x5

.field public static final DS_MIXED:I = 0x0

.field public static final DS_OFF:I = 0x2

.field public static final DS_ON:I = 0x1

.field public static final DURATION_MS:J = 0x10300000001L

.field public static final IDLE_MODE:J = 0x10e00000005L

.field public static final IM_MIXED:I = 0x0

.field public static final IM_OFF:I = 0x3

.field public static final IM_ON:I = 0x2

.field public static final LEVEL:J = 0x10500000002L

.field public static final POWER_SAVE_MODE:J = 0x10e00000004L

.field public static final PSM_MIXED:I = 0x0

.field public static final PSM_OFF:I = 0x2

.field public static final PSM_ON:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/os/SystemProto;


# direct methods
.method public constructor <init>(Landroid/os/SystemProto;)V
    .registers 2

    iput-object p1, p0, Landroid/os/SystemProto$BatteryLevelStep;->this$0:Landroid/os/SystemProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
