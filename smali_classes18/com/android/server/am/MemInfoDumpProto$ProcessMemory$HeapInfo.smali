.class public final Lcom/android/server/am/MemInfoDumpProto$ProcessMemory$HeapInfo;
.super Ljava/lang/Object;
.source "MemInfoDumpProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MemInfoDumpProto$ProcessMemory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HeapInfo"
.end annotation


# static fields
.field public static final HEAP_ALLOC_KB:J = 0x10500000003L

.field public static final HEAP_FREE_KB:J = 0x10500000004L

.field public static final HEAP_SIZE_KB:J = 0x10500000002L

.field public static final MEM_INFO:J = 0x10b00000001L


# instance fields
.field final synthetic this$1:Lcom/android/server/am/MemInfoDumpProto$ProcessMemory;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MemInfoDumpProto$ProcessMemory;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/MemInfoDumpProto$ProcessMemory$HeapInfo;->this$1:Lcom/android/server/am/MemInfoDumpProto$ProcessMemory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
