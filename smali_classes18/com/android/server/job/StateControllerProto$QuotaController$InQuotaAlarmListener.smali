.class public final Lcom/android/server/job/StateControllerProto$QuotaController$InQuotaAlarmListener;
.super Ljava/lang/Object;
.source "StateControllerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/StateControllerProto$QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InQuotaAlarmListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/StateControllerProto$QuotaController$InQuotaAlarmListener$Alarm;
    }
.end annotation


# static fields
.field public static final ALARMS:J = 0x20b00000002L

.field public static final TRIGGER_TIME_ELAPSED:J = 0x10300000001L


# instance fields
.field final synthetic this$1:Lcom/android/server/job/StateControllerProto$QuotaController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/StateControllerProto$QuotaController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/job/StateControllerProto$QuotaController$InQuotaAlarmListener;->this$1:Lcom/android/server/job/StateControllerProto$QuotaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
