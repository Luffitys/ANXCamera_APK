.class public final Lcom/android/server/StatLoggerProto$Event;
.super Ljava/lang/Object;
.source "StatLoggerProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StatLoggerProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Event"
.end annotation


# static fields
.field public static final COUNT:J = 0x10500000003L

.field public static final EVENT_ID:J = 0x10500000001L

.field public static final LABEL:J = 0x10900000002L

.field public static final MAX_CALLS_PER_SECOND:J = 0x10500000005L

.field public static final MAX_DURATION_PER_SECOND_MICROS:J = 0x10300000006L

.field public static final MAX_DURATION_STATS_MICROS:J = 0x10300000007L

.field public static final TOTAL_DURATION_MICROS:J = 0x10300000004L


# instance fields
.field final synthetic this$0:Lcom/android/server/StatLoggerProto;


# direct methods
.method public constructor <init>(Lcom/android/server/StatLoggerProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/StatLoggerProto$Event;->this$0:Lcom/android/server/StatLoggerProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
