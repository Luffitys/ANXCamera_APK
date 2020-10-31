.class public final Lcom/android/server/am/BroadcastQueueProto$BroadcastSummary;
.super Ljava/lang/Object;
.source "BroadcastQueueProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueueProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BroadcastSummary"
.end annotation


# static fields
.field public static final DISPATCH_CLOCK_TIME_MS:J = 0x10300000003L

.field public static final ENQUEUE_CLOCK_TIME_MS:J = 0x10300000002L

.field public static final FINISH_CLOCK_TIME_MS:J = 0x10300000004L

.field public static final INTENT:J = 0x10b00000001L


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BroadcastQueueProto;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastQueueProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueProto$BroadcastSummary;->this$0:Lcom/android/server/am/BroadcastQueueProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
