.class public final Lcom/android/server/am/MemInfoDumpProto$AppData$SqlStats;
.super Ljava/lang/Object;
.source "MemInfoDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MemInfoDumpProto$AppData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SqlStats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MemInfoDumpProto$AppData$SqlStats$Database;
    }
.end annotation


# static fields
.field public static final DATABASES:J = 0x20b00000004L

.field public static final MALLOC_SIZE_KB:J = 0x10500000003L

.field public static final MEMORY_USED_KB:J = 0x10500000001L

.field public static final PAGECACHE_OVERFLOW_KB:J = 0x10500000002L


# instance fields
.field final synthetic this$1:Lcom/android/server/am/MemInfoDumpProto$AppData;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MemInfoDumpProto$AppData;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/MemInfoDumpProto$AppData$SqlStats;->this$1:Lcom/android/server/am/MemInfoDumpProto$AppData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
