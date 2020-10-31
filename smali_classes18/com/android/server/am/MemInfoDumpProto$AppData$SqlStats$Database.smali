.class public final Lcom/android/server/am/MemInfoDumpProto$AppData$SqlStats$Database;
.super Ljava/lang/Object;
.source "MemInfoDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MemInfoDumpProto$AppData$SqlStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Database"
.end annotation


# static fields
.field public static final CACHE:J = 0x10900000005L

.field public static final DB_SIZE:J = 0x10500000003L

.field public static final LOOKASIDE_B:J = 0x10500000004L

.field public static final NAME:J = 0x10900000001L

.field public static final PAGE_SIZE:J = 0x10500000002L


# instance fields
.field final synthetic this$2:Lcom/android/server/am/MemInfoDumpProto$AppData$SqlStats;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MemInfoDumpProto$AppData$SqlStats;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/MemInfoDumpProto$AppData$SqlStats$Database;->this$2:Lcom/android/server/am/MemInfoDumpProto$AppData$SqlStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
