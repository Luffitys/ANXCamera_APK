.class public final Lcom/android/server/job/JobStatusDumpProto$JobWorkItem;
.super Ljava/lang/Object;
.source "JobStatusDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobStatusDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "JobWorkItem"
.end annotation


# static fields
.field public static final DELIVERY_COUNT:J = 0x10500000002L

.field public static final INTENT:J = 0x10b00000003L

.field public static final URI_GRANTS:J = 0x10b00000004L

.field public static final WORK_ID:J = 0x10500000001L


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobStatusDumpProto;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobStatusDumpProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/job/JobStatusDumpProto$JobWorkItem;->this$0:Lcom/android/server/job/JobStatusDumpProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
