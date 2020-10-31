.class public final Lcom/android/server/am/MemInfoDumpProto$ProcessMemory;
.super Ljava/lang/Object;
.source "MemInfoDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MemInfoDumpProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ProcessMemory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MemInfoDumpProto$ProcessMemory$AppSummary;,
        Lcom/android/server/am/MemInfoDumpProto$ProcessMemory$HeapInfo;,
        Lcom/android/server/am/MemInfoDumpProto$ProcessMemory$MemoryInfo;
    }
.end annotation


# static fields
.field public static final APP_SUMMARY:J = 0x10b00000009L

.field public static final DALVIK_DETAILS:J = 0x20b00000008L

.field public static final DALVIK_HEAP:J = 0x10b00000004L

.field public static final NATIVE_HEAP:J = 0x10b00000003L

.field public static final OTHER_HEAPS:J = 0x20b00000005L

.field public static final PID:J = 0x10500000001L

.field public static final PROCESS_NAME:J = 0x10900000002L

.field public static final TOTAL_HEAP:J = 0x10b00000007L

.field public static final UNKNOWN_HEAP:J = 0x10b00000006L


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MemInfoDumpProto;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MemInfoDumpProto;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/MemInfoDumpProto$ProcessMemory;->this$0:Lcom/android/server/am/MemInfoDumpProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
