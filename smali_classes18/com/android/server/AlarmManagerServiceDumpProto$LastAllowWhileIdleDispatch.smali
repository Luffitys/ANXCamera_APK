.class public final Lcom/android/server/AlarmManagerServiceDumpProto$LastAllowWhileIdleDispatch;
.super Ljava/lang/Object;
.source "AlarmManagerServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LastAllowWhileIdleDispatch"
.end annotation


# static fields
.field public static final NEXT_ALLOWED_MS:J = 0x10300000003L

.field public static final TIME_MS:J = 0x10300000002L

.field public static final UID:J = 0x10500000001L


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerServiceDumpProto;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerServiceDumpProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceDumpProto$LastAllowWhileIdleDispatch;->this$0:Lcom/android/server/AlarmManagerServiceDumpProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
