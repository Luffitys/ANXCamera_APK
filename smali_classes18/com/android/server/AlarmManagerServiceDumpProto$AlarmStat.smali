.class public final Lcom/android/server/AlarmManagerServiceDumpProto$AlarmStat;
.super Ljava/lang/Object;
.source "AlarmManagerServiceDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AlarmStat"
.end annotation


# static fields
.field public static final BROADCAST:J = 0x10b00000001L

.field public static final FILTERS:J = 0x20b00000002L


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerServiceDumpProto;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerServiceDumpProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceDumpProto$AlarmStat;->this$0:Lcom/android/server/AlarmManagerServiceDumpProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
