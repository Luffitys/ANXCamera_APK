.class public final Lcom/android/server/am/ServiceRecordProto$Start;
.super Ljava/lang/Object;
.source "ServiceRecordProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ServiceRecordProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Start"
.end annotation


# static fields
.field public static final CALL_START:J = 0x10800000004L

.field public static final DELAYED_STOP:J = 0x10800000002L

.field public static final LAST_START_ID:J = 0x10500000005L

.field public static final START_REQUESTED:J = 0x10800000001L

.field public static final STOP_IF_KILLED:J = 0x10800000003L


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ServiceRecordProto;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ServiceRecordProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ServiceRecordProto$Start;->this$0:Lcom/android/server/am/ServiceRecordProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
