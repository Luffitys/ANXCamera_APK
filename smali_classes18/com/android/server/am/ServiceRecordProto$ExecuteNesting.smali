.class public final Lcom/android/server/am/ServiceRecordProto$ExecuteNesting;
.super Ljava/lang/Object;
.source "ServiceRecordProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ServiceRecordProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ExecuteNesting"
.end annotation


# static fields
.field public static final EXECUTE_FG:J = 0x10800000002L

.field public static final EXECUTE_NESTING:J = 0x10500000001L

.field public static final EXECUTING_START:J = 0x10b00000003L


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ServiceRecordProto;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ServiceRecordProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ServiceRecordProto$ExecuteNesting;->this$0:Lcom/android/server/am/ServiceRecordProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
